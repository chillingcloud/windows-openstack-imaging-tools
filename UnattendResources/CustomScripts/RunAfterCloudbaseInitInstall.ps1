$configDirectory = 'C:\Program Files\Cloudbase Solutions\Cloudbase-Init\conf'
$configFilePath = "$configDirectory\cloudbase-init.conf"
$configUnattendFilePath = "$configDirectory\cloudbase-init-unattend.conf"

if(!(Test-Path $configUnattendFilePath)) {
    Get-Content $configUnattendFilePath | %{$_ -replace "username=Admin", "username=Administrator"}
} 

if(!(Test-Path $configFilePath)) {
    Get-Content $configFilePath | %{$_ -replace "username=Admin", "username=Administrator"}
}