# Code Review Skill

A self-improving skill for thorough code reviews.

## Usage

```bash
# In Claude Code
/skill code-review

# Then paste your code or reference a file
```

## What It Reviews

- **Correctness** - Logic errors, edge cases, error handling
- **Security** - Injection, auth issues, data exposure
- **Performance** - Bottlenecks, memory, query efficiency
- **Maintainability** - Readability, naming, complexity

## Example

**Input:**
```javascript
function getUser(id) {
  const query = "SELECT * FROM users WHERE id = " + id;
  return db.execute(query);
}
```

**Output:**
```markdown
## Code Review Summary

**Overall Assessment:** Needs Work
**Risk Level:** Critical

### Critical Issues
1. **SQL Injection Vulnerability** (Line 2)
   - Concatenating user input directly into SQL query
   - Fix: Use parameterized queries
   ```javascript
   const query = "SELECT * FROM users WHERE id = ?";
   return db.execute(query, [id]);
   ```

### High Priority
None found

### Medium Priority
1. **No Input Validation** - `id` is not validated before use
2. **SELECT *** - Fetching all columns when likely only some needed

### What's Done Well
- Function is focused on single responsibility
- Clear function name

### Recommended Actions
1. Implement parameterized query immediately
2. Add input validation for `id`
3. Specify needed columns instead of SELECT *
```

## Providing Feedback

After each review, rate the output to help the skill improve:

1. Perfect - Review caught everything I needed
2. Good - Minor things I would add
3. Okay - Missed some issues
4. Poor - Missed major issues
5. Failed - Unhelpful review

Your feedback is stored in `feedback/` and used to evolve the skill.

## Version History

See `versions/CHANGELOG.md` for evolution history.
