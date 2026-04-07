#!/bin/bash

# ╔══════════════════════════════════════════════════════════════════════╗
# ║  RBuild.ai | Self-Improving Skills Framework                         ║
# ║  Import Tool | Created by Ragnar Pitla                               ║
# ║  https://rbuild.ai | Fingerprint: RBLD-IMPORT-2026                   ║
# ╚══════════════════════════════════════════════════════════════════════╝

# Import existing skills and wrap them in the self-improving structure

set -e

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
CLAUDE_SKILLS_DIR="$HOME/.claude/skills"

# Colors
GREEN='\033[0;32m'
BLUE='\033[0;34m'
YELLOW='\033[1;33m'
RED='\033[0;31m'
NC='\033[0m'

echo ""
echo -e "${BLUE}╔══════════════════════════════════════════════════════════════╗${NC}"
echo -e "${BLUE}║  Self-Improving Skills - Import Tool                         ║${NC}"
echo -e "${BLUE}║  by RBuild.ai                                                ║${NC}"
echo -e "${BLUE}╚══════════════════════════════════════════════════════════════╝${NC}"
echo ""

# Check arguments
if [ -z "$1" ]; then
    echo "Usage: ./import-skill.sh <path-to-skill>"
    echo ""
    echo "Examples:"
    echo "  ./import-skill.sh ~/my-skills/code-review"
    echo "  ./import-skill.sh ~/.claude/skills/my-custom-skill"
    echo "  ./import-skill.sh ./skill-folder"
    echo ""
    echo "This tool will:"
    echo "  1. Copy your existing skill"
    echo "  2. Add the self-improving structure (feedback/, versions/, eval/)"
    echo "  3. Create initial version and rubric"
    echo "  4. Your original skill content stays intact"
    echo ""
    exit 1
fi

SOURCE_PATH="$1"
SKILL_NAME=$(basename "$SOURCE_PATH")

# Validate source
if [ ! -d "$SOURCE_PATH" ]; then
    echo -e "${RED}Error: '$SOURCE_PATH' is not a directory${NC}"
    exit 1
fi

# Check for SKILL.md or any .md file
SKILL_FILE=""
if [ -f "$SOURCE_PATH/SKILL.md" ]; then
    SKILL_FILE="$SOURCE_PATH/SKILL.md"
elif [ -f "$SOURCE_PATH/skill.md" ]; then
    SKILL_FILE="$SOURCE_PATH/skill.md"
else
    # Look for any markdown file
    SKILL_FILE=$(find "$SOURCE_PATH" -maxdepth 1 -name "*.md" | head -1)
fi

if [ -z "$SKILL_FILE" ]; then
    echo -e "${RED}Error: No markdown file found in '$SOURCE_PATH'${NC}"
    echo "Expected: SKILL.md or any .md file"
    exit 1
fi

echo "Found skill: $SKILL_NAME"
echo "Source: $SOURCE_PATH"
echo "Skill file: $SKILL_FILE"
echo ""

# Destination
DEST_PATH="$CLAUDE_SKILLS_DIR/$SKILL_NAME"

if [ -d "$DEST_PATH" ]; then
    echo -e "${YELLOW}Warning: Skill '$SKILL_NAME' already exists at $DEST_PATH${NC}"
    read -p "Overwrite? [y/N]: " overwrite
    if [[ ! "$overwrite" =~ ^[Yy]$ ]]; then
        echo "Cancelled."
        exit 0
    fi
    rm -rf "$DEST_PATH"
fi

echo "Importing skill..."
echo ""

# Create destination structure
mkdir -p "$DEST_PATH"
mkdir -p "$DEST_PATH/eval"
mkdir -p "$DEST_PATH/feedback"
mkdir -p "$DEST_PATH/versions"

