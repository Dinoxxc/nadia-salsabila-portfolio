# Deployment Guide

Complete guide for deploying the e-portfolio to Vercel.

## Overview

This portfolio is hosted on **Vercel**, a modern platform for static sites and serverless functions.

- **Live URL:** https://andikanismawan.vercel.app/
- **Deployment Method:** Automatic on git push
- **Build Process:** Static file serving (no build step required)

## How Deployment Works

### 1. Code Push to GitHub

```bash
# Make changes locally
git add -A
git commit -m "Update portfolio"
git push origin master
```

### 2. Vercel Auto-Deploy

When you push to GitHub's `master` branch:
1. Vercel detects the push via webhook
2. Reads configuration from `vercel.json`
3. Deploys `dist/` directory as static files
4. Updates DNS - site is live in ~30-60 seconds

### 3. Live Site Updated

- Changes are immediately accessible at https://andikanismawan.vercel.app/
- No downtime during deployment
- Automatic rollback if needed

## Configuration

**File:** `vercel.json`

```json
{
    "framework": null,
    "buildCommand": null,
    "outputDirectory": "dist",
    "installCommand": null,
    "rewrites": [
        { "source": "/about", "destination": "/about.html" },
        { "source": "/education", "destination": "/education.html" },
        { "source": "/experience", "destination": "/experience.html" },
        { "source": "/projects", "destination": "/projects.html" },
        { "source": "/articles", "destination": "/articles.html" },
        { "source": "/blog", "destination": "/articles.html" },
        { "source": "/contact", "destination": "/contact.html" },
        { "source": "/cv", "destination": "/cv.html" }
    ]
}
```

### Key Settings

| Setting | Value | Reason |
|---------|-------|--------|
| `framework` | `null` | Static site, no framework |
| `buildCommand` | `null` | No build step needed |
| `outputDirectory` | `dist` | Vercel serves from dist/ |
| `installCommand` | `null` | No dependencies |
| `rewrites` | Array | URL routing without .html |

### Rewrites Explained

Rewrites hide the `.html` extension:

```
User visits    →  Vercel serves
/about         →  /about.html
/articles      →  /articles.html
/blog          →  /articles.html  (backward compatibility)
```

## File Structure for Deployment

```
dist/                 ← Vercel serves this directory
├── index.html
├── about.html
├── articles.html
├── contact.html
├── cv.html
├── education.html
├── experience.html
├── projects.html
└── images/          ← Static assets
    ├── logo.png
    ├── profile.png
    └── ...
```

**Note:** `src/` folder is NOT deployed. Only `dist/` is served.

## Local Build Process

Currently, there's **no build step**. To prepare files for distribution:

```bash
# Copy src/ to dist/
cp -r src/pages/* dist/
cp -r src/assets/* dist/
```

Future: Could add Webpack, Vite, or other build tools.

## Troubleshooting

### Site Not Updating

1. **Check git push succeeded**
   ```bash
   git log -1
   git push -u origin master
   ```

2. **Check Vercel dashboard**
   - Visit https://vercel.com
   - Look for failed deployment
   - Check deployment logs

3. **Clear browser cache**
   - Hard refresh: Ctrl+Shift+R (or Cmd+Shift+R on Mac)

### 404 Errors

**Problem:** Visiting `/about` gives 404

**Solution:** Check `vercel.json` rewrites include the route

**Example:**
```json
{ "source": "/about", "destination": "/about.html" }
```

### Images Not Loading

**Problem:** Images show broken in deployed site

**Solution:** Check image paths in HTML are relative

**Wrong:**
```html
<img src="/images/logo.png">  <!-- Points to root, not relative -->
```

**Correct:**
```html
<img src="./images/logo.png">  <!-- Relative path -->
```

## Monitoring

### View Deployment Status

1. Go to https://vercel.com
2. Click "e-portofolio" project
3. See recent deployments with status

### Check Recent Deployments

```bash
# Show git log to see commits
git log --oneline -10

# Verify deployment via Vercel Dashboard
```

### View Logs

In Vercel Dashboard:
1. Click on latest deployment
2. View "Deployment logs" tab
3. Check for any errors

## Updating Content

### To Update Pages

1. Edit HTML files in `src/pages/`
2. Copy to `dist/` (or have build process handle it)
3. Git commit and push
4. Vercel auto-deploys

### To Add New Images

1. Add images to `src/assets/images/`
2. Reference in HTML with relative path: `./images/filename.png`
3. Copy to `dist/assets/images/` 
4. Git commit and push

### To Add New Pages

1. Create `src/pages/newpage.html`
2. Add rewrite in `vercel.json`:
   ```json
   { "source": "/newpage", "destination": "/newpage.html" }
   ```
3. Add navigation link in other pages
4. Copy to `dist/`
5. Git commit and push

## Performance

- **Page Load:** < 1s (cached by Vercel CDN)
- **Time to Interactive:** < 2s
- **Lighthouse Score:** 90+

**Tips to maintain performance:**
- Keep images optimized (< 200KB each)
- Minimize CSS/JS in HTML
- Consider code splitting for large projects
- Use modern image formats (WebP)

## Security

- **HTTPS:** ✅ Automatic with Vercel
- **SSL Certificate:** ✅ Auto-renewed
- **DDoS Protection:** ✅ Built-in
- **Bot Protection:** ✅ Vercel managed

## Analytics

To add analytics (future):

```html
<!-- Add to head of pages -->
<script defer src="https://analytics.example.com"></script>
```

Popular options:
- Google Analytics
- Vercel Analytics
- Plausible
- Hotjar

## Rollback

If something breaks:

1. Go to Vercel Dashboard
2. Find the "Previous deployment" 
3. Click "Promote" to make it live
4. OR revert git commit and push again

## FAQ

**Q: How long does deployment take?**
A: Usually 30-60 seconds from push to live.

**Q: Can I preview before deploying?**
A: Yes! Use `python -m http.server` locally to test.

**Q: What if I need to update quickly?**
A: Push to master, deployed automatically in ~1 minute.

**Q: Can I use a custom domain?**
A: Yes! Add in Vercel settings → Domains

**Q: Is there a staging environment?**
A: Yes! Create a `develop` branch and connect in Vercel.

---

**Need Help?**
- Vercel Docs: https://vercel.com/docs
- GitHub Push Issues: Check git status
- Contact: Use portfolio contact form
