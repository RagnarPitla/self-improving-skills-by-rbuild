<!--
  RBuild.ai | Self-Improving Skills Framework
  Contributing Guidelines | Created by Ragnar Pitla
  https://rbuild.ai | Fingerprint: RBLD-CONTRIB-2026
-->

# Contributing to Self-Improving Skills

Thanks for your interest in contributing! This project grows through community input.

*A [RBuild.ai](https://rbuild.ai) project by [Ragnar Pitla](https://linkedin.com/in/ragnarpitla)*

## Ways to Contribute

### 1. Add a New Skill

1. Fork the repo
2. Create your skill directory: `skills/your-skill-name/`
3. Follow the structure in `docs/SKILL-FORMAT.md`
4. Include all required files:
   - `SKILL.md` - Core instructions
   - `README.md` - Usage docs
   - `eval/rubric.md` - Evaluation criteria
   - `eval/examples.md` - At least 3 examples
   - `feedback/` - Empty feedback files
   - `versions/v1.md` - Initial version
   - `versions/CHANGELOG.md` - Changelog
5. Submit a PR

### 2. Improve Existing Skills

Share learnings from your usage:

1. Fork the repo
2. Add patterns to:
   - `feedback/successes.md` - What worked well
   - `feedback/failures.md` - What didn't work
   - `feedback/edge-cases.md` - Edge cases discovered
3. Submit a PR describing the patterns

### 3. Report Issues

Found a skill that doesn't work well? Open an issue with:
- Which skill
- What you expected
- What happened
- Your input (if shareable)

### 4. Suggest Improvements

Have ideas for the framework? Open an issue tagged `enhancement`.

## Skill Quality Standards

All contributed skills must meet these criteria:

### Required
- [ ] Clear one-line purpose statement
- [ ] Specific, actionable instructions
- [ ] Defined output format
- [ ] At least 3 constraints
- [ ] Evaluation rubric
- [ ] At least 3 example inputs/outputs
- [ ] README with usage instructions

### Preferred
- [ ] Edge cases documented
- [ ] Resources folder if needed
- [ ] Scripts for automation if applicable

## Code Style

For framework code (Python/scripts):
- Use descriptive variable names
- Include docstrings
- Handle errors gracefully
- Keep functions focused

## PR Process

1. Ensure your contribution follows the skill format
2. Test your skill locally
3. Update any relevant documentation
4. Submit PR with clear description
5. Respond to review feedback

## Questions?

Open an issue tagged `question` or reach out to [@RagnarPitla](https://linkedin.com/in/ragnarpitla).

## License

By contributing, you agree that your contributions will be licensed under the MIT License.
