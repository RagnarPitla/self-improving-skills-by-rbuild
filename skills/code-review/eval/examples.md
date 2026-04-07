# Code Review Examples

## Example 1: SQL Injection

**Input:**
```python
def get_user(user_id):
    query = f"SELECT * FROM users WHERE id = {user_id}"
    return cursor.execute(query)
```

**Expected Output:**
```markdown
## Code Review Summary

**Overall Assessment:** Needs Work
**Risk Level:** Critical

### Critical Issues
1. **SQL Injection Vulnerability** (Line 2)
   - Using f-string to interpolate user input directly into SQL
   - Attacker can inject arbitrary SQL: `1; DROP TABLE users;--`
   - Fix:
   ```python
   query = "SELECT * FROM users WHERE id = %s"
   return cursor.execute(query, (user_id,))
   ```

### Medium Priority
1. **SELECT *** - Consider selecting only needed columns
2. **No error handling** - Database operations should have try/except

### What's Done Well
- Function has clear single responsibility
- Clear naming

### Recommended Actions
1. Use parameterized query immediately (security critical)
2. Add error handling
3. Specify columns needed
```

---

## Example 2: React Component

**Input:**
```jsx
function UserList({ users }) {
  return (
    <div>
      {users.map(user => (
        <div>{user.name}</div>
      ))}
    </div>
  );
}
```

**Expected Output:**
```markdown
## Code Review Summary

**Overall Assessment:** Pass with Changes
**Risk Level:** Low

### Critical Issues
None found

### High Priority
None found

### Medium Priority
1. **Missing key prop** (Line 4)
   - React requires unique key for list items
   - Fix:
   ```jsx
   {users.map(user => (
     <div key={user.id}>{user.name}</div>
   ))}
   ```

### Low Priority / Suggestions
1. Consider semantic HTML (`<ul>/<li>` for lists)
2. Add prop types or TypeScript for type safety
3. Handle empty users array case

### What's Done Well
- Clean, readable component
- Good use of destructuring
- Proper functional component pattern

### Recommended Actions
1. Add key prop to list items
2. Consider adding loading/empty states
```

---

## Example 3: Good Code (Minimal Issues)

**Input:**
```typescript
async function fetchUserData(userId: string): Promise<User | null> {
  try {
    const response = await fetch(`/api/users/${encodeURIComponent(userId)}`);

    if (!response.ok) {
      console.error(`Failed to fetch user: ${response.status}`);
      return null;
    }

    return await response.json();
  } catch (error) {
    console.error('Error fetching user:', error);
    return null;
  }
}
```

**Expected Output:**
```markdown
## Code Review Summary

**Overall Assessment:** Pass
**Risk Level:** Low

### Critical Issues
None found

### High Priority
None found

### Medium Priority
None found

### Low Priority / Suggestions
1. Consider custom error type instead of returning null
2. Could add request timeout handling
3. Consider retry logic for transient failures

### What's Done Well
- Proper TypeScript typing with return type
- URL encoding prevents injection
- Good error handling with try/catch
- Appropriate error logging
- Handles non-ok responses explicitly

### Recommended Actions
No required changes. Suggestions are optional enhancements.
```
