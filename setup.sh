#!/bin/bash

# ╔══════════════════════════════════════════════════════════════════════╗
# ║  RBuild.ai | Self-Improving Skills Framework                         ║
# ║  Setup Wizard | Created by Ragnar Pitla                              ║
# ║  https://rbuild.ai | Fingerprint: RBLD-SETUP-2026                    ║
# ╚══════════════════════════════════════════════════════════════════════╝

set -e

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
CONFIG_DIR="$HOME/.claude"
SETTINGS_FILE="$CONFIG_DIR/self-improving-skills.json"

# Colors
GREEN='\033[0;32m'
BLUE='\033[0;34m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color

echo ""
echo -e "${BLUE}╔══════════════════════════════════════════════════════════════╗${NC}"
echo -e "${BLUE}║  Self-Improving Skills Framework - Setup Wizard              ║${NC}"
echo -e "${BLUE}║  by RBuild.ai                                                ║${NC}"
echo -e "${BLUE}╚══════════════════════════════════════════════════════════════╝${NC}"
echo ""

# Create config directory if needed
mkdir -p "$CONFIG_DIR"

echo "Welcome! Let's configure how your skills should evolve."
echo ""
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo ""
echo -e "${YELLOW}How should skills learn and evolve?${NC}"
echo ""
echo "  A) Post-Execution Prompts (Recommended)"
echo "     After every skill run, you'll be asked:"
echo "     'Rate this output (1-5). Want me to update the skill?'"
echo "     If yes, the skill creates a new version with your feedback."
echo ""
echo "  B) Wrap-Up Integration"
echo "     Learning happens during your end-of-session wrap-up."
echo "     Reviews all skill usage at once: 'Did you modify any outputs?'"
echo "     Batch updates skills based on session patterns."
echo ""
echo "  C) Manual Only"
echo "     Skills don't auto-evolve. You control when to update."
echo "     Use 'evolve-skill' command when ready to improve a skill."
echo ""
echo "  D) All Features (Power User)"
echo "     Enables A + B + manual controls."
echo "     Maximum learning, more prompts."
echo ""
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo ""
read -p "Choose your evolution mode [A/B/C/D]: " evolution_mode

# Normalize input
evolution_mode=$(echo "$evolution_mode" | tr '[:lower:]' '[:upper:]')

case $evolution_mode in
    A)
        mode="post_execution"
        mode_name="Post-Execution Prompts"
        ;;
    B)
        mode="wrap_up"
        mode_name="Wrap-Up Integration"
        ;;
    C)
        mode="manual"
        mode_name="Manual Only"
        ;;
    D)
        mode="all"
        mode_name="All Features"
        ;;
    *)
        echo "Invalid option. Defaulting to A (Post-Execution Prompts)"
        mode="post_execution"
        mode_name="Post-Execution Prompts"
        ;;
esac

echo ""
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo ""
echo -e "${YELLOW}Additional Settings${NC}"
echo ""

# Feedback threshold
read -p "How many feedback sessions before auto-evolution? [default: 5]: " threshold
threshold=${threshold:-5}

# Auto-commit
read -p "Auto-commit skill updates to git? [Y/n]: " auto_commit
auto_commit=${auto_commit:-Y}
if [[ "$auto_commit" =~ ^[Yy]$ ]]; then
    auto_commit_enabled=true
else
    auto_commit_enabled=false
fi

# Version history
read -p "Keep version history? [Y/n]: " keep_history
keep_history=${keep_history:-Y}
if [[ "$keep_history" =~ ^[Yy]$ ]]; then
    keep_history_enabled=true
else
    keep_history_enabled=false
fi

echo ""
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo ""

# Create settings file
cat > "$SETTINGS_FILE" << EOF
{
  "_comment": "RBuild.ai | Self-Improving Skills Framework Settings",
  "_fingerprint": "RBLD-CFG-2026",
  "_docs": "https://github.com/RagnarPitla/self-improving-skills-by-rbuild",

  "evolution_mode": "$mode",
  "evolution_mode_name": "$mode_name",

  "settings": {
    "feedback_threshold": $threshold,
    "auto_commit": $auto_commit_enabled,
    "keep_version_history": $keep_history_enabled,
    "prompt_after_skill_run": $([ "$mode" = "post_execution" ] || [ "$mode" = "all" ] && echo "true" || echo "false"),
    "wrap_up_review": $([ "$mode" = "wrap_up" ] || [ "$mode" = "all" ] && echo "true" || echo "false")
  },

  "paths": {
    "skills_dir": "$HOME/.claude/skills",
    "feedback_dir": "$HOME/.claude/skill-feedback",
    "versions_dir": "$HOME/.claude/skill-versions"
  },

  "created": "$(date -u +"%Y-%m-%dT%H:%M:%SZ")",
  "version": "1.0.0"
}
EOF

echo -e "${GREEN}Settings saved to: $SETTINGS_FILE${NC}"
echo ""

# Now run the installer
echo "Now installing skills..."
echo ""
bash "$SCRIPT_DIR/install.sh"

echo ""
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo ""
echo -e "${GREEN}Setup Complete!${NC}"
echo ""
echo "Your configuration:"
echo "  Evolution Mode: $mode_name"
echo "  Feedback Threshold: $threshold sessions"
echo "  Auto-Commit: $auto_commit_enabled"
echo "  Version History: $keep_history_enabled"
echo ""
echo "Settings file: $SETTINGS_FILE"
echo ""
echo "To change settings later, run: ./setup.sh"
echo "To import existing skills, run: ./import-skill.sh <path>"
echo ""
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo ""
echo "RBuild.ai | Self-Improving Skills Framework"
echo "Created by Ragnar Pitla | https://rbuild.ai"
echo ""
