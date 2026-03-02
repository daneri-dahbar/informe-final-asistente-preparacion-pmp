# Script para compilar ambos PDFs (Normal y Oscuro)

Write-Host "Iniciando compilación en Modo Normal (Light)..." -ForegroundColor Green
latexmk -pdf -outdir=out -shell-escape -interaction=nonstopmode main.tex

Write-Host "`nIniciando compilación en Modo Oscuro (Dark)..." -ForegroundColor Green
latexmk -pdf -jobname=main_dark -outdir=out -pretex="\def\darkmode{1}" -shell-escape -interaction=nonstopmode main.tex

Write-Host "`nProceso completado. PDFs generados en la carpeta 'out/'." -ForegroundColor Cyan