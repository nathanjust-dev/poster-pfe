@echo off
REM ============================================================
REM  Poster PFE - Nathan JUST
REM  Regenere Poster_PFE_Nathan_JUST.pdf a partir de poster.html
REM  Format : 1200 x 675 mm (16:9 paysage), 1 page, vectoriel
REM ============================================================
setlocal
cd /d "%~dp0"

set PDF=%~dp0Poster_PFE_Nathan_JUST.pdf

REM --- Detection du verrou Windows : si un lecteur PDF a le fichier ouvert,
REM --- Chrome ne peut pas l'ecraser et on croit a tort que "ca ne marche pas".
if exist "%PDF%" (
  2>nul (>>"%PDF%" call )
  if errorlevel 1 (
    echo.
    echo ============================================================
    echo  ARRET : Poster_PFE_Nathan_JUST.pdf est OUVERT dans un lecteur.
    echo  Ferme-le, puis relance ce script.
    echo ============================================================
    echo.
    pause
    exit /b 1
  )
)

set CHROME="C:\Program Files\Google\Chrome\Application\chrome.exe"
if not exist %CHROME% set CHROME="C:\Program Files (x86)\Google\Chrome\Application\chrome.exe"
if not exist %CHROME% (
  echo ARRET : Chrome est introuvable. Verifie le chemin dans ce script.
  pause
  exit /b 1
)

echo Generation du PDF...
%CHROME% --headless=new --disable-gpu --no-pdf-header-footer ^
  --print-to-pdf="%PDF%" ^
  "file:///%~dp0poster.html"

if exist "%PDF%" (
  echo.
  echo OK : Poster_PFE_Nathan_JUST.pdf genere.
) else (
  echo.
  echo ECHEC : le PDF n'a pas ete ecrit.
)
echo.
pause
