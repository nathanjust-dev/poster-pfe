@echo off
REM ============================================================
REM  Poster PFE - Nathan JUST
REM  Regenere Poster_PFE_Nathan_JUST.pdf a partir de poster.html
REM  Format : 1200 x 675 mm (16:9 paysage), 1 page, vectoriel
REM ============================================================
setlocal
cd /d "%~dp0"

set CHROME="C:\Program Files\Google\Chrome\Application\chrome.exe"
if not exist %CHROME% set CHROME="C:\Program Files (x86)\Google\Chrome\Application\chrome.exe"

echo Generation du PDF...
%CHROME% --headless=new --disable-gpu --no-pdf-header-footer ^
  --print-to-pdf="%~dp0Poster_PFE_Nathan_JUST.pdf" ^
  "file:///%~dp0poster.html"

if exist "%~dp0Poster_PFE_Nathan_JUST.pdf" (
  echo.
  echo OK : Poster_PFE_Nathan_JUST.pdf genere.
) else (
  echo.
  echo ECHEC : verifier le chemin de Chrome.
)
echo.
pause
