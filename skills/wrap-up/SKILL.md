# Session Wrap-Up

> End-of-session checklist for shipping, memory, and self-improvement.

Run four phases in order. Each phase is conversational and inline - no separate documents. All phases auto-apply without asking; present a consolidated report at the end.

## Phase 1: Ship It

### Commit
1. Run `git status` in each repo directory that was touched during the session
2. If uncommitted changes exist, auto-commit to main with a descriptive message
3. Push to remote
4. If any files were created or saved during this session:
   - Verify they follow your naming convention
   - Auto-fix naming violations (rename the file)
   - Verify they're in the correct subfolder per your project structure
   - Auto-move misplaced files to their correct location
5. If any document-type files (.md, .docx, .pdf, .xlsx, .pptx) were created at the workspace root or in code directories, move them to the docs folder if they belong there

### Deploy
6. Check if the project has a deploy skill or script
7. If one exists, run it
8. If not, skip deployment entirely - do not ask about manual deployment

### Tasks
9. Check the task list for in-progress or stale items
10. Mark completed tasks as done, flag orphaned ones

## Phase 2: Remember It

Review what was learned during the session. Decide where each piece of knowledge belongs in the memory hierarchy:

### Memory Placement Guide

| Type | Where | Examples |
|------|-------|----------|
| **Auto memory** | Claude writes for itself | Debugging insights, patterns discovered, project quirks |
| **CLAUDE.md** | Instructions for Claude | Permanent project rules, conventions, architecture decisions |
| **Rules** | Behavioral guidelines | Code style, commit conventions, review checklists |
| **Local notes** | Human reference | Meeting notes, research findings, decision logs |

### Actions
1. Review session for learnable moments
2. Categorize each learning by memory type
3. Auto-write to appropriate location
4. Report what was saved and where

## Phase 3: Review & Apply

Self-improvement phase. Claude reviews its own performance:

### Questions to Answer
1. Did I make any mistakes the user had to correct?
2. Did the user ask me to do something multiple times that I should do automatically?
3. Did I miss any patterns I should have caught?
4. Are there any new rules or skills that would prevent future friction?

### Actions
1. If patterns found, draft the rule or skill improvement
2. Auto-commit the improvement
3. Report what was learned and applied

## Phase 4: Publish It

Check if the session produced shareable content:

### Criteria
- Did we solve an interesting problem?
- Did we build something others might use?
- Did we discover a pattern worth sharing?
- Did we have a conversation worth turning into content?

### Actions
1. If publishable content exists, draft it:
   - LinkedIn post (short, punchy, practitioner voice)
   - Article/blog post (if deeper)
   - Code snippet or gist (if technical)
2. Save drafts to designated content folder
3. Report what was drafted and where

## Output Format

```markdown
## Session Wrap-Up Report

### Phase 1: Ship It
- [x] Committed: [repo] - "commit message"
- [x] Pushed to remote
- [x] Files organized: [count] moved/renamed
- [ ] Deploy: skipped (no deploy script)
- [x] Tasks: [count] completed, [count] flagged

### Phase 2: Remember It
- Saved to auto memory: [description]
- Updated CLAUDE.md: [description]
- No rules changes needed

### Phase 3: Review & Apply
- Pattern found: [description]
- Rule created: [filename]
- Committed improvement

### Phase 4: Publish It
- Draft saved: [filename]
- Type: LinkedIn post
- Topic: [description]

---
Session wrapped. Ready for next time.
```

## Triggers

Use when user says:
- "wrap up"
- "close session"
- "end session"
- "wrap things up"
- "close out this task"
- `/wrap-up`

## Version

- Current: v1
- Last Updated: 2026-04-07
- Feedback Count: 0 sessions
