function Set-AdministratorUsername {
    param (
        [string]$configPath = $null
    )
    if(Test-Path $configPath) {
        $config = Get-Content $configPath
        $config = %{$_ -replace "username=Admin", "username=Administrator"}
        Write-Output $config > $configPath
    }
}

$configDirectory = "C:\Program Files\Cloudbase Solutions\Cloudbase-Init\conf"
$configFilePath = "$configDirectory\cloudbase-init.conf"
$configUnattendFilePath = "$configDirectory\cloudbase-init-unattend.conf"

Set-AdministratorUsername $configFilePath
Set-AdministratorUsername $configUnattendFilePath