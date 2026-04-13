@echo off
REM Build script: Copy src/ files to dist/ for deployment
REM Usage: build.bat

echo.
echo Building portfolio...
echo.

REM Create dist directory if it doesn't exist
if not exist "dist" mkdir dist

REM Copy HTML pages
echo Copying pages...
xcopy "src\pages\*.html" "dist\" /Y /Q

REM Copy SEO files (sitemap, robots, verification)
echo Copying SEO files...
xcopy "src\pages\*.xml" "dist\" /Y /Q
xcopy "src\pages\*.txt" "dist\" /Y /Q
xcopy "src\pages\google*.html" "dist\" /Y /Q

REM Copy assets
echo Copying assets...
xcopy "src\assets\*" "dist\" /Y /E /Q

REM Verify build
echo.
echo Build complete!
echo.
echo dist/ contents:
dir dist\*.html dist\*.pdf 2>nul | find ".html" 
echo.
echo Ready to deploy!
echo   git add -A ^&^& git commit -m "Update portfolio" ^&^& git push
echo.