# Copy existing content
cp -r "$SOURCE_PATH"/* "$DEST_PATH/"

# Ensure SKILL.md exists (rename if needed)
if [ ! -f "$DEST_PATH/SKILL.md" ]; then
    if [ -f "$DEST_PATH/skill.md" ]; then
        mv "$DEST_PATH/skill.md" "$DEST_PATH/SKILL.md"
    else
        # Find and rename any .md file
        FOUND_MD=$(find "$DEST_PATH" -maxdepth 1 -name "*.md" ! -name "README.md" | head -1)
        if [ -n "$FOUND_MD" ]; then
            mv "$FOUND_MD" "$DEST_PATH/SKILL.md"
        fi
    fi
fi

# Add RBuild.ai header if not present
if ! grep -q "RBuild.ai" "$DEST_PATH/SKILL.md" 2>/dev/null; then
    TEMP_FILE=$(mktemp)
    cat > "$TEMP_FILE" << 'EOF'
<!--
  RBuild.ai | Self-Improving Skills Framework
  Imported skill | Wrapped for self-improvement
  https://rbuild.ai | Fingerprint: RBLD-IMPORTED-2026
-->

EOF
    cat "$DEST_PATH/SKILL.md" >> "$TEMP_FILE"
    mv "$TEMP_FILE" "$DEST_PATH/SKILL.md"
fi

# Add version info if not present
if ! grep -q "## Version" "$DEST_PATH/SKILL.md"; then
    cat >> "$DEST_PATH/SKILL.md" << 'EOF'

## Version

- Current: v1
- Last Updated: $(date +%Y-%m-%d)
- Feedback Count: 0 sessions
- Imported: true

<!--
  RBuild.ai | Origin: https://github.com/RagnarPitla/self-improving-skills-by-rbuild
  Author: Ragnar Pitla | contact@rbuild.ai
-->
EOF
fi

# Create feedback files if they don't exist
if [ ! -f "$DEST_PATH/feedback/successes.md" ]; then
    cat > "$DEST_PATH/feedback/successes.md" << 'EOF'
# Successful Patterns

*This file captures patterns that worked well. Updated from feedback.*

---

<!-- Patterns will be added here as feedback is collected -->
EOF
fi

if [ ! -f "$DEST_PATH/feedback/failures.md" ]; then
    cat > "$DEST_PATH/feedback/failures.md" << 'EOF'
# Failure Patterns

*This file captures patterns that didn't work. Updated from feedback.*

---

<!-- Patterns will be added here as feedback is collected -->
EOF
fi

if [ ! -f "$DEST_PATH/feedback/edge-cases.md" ]; then
    cat > "$DEST_PATH/feedback/edge-cases.md" << 'EOF'
# Edge Cases

*This file captures discovered edge cases. Updated from feedback.*

---

<!-- Edge cases will be added here as they are discovered -->
EOF
fi

# Create eval rubric if it doesn't exist
if [ ! -f "$DEST_PATH/eval/rubric.md" ]; then
    cat > "$DEST_PATH/eval/rubric.md" << EOF
# Evaluation Rubric: $SKILL_NAME

## Scoring Criteria

### Quality (1-5)
- 5: Perfect output, exactly what was needed
- 4: Good output, minor adjustments needed
- 3: Acceptable, significant edits required
- 2: Poor, missed the mark
- 1: Failed, completely wrong

### Usefulness (1-5)
- 5: Immediately actionable
- 4: Actionable with minor edits
- 3: Useful but needs work
- 2: Limited usefulness
- 1: Not useful

## Passing Score

Minimum average: 3.5/5

## Quick Feedback Options

After each execution:
1. Perfect (5/5)
2. Good (4/5)
3. Okay (3/5)
4. Poor (2/5)
5. Failed (1/5)
EOF
fi

# Create version history
if [ ! -f "$DEST_PATH/versions/v1.md" ]; then
    cat > "$DEST_PATH/versions/v1.md" << EOF
# $SKILL_NAME - Version 1

Imported from: $SOURCE_PATH

## Import Date
$(date +%Y-%m-%d)

## Capabilities
Imported skill - original capabilities preserved.

## Feedback Sessions
0
EOF
fi

if [ ! -f "$DEST_PATH/versions/CHANGELOG.md" ]; then
    cat > "$DEST_PATH/versions/CHANGELOG.md" << EOF
# Changelog

## [v1.0] - $(date +%Y-%m-%d)

### Imported
- Original skill imported from: $SOURCE_PATH
- Added self-improving structure (feedback/, versions/, eval/)
- Ready for evolution
EOF
fi

# Create README if it doesn't exist
if [ ! -f "$DEST_PATH/README.md" ]; then
    cat > "$DEST_PATH/README.md" << EOF
# $SKILL_NAME

Imported skill with self-improving capabilities.

## Usage

\`\`\`bash
/skill $SKILL_NAME
\`\`\`

## Self-Improvement

This skill now supports:
- Feedback capture
- Version history
- Automatic evolution

Rate outputs 1-5 to help the skill improve over time.

---

*Part of the [Self-Improving Skills Framework](https://github.com/RagnarPitla/self-improving-skills-by-rbuild) by RBuild.ai*
EOF
fi

echo -e "${GREEN}Import complete!${NC}"
echo ""
echo "Skill imported to: $DEST_PATH"
echo ""
echo "Structure created:"
echo "  $SKILL_NAME/"
echo "  ├── SKILL.md (your original skill)"
echo "  ├── README.md"
echo "  ├── eval/"
echo "  │   └── rubric.md"
echo "  ├── feedback/"
echo "  │   ├── successes.md"
echo "  │   ├── failures.md"
echo "  │   └── edge-cases.md"
echo "  └── versions/"
echo "      ├── v1.md"
echo "      └── CHANGELOG.md"
echo ""
echo "Your skill is now ready for self-improvement!"
echo ""
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "RBuild.ai | Self-Improving Skills Framework"
echo "Created by Ragnar Pitla | https://rbuild.ai"
