# ⚡ ZeroDB Windows Installer & Cloudflare Setup
$ErrorActionPreference = "Stop"

Write-Host "==========================================" -ForegroundColor Green
Write-Host "  ⚡ ZeroDB Enterprise Installer (Windows)" -ForegroundColor Green
Write-Host "==========================================" -ForegroundColor Green
Write-Host ""

Write-Host "[1/3] ZeroDB Setup..." -ForegroundColor Cyan

# Dein offizieller GitHub Release Link
$downloadUrl = "https://github.com/shaketank/zerodb/releases/download/v1.0.0/zerodb-windows-amd64.zip"

Write-Host "Lade ZeroDB v1.0.0 herunter..." -ForegroundColor Yellow
Invoke-WebRequest -Uri $downloadUrl -OutFile "zerodb.zip"

Write-Host "Entpacke Dateien..." -ForegroundColor Yellow
Expand-Archive -Path "zerodb.zip" -DestinationPath "." -Force
Remove-Item "zerodb.zip"

Write-Host "✔ ZeroDB ist bereit im aktuellen Verzeichnis." -ForegroundColor Green
Write-Host ""

Write-Host "[2/3] Cloudflare Zero Trust Protection" -ForegroundColor Cyan
Write-Host "Damit deine lokale ZeroDB sicher aus dem Internet erreichbar ist, ohne Router-Ports zu öffnen."
$cf_choice = Read-Host "Möchtest du Cloudflare Protection aktivieren? (y/n)"

if ($cf_choice -eq 'y' -or $cf_choice -eq 'Y') {
    $cf_token = Read-Host "Bitte Cloudflare Tunnel Token einfügen"
    
    if (-not [string]::IsNullOrWhiteSpace($cf_token)) {
        Write-Host "Lade Cloudflared für Windows herunter..." -ForegroundColor Yellow
        Invoke-WebRequest -Uri "https://github.com/cloudflare/cloudflared/releases/latest/download/cloudflared-windows-amd64.exe" -OutFile "cloudflared.exe"
        
        Write-Host "Installiere Cloudflare als Windows-Hintergrunddienst..." -ForegroundColor Yellow
        .\cloudflared.exe service install $cf_token
        
        Write-Host "✔ Cloudflare Tunnel läuft jetzt sicher im Hintergrund!" -ForegroundColor Green
    } else {
        Write-Host "Kein Token. Überspringe Cloudflare." -ForegroundColor Red
    }
} else {
    Write-Host "Überspringe Cloudflare Setup." -ForegroundColor DarkGray
}

Write-Host ""
Write-Host "[3/3] ZeroDB Start-Konfiguration" -ForegroundColor Cyan
Write-Host "Erstelle Desktop-Verknüpfung für schnellen Start..." -ForegroundColor Yellow

$WshShell = New-Object -comObject WScript.Shell
$Shortcut = $WshShell.CreateShortcut("$Home\Desktop\Start ZeroDB.lnk")
$Shortcut.TargetPath = "$PWD\zerodb-server.exe"
$Shortcut.WorkingDirectory = "$PWD"
$Shortcut.IconLocation = "$PWD\zerodb-server.exe"
$Shortcut.Save()

Write-Host "✔ Verknüpfung auf dem Desktop erstellt!" -ForegroundColor Green
Write-Host ""
Write-Host "==========================================" -ForegroundColor Green
Write-Host "🚀 ZeroDB IST ERFOLGREICH EINGERICHTET!" -ForegroundColor Green
Write-Host "==========================================" -ForegroundColor Green
Write-Host "Starte die Datenbank über die neue Desktop-Verknüpfung."
Read-Host "Drücke Enter zum Beenden..."