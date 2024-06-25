Write-Host "`n*************************"
Write-Host "Deploying services"
Write-Host "*************************`n"
podman compose up --build --detach
