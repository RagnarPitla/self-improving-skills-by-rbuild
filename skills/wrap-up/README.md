# Wrap-Up Skill

End-of-session automation that ships, remembers, self-improves, and captures content.

## Why This Exists

Most sessions end with:
- Uncommitted code
- Lessons learned but not saved
- Patterns discovered but not documented
- Content ideas lost in conversation

This skill runs a 4-phase checklist that handles all of it automatically.

## The Four Phases

### Phase 1: Ship It
- Commits uncommitted changes
- Pushes to remote
- Organizes misplaced files
- Runs deploy if script exists
- Cleans up task list

### Phase 2: Remember It
- Reviews session for learnable moments
- Saves to appropriate memory location (auto memory, CLAUDE.md, rules, notes)
- Compounds your Claude setup over time

### Phase 3: Review & Apply
- Claude reviews its own mistakes
- Identifies patterns worth automating
- Creates rules to prevent future friction
- Self-improving tooling with zero effort

### Phase 4: Publish It
- Flags content worth sharing
- Drafts LinkedIn posts, articles, code snippets
- Saves to content folder for later review

## Usage

```bash
# At the end of any session
/wrap-up

# Or naturally
"wrap up"
"close session"
"end session"
```

## Example Output

```markdown
## Session Wrap-Up Report

### Phase 1: Ship It
- [x] Committed: self-improving-skills - "Add wrap-up skill"
- [x] Pushed to remote
- [x] Files organized: 2 moved to docs/
- [ ] Deploy: skipped (no deploy script)
- [x] Tasks: 3 completed, 1 flagged

### Phase 2: Remember It
- Saved to auto memory: "User prefers short commit messages"
- Updated CLAUDE.md: Added file organization rules
- No rules changes needed

### Phase 3: Review & Apply
- Pattern found: User corrected file placement 3 times
- Rule created: file-organization.md
- Committed improvement

### Phase 4: Publish It
- Draft saved: linkedin-wrap-up-skill.md
- Type: LinkedIn post
- Topic: Self-improving Claude Code skills

---
Session wrapped. Ready for next time.
```

## The Meta Point

The best skills aren't the ones that do impressive things. They're the ones that run the boring routines you'd skip.

Every session that ends with `/wrap-up` leaves your projects a little more organized, your Claude setup a little smarter, and occasionally produces content you didn't plan to create.

## Customization

Edit `SKILL.md` to:
- Change the deploy detection logic for your projects
- Add custom commit message formats
- Modify the memory placement rules
- Adjust content detection criteria
