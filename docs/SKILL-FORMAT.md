# Skill Format Specification

This document defines the standard format for self-improving skills.

---

## Directory Structure

```
skills/
  skill-name/
    SKILL.md              # Core skill instructions (required)
    README.md             # Usage documentation (required)
    eval/
      rubric.md           # Evaluation criteria (required)
      examples.md         # Example inputs/outputs (required)
    feedback/
      successes.md        # Captured successful patterns
      failures.md         # Captured failure patterns
      edge-cases.md       # Discovered edge cases
    versions/
      v1.md               # Version history
      v2.md
      CHANGELOG.md        # Version change log
    resources/            # Optional reference materials
    scripts/              # Optional automation scripts
```

---

## SKILL.md Format

The core skill file follows this template:

```markdown
# [Skill Name]

> One-line description of what this skill does.

## Purpose

[2-3 sentences explaining the skill's purpose and when to use it]

## Instructions

[Main instructions for the AI to follow. Be specific, actionable, and structured.]

### Step 1: [Name]
[Instructions]

### Step 2: [Name]
[Instructions]

### Step 3: [Name]
[Instructions]

## Output Format

[Specify exactly how the output should be structured]

## Constraints

- [Constraint 1]
- [Constraint 2]
- [Constraint 3]

## Edge Cases

[Known edge cases and how to handle them - this section evolves over time]

## Learned Patterns

[Patterns absorbed from feedback - this section evolves over time]

### What Works Well
- [Pattern from successes.md]

### What to Avoid
- [Pattern from failures.md]

## Version

- Current: v[X]
- Last Updated: [Date]
- Feedback Count: [N] sessions
```

---

## Evaluation Rubric Format

`eval/rubric.md`:

```markdown
# Evaluation Rubric: [Skill Name]

## Scoring Criteria

### Accuracy (1-5)
- 5: Completely correct, no errors
- 4: Minor factual issues, easily corrected
- 3: Some errors that affect usefulness
- 2: Significant errors
- 1: Fundamentally incorrect

### Completeness (1-5)
- 5: All requirements addressed
- 4: Most requirements, minor gaps
- 3: Core requirements met, notable gaps
- 2: Missing major requirements
- 1: Incomplete

### Format (1-5)
- 5: Perfect formatting, ready to use
- 4: Minor formatting issues
- 3: Needs formatting cleanup
- 2: Significant formatting problems
- 1: Unusable format

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
1. Perfect (5/5) - Exactly what I needed
2. Good (4/5) - Minor adjustments needed
3. Okay (3/5) - Significant edits required
4. Poor (2/5) - Missed the mark
5. Failed (1/5) - Completely wrong
```

---

## Feedback Files Format

### successes.md

```markdown
# Successful Patterns

## Pattern: [Name]
- **Date:** [YYYY-MM-DD]
- **Context:** [What was the input/situation]
- **What Worked:** [Specific thing that worked well]
- **Why It Worked:** [Analysis of why]
- **Incorporate Into:** [Which instruction section to update]

---

## Pattern: [Name]
...
```

### failures.md

```markdown
# Failure Patterns

## Pattern: [Name]
- **Date:** [YYYY-MM-DD]
- **Context:** [What was the input/situation]
- **What Failed:** [Specific thing that didn't work]
- **Why It Failed:** [Analysis of why]
- **Fix:** [How to prevent in future]
- **Add to Constraints:** [If applicable]

---

## Pattern: [Name]
...
```

### edge-cases.md

```markdown
# Edge Cases

## Edge Case: [Name]
- **Date Discovered:** [YYYY-MM-DD]
- **Description:** [What the edge case is]
- **How It Manifests:** [What happens without handling]
- **Recommended Handling:** [How to handle it]
- **Added to Instructions:** [Yes/No]

---

## Edge Case: [Name]
...
```

---

## Version History Format

### versions/CHANGELOG.md

```markdown
# Changelog

## [v2.0] - YYYY-MM-DD

### Added
- [New capability]

### Changed
- [Modified instruction]

### Fixed
- [Bug fix from failure pattern]

### Learned
- [Pattern incorporated from feedback]

---

## [v1.0] - YYYY-MM-DD

### Initial Release
- [Core capabilities]
```

---

## Evolution Triggers

A skill should evolve when:

1. **Feedback threshold reached** (default: 10 sessions)
2. **Failure rate exceeds threshold** (default: 20%)
3. **New edge case discovered**
4. **Explicit user request**

## Evolution Process

1. Analyze feedback files for patterns
2. Identify top 3 improvements
3. Draft updated SKILL.md
4. Create new version in versions/
5. Update CHANGELOG.md
6. Reset feedback counters (but preserve files)

---

## Quality Checklist

Before publishing a skill:

- [ ] SKILL.md follows template
- [ ] Purpose is clear in one sentence
- [ ] Instructions are specific and actionable
- [ ] Output format is defined
- [ ] At least 3 constraints listed
- [ ] eval/rubric.md exists
- [ ] eval/examples.md has 3+ examples
- [ ] README.md explains usage
- [ ] Version is set to v1
- [ ] feedback/ directory initialized (empty files OK)

---

## Example Skill

See `skills/code-review/` for a complete reference implementation.
