#!/bin/bash

# Build script: Copy src/ files to dist/ for deployment
# Usage: bash build.sh

echo "🏗️  Building portfolio..."

# Create dist directory
mkdir -p dist

# Copy HTML pages from src/pages to dist/
echo "📄 Copying pages..."
cp src/pages/*.html dist/

# Copy SEO files (sitemap, robots, verification)
echo "🔍 Copying SEO files..."
cp src/pages/*.xml dist/ 2>/dev/null || true
cp src/pages/*.txt dist/ 2>/dev/null || true
cp src/pages/google*.html dist/ 2>/dev/null || true

# Copy assets from src/assets to dist/
echo "📦 Copying assets..."
cp -r src/assets/* dist/

# Verify build
echo "✅ Build complete!"
echo ""
echo "📁 Dist contents:"
ls -lh dist/ | grep -E "\.html|\.pdf" | awk '{print $9, "(" $5 ")"}'
echo ""
echo "🚀 Ready to deploy!"
echo "   git add -A && git commit -m 'Update portfolio' && git push"
