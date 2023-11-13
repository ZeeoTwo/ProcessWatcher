
Write-Output "Checking if the Service is running"

$serviceName = "ProcessWatcher_Service"
$service = Get-Service -Name $serviceName

if ($service.Status -eq "Running") {
    Write-Output "Stopping Process Before Build"
    Invoke-Expression "net stop ProcessWatcher_Service"
    Write-Output "Starting Build"
} else {
    Write-Host "$serviceName is not running. Starting Build"
}