Write-Host "`n*************************"
Write-Host "Destroying services"
Write-Host "*************************`n"
podman compose down --remove-orphans --rmi all
