# Conventional Commit JSON Schema

JSON Schema (Draft 2020-12) for validating **parsed** Conventional Commit messages.

This schema validates a structured JSON object that represents a commit message, rather than validating the raw commit message text. Use a small parser in a hook or CI step to convert the commit message into the JSON shape described here, then run schema validation.

## What it enforces

### Header fields
- `type` is required and must be one of:
  - `feat`, `fix`, `docs`, `style`, `refactor`, `perf`, `test`, `build`, `ci`, `chore`, `revert`
- `scope` is optional (`null` or string):
  - max 32 chars
  - `^[a-z0-9][a-z0-9._/-]*$`
- `description` is required:
  - max 72 chars
  - no leading/trailing whitespace
  - no trailing period
  - starts with `[a-z0-9]` (lowercase-first bias)

### Body
- Optional `body` (`null` or string)
- No tabs
- Each line length <= 72

### Footers (trailers)
- Optional `footers` (`null` or array)
- Recognizes and tightens validation for:
  - `Signed-off-by: Name <email@domain>`
  - `Co-authored-by: Name <email@domain>`
  - Issue references like `Fixes: #123` or `Refs: ABC-123` or a URL
- Allows a generic `token: value` footer for other keys

### Breaking change rules
- If `breaking=true`, then one of these must be present:
  - `breakingDescription`, or
  - a footer with token `BREAKING CHANGE` or `BREAKING-CHANGE`
- If a `BREAKING CHANGE` footer exists, `breaking` must be `true`

## Files

- `conventional-commit.schema.json`  
  The schema.

## Data model

The validated JSON object looks like this:

```json
{
  "type": "feat",
  "scope": "api",
  "breaking": false,
  "description": "add cursor pagination",
  "body": "Return a cursor token for large result sets.\n",
  "footers": [
    { "token": "Refs", "value": "#123" },
    { "token": "Signed-off-by", "value": "Alice Example <alice@example.com>" }
  ],
  "breakingDescription": null
}

