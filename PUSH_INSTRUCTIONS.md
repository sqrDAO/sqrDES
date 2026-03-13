# Push to GitHub

The repo is initialized with an initial commit. To publish to GitHub:

## Option 1: GitHub CLI (recommended)

1. Authenticate if needed: `gh auth login`
2. Create repo and push:

```bash
gh repo create sqrdao/sqrDES --source=. --remote=origin --push
```

Or for a different org/name:

```bash
gh repo create <org>/sqrDES --source=. --remote=origin --push
```

## Option 2: Manual

1. Create a new repository on [GitHub](https://github.com/new) named **sqrDES** (e.g. `sqrdao/sqrDES`)
2. Add remote and push:

```bash
git remote add origin https://github.com/<org>/sqrDES.git
git branch -M main
git push -u origin main
```

## After pushing

You can delete this file: `rm PUSH_INSTRUCTIONS.md && git add -A && git commit -m "Remove push instructions"`
