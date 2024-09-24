Set-Location 'C:/Packages/mcafee'
.\mcafee.exe /INSTALL=AGENT /SILENT /enableVDImode
Write-Host "After installation"
Start-Sleep -Seconds 30
Exit
