# Wrap-Up Examples

## Example 1: Full Session Wrap-Up

**Context:** User worked on a coding project for 2 hours, made changes across 3 files, discovered a new pattern, and solved an interesting problem.

**Expected Output:**
```markdown
## Session Wrap-Up Report

### Phase 1: Ship It
- [x] Committed: my-project - "Add user authentication middleware"
- [x] Pushed to remote
- [x] Files organized: 1 moved (auth-notes.md -> docs/)
- [ ] Deploy: skipped (no deploy script)
- [x] Tasks: 2 completed, 0 flagged

### Phase 2: Remember It
- Saved to auto memory: "This project uses JWT tokens, not sessions"
- Updated CLAUDE.md: Added authentication patterns section
- Created rule: auth-conventions.md

### Phase 3: Review & Apply
- Pattern found: User asked for consistent error response format 3 times
- Rule created: error-response-format.md
- Committed improvement

### Phase 4: Publish It
- Draft saved: linkedin-auth-middleware.md
- Type: LinkedIn post
- Topic: Building auth middleware with Claude Code

---
Session wrapped. Ready for next time.
```

---

## Example 2: Quick Session (Minimal Changes)

**Context:** User did a quick bug fix, nothing major learned.

**Expected Output:**
```markdown
## Session Wrap-Up Report

### Phase 1: Ship It
- [x] Committed: my-project - "Fix null check in user lookup"
- [x] Pushed to remote
- [x] Files organized: 0 changes needed
- [ ] Deploy: skipped (no deploy script)
- [x] Tasks: 1 completed, 0 flagged

### Phase 2: Remember It
- No significant learnings this session
- No memory updates needed

### Phase 3: Review & Apply
- No patterns requiring automation
- No improvements needed

### Phase 4: Publish It
- No publishable content this session

---
Session wrapped. Ready for next time.
```

---

## Example 3: Research Session (No Code Changes)

**Context:** User spent session researching and taking notes, no code written.

**Expected Output:**
```markdown
## Session Wrap-Up Report

### Phase 1: Ship It
- [x] Committed: docs - "Add MCP research notes"
- [x] Pushed to remote
- [x] Files organized: research.md moved to docs/research/
- [ ] Deploy: N/A (documentation only)
- [x] Tasks: 1 in progress (flagged for next session)

### Phase 2: Remember It
- Saved to local notes: MCP vs Skills comparison matrix
- Updated CLAUDE.md: Added MCP context for future sessions
- No rules changes

### Phase 3: Review & Apply
- No code patterns to review
- Research quality was good, no improvements needed

### Phase 4: Publish It
- Draft saved: article-mcp-vs-skills.md
- Type: Article
- Topic: When to use MCP servers vs Claude Code skills

---
Session wrapped. Ready for next time.
```

---

## Example 4: Session With Self-Improvement

**Context:** Claude made mistakes during the session that the user corrected multiple times.

**Expected Output:**
```markdown
## Session Wrap-Up Report

### Phase 1: Ship It
- [x] Committed: my-project - "Implement search feature"
- [x] Pushed to remote
- [x] Files organized: 0 changes needed
- [ ] Deploy: skipped (no deploy script)
- [x] Tasks: 1 completed, 0 flagged

### Phase 2: Remember It
- Saved to auto memory: "User prefers functional style over class-based"
- No CLAUDE.md updates
- No rules changes

### Phase 3: Review & Apply
- Pattern found: User corrected import style 4 times (prefer named imports)
- Rule created: import-conventions.md
- Pattern found: User asked for TypeScript types 3 times
- Updated CLAUDE.md: "Always use TypeScript types in this project"
- Committed improvements

### Phase 4: Publish It
- No publishable content this session

---
Session wrapped. 2 self-improvements applied. Ready for next time.
```
