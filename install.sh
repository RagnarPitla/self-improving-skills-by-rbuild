#!/bin/bash

# ╔══════════════════════════════════════════════════════════════════════╗
# ║  RBuild.ai | Self-Improving Skills Framework                         ║
# ║  Installer Script | Created by Ragnar Pitla                          ║
# ║  https://rbuild.ai | Fingerprint: RBLD-INST-2026                     ║
# ╚══════════════════════════════════════════════════════════════════════╝

# Self-Improving Skills Installer
# Copies skills to your Claude Code environment

set -e

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
SKILLS_SOURCE="$SCRIPT_DIR/skills"
CLAUDE_SKILLS_DIR="$HOME/.claude/skills"

echo "============================================"
echo "  Self-Improving Skills Installer"
echo "============================================"
echo ""

# Check if source skills exist
if [ ! -d "$SKILLS_SOURCE" ]; then
    echo "Error: Skills directory not found at $SKILLS_SOURCE"
    exit 1
fi

# Create Claude skills directory if it doesn't exist
if [ ! -d "$CLAUDE_SKILLS_DIR" ]; then
    echo "Creating Claude skills directory..."
    mkdir -p "$CLAUDE_SKILLS_DIR"
fi

# List available skills
echo "Available skills:"
echo ""
for skill in "$SKILLS_SOURCE"/*/; do
    if [ -d "$skill" ]; then
        skill_name=$(basename "$skill")
        echo "  - $skill_name"
    fi
done
echo ""

# Prompt for installation type
echo "Installation options:"
echo "  1) Install all skills"
echo "  2) Select specific skills"
echo "  3) Cancel"
echo ""
read -p "Choose option [1-3]: " choice

case $choice in
    1)
        echo ""
        echo "Installing all skills..."
        cp -r "$SKILLS_SOURCE"/* "$CLAUDE_SKILLS_DIR/"
        echo "Done! All skills installed to $CLAUDE_SKILLS_DIR"
        ;;
    2)
        echo ""
        echo "Enter skill names (space-separated):"
        read -p "> " skills_to_install
        for skill in $skills_to_install; do
            if [ -d "$SKILLS_SOURCE/$skill" ]; then
                echo "Installing $skill..."
                cp -r "$SKILLS_SOURCE/$skill" "$CLAUDE_SKILLS_DIR/"
            else
                echo "Warning: Skill '$skill' not found, skipping"
            fi
        done
        echo "Done!"
        ;;
    3)
        echo "Installation cancelled."
        exit 0
        ;;
    *)
        echo "Invalid option. Installation cancelled."
        exit 1
        ;;
esac

echo ""
echo "============================================"
echo "  Installation Complete!"
echo "============================================"
echo ""
echo "Your skills are now available in Claude Code."
echo ""
echo "To use a skill:"
echo "  /skill [skill-name]"
echo ""
echo "To provide feedback after using a skill:"
echo "  Rate the output 1-5 when prompted"
echo ""
echo "Happy coding!"
echo ""
echo "---"
echo "RBuild.ai | Self-Improving Skills Framework"
echo "Created by Ragnar Pitla | https://rbuild.ai"
