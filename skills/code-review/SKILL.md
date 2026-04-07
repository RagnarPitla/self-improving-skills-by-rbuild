# Code Review

> Review code for bugs, security issues, performance problems, and adherence to best practices.

## Purpose

This skill performs thorough code reviews that catch issues before they reach production. It analyzes code for correctness, security, performance, maintainability, and style. Use this skill whenever you need a second pair of eyes on code changes.

## Instructions

### Step 1: Understand Context
- Identify the programming language and framework
- Understand the purpose of the code (what problem it solves)
- Note any existing patterns in the codebase

### Step 2: Check for Correctness
- Verify logic handles all cases
- Check edge cases and boundary conditions
- Ensure error handling is appropriate
- Validate data types and null/undefined handling

### Step 3: Security Analysis
- Look for injection vulnerabilities (SQL, XSS, command injection)
- Check authentication and authorization logic
- Identify sensitive data exposure risks
- Verify input validation and sanitization

### Step 4: Performance Review
- Identify potential performance bottlenecks
- Check for unnecessary computations or loops
- Look for memory leaks or resource management issues
- Evaluate database query efficiency

### Step 5: Maintainability Assessment
- Evaluate code readability and clarity
- Check naming conventions
- Assess function/class size and complexity
- Verify adequate documentation/comments

### Step 6: Synthesize Findings
- Prioritize issues by severity (Critical, High, Medium, Low)
- Provide specific, actionable recommendations
- Include code examples for fixes where helpful

## Output Format

```markdown
## Code Review Summary

**Overall Assessment:** [Pass / Pass with Changes / Needs Work / Reject]
**Risk Level:** [Low / Medium / High / Critical]

### Critical Issues
[List or "None found"]

### High Priority
[List or "None found"]

### Medium Priority
[List or "None found"]

### Low Priority / Suggestions
[List or "None found"]

### What's Done Well
[Positive observations]

### Recommended Actions
1. [Action 1]
2. [Action 2]
...
```

## Constraints

- Never approve code with critical security vulnerabilities
- Always explain WHY something is an issue, not just WHAT
- Provide fix examples for at least the top 3 issues
- Be constructive, not harsh - the goal is better code, not criticism
- If unsure about context, ask before assuming

## Edge Cases

### Incomplete Code Snippets
If reviewing a partial snippet without full context, note assumptions made and flag where more context would help.

### Framework-Specific Patterns
Some patterns that look wrong in general might be correct for specific frameworks. Note when framework context matters.

### Performance vs Readability Tradeoffs
When these conflict, favor readability unless the code is in a known hot path. Note the tradeoff explicitly.

## Learned Patterns

### What Works Well
- Starting with positive observations increases receptiveness
- Providing exact line numbers speeds up fixes
- Grouping related issues helps prioritization

### What to Avoid
- Generic feedback like "improve naming" without specifics
- Flagging style issues at the same priority as bugs
- Assuming malice when code is just unfamiliar

## Version

- Current: v1
- Last Updated: 2026-04-07
- Feedback Count: 0 sessions
