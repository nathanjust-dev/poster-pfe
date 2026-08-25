@echo off
REM ============================================================
REM  Poster PFE - Nathan JUST - VERSION BROCHURE
REM  Regenere Poster_PFE_Nathan_JUST_brochure.pdf depuis poster_brochure.html
REM  Format : 1200 x 675 mm (16:9 paysage), 1 page, vectoriel
REM ============================================================
setlocal
cd /d "%~dp0"

set PDF=%~dp0Poster_PFE_Nathan_JUST_brochure.pdf

if exist "%PDF%" (
  2>nul (>>"%PDF%" call )
  if errorlevel 1 (
    echo.
    echo ============================================================
    echo  ARRET : le PDF est OUVERT dans un lecteur. Ferme-le, puis relance.
    echo ============================================================
    echo.
    pause
    exit /b 1
  )
)

set CHROME="C:\Program Files\Google\Chrome\Application\chrome.exe"
if not exist %CHROME% set CHROME="C:\Program Files (x86)\Google\Chrome\Application\chrome.exe"
if not exist %CHROME% (
  echo ARRET : Chrome est introuvable.
  pause
  exit /b 1
)

echo Generation du PDF (version brochure)...
%CHROME% --headless=new --disable-gpu --no-pdf-header-footer ^
  --print-to-pdf="%PDF%" "file:///%~dp0poster_brochure.html"

if exist "%PDF%" (echo. & echo OK : Poster_PFE_Nathan_JUST_brochure.pdf genere.) else (echo. & echo ECHEC.)
echo.
pause
