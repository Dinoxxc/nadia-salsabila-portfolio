# Quick Reference Guide

Fast lookup for common tasks in the e-portfolio project.

## File Locations

| What | Where |
|------|-------|
| Edit pages | `src/pages/*.html` |
| Add images | `src/assets/images/` |
| View site | `dist/` (or Vercel) |
| Edit CV | `src/assets/cv-*.pdf` |
| Deployment config | `vercel.json` |
| Documentation | `docs/` folder |

## Common Tasks

### Edit a Page
```bash
# Edit source file
nano src/pages/about.html

# Rebuild
bash build.sh  # or build.bat on Windows

# Deploy
git add -A && git commit -m "Update about page" && git push
```

### Add an Image
```bash
# Copy image to assets
cp image.png src/assets/images/

# Reference in HTML
<img src="./images/image.png" alt="Description">

# Rebuild & deploy
bash build.sh
git add -A && git commit -m "Add new image" && git push
```

### Add a New Page
```bash
# Create page in src/pages/
touch src/pages/newpage.html

# Add route to vercel.json
# { "source": "/newpage", "destination": "/newpage.html" }

# Add nav link in header of all pages
# <a href="/newpage">New Page</a>

# Rebuild & deploy
bash build.sh
git add -A && git commit -m "Add new page" && git push
```

### View Local Changes
```bash
# Start local server
python -m http.server 8000
# Visit http://localhost:8000/dist/

# Or with Node
npx http-server dist
```

## Directory Map

```
src/pages/         → Edit HTML here
src/assets/images/ → Add images here
src/assets/        → CV and future CSS/JS
dist/              → Don't edit (auto-generated)
```

## Deployment

```bash
# 1. Make changes in src/
# 2. Build
bash build.sh

# 3. Commit & push (auto-deploys to Vercel)
git add -A
git commit -m "describe changes"
git push origin master
```

## Documentation

| File | Purpose |
|------|---------|
| `README.md` | Project overview |
| `STRUCTURE.md` | Folder organization |
| `docs/DEPLOYMENT.md` | How deployment works |
| `docs/FEATURES.md` | Features & components |

## Quick Commands

```bash
# Show git status
git status

# See recent commits
git log --oneline -10

# Rebuild all files
bash build.sh

# Check if files copied correctly
ls -la dist/*.html

# View project structure
ls -R src/
```

## Troubleshooting

**Q: Site not updating after push?**
A: Clear browser cache (Ctrl+Shift+R), check Vercel dashboard

**Q: Build script fails?**
A: Manual copy: `cp -r src/* dist/` then push

**Q: Images broken in deployed site?**
A: Check paths are relative (./images/pic.png not /images/pic.png)

**Q: Need to add CSS?**
A: Create `src/assets/styles/main.css`, link in HTML, rebuild

---

For detailed info, see `STRUCTURE.md` and `docs/` folder.
