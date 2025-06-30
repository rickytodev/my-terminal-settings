# install oh my posh using winget
winget install JanDeDobbeleer.OhMyPosh -s winget

# install icons for terminal
Set-PSRepository -Name PSGallery -InstallationPolicy Trusted

Install-Module -Name Terminal-Icons -Repository PSGallery -Force -Scope CurrentUser

# create file settings
New-Item -Path $PROFILE -Type File -Force

# add settings to profile
Add-Content -Path $PROFILE -Value 'oh-my-posh init pwsh --config "$env:POSH_THEMES_PATH\json.omp.json" | Invoke-Expression'

Add-Content -Path $PROFILE -Value "Import-Module -Name Terminal-Icons"

# message to user
Write-Host "`nLa instalación de Oh My Posh y Terminal Icons ha finalizado."  --ForegroundColor Yellow

Write-Host "`nYa puedes cerrar esta ventana y usar la terminal que se abrirá automáticamente." --ForegroundColor Green

# reset terminal
Start-Process "wt.exe" 
exit
