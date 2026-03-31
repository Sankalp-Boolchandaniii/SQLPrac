---
description: Update README.md with notes for new SQL files
---

# Update README.md

When the user asks to update the README with notes for new files, follow these steps:

1. **Scan the project** — List all `.sql` files in `e:\SQLPrac` using `find_by_name`.
2. **Check the README** — Read `e:\SQLPrac\README.md` and identify which files already have notes.
3. **Read new files** — For any `.sql` file not yet documented in the README, read its contents.
4. **Add notes** — Append a new section for each undocumented file under `## Files` in the README, following this format:

```markdown
### `filename.sql`

One-line description of what the file demonstrates (bold the main SQL concept).

- **Tables:** list of tables used
- **Concepts covered:**
  - Concise bullet points for each SQL concept practiced
- **Key note:** any important takeaway or caveat mentioned in the file (if applicable)
```

5. **Keep it concise** — Notes should be short and on-point, not a line-by-line explanation.
6. **Preserve existing content** — Do not modify or remove notes for files already documented.
