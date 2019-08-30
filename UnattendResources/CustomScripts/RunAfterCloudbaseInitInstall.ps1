$configDirectory = "C:\Program Files\Cloudbase Solutions\Cloudbase-Init\conf"
$configFilePath = "$configDirectory\cloudbase-init.conf"
$configUnattendFilePath = "$configDirectory\cloudbase-init-unattend.conf"

Set-AdministratorUsername $configFilePath
Set-AdministratorUsername $configUnattendFilePath

function Set-AdministratorUsername {
    param (
        ConfigPath
    )
    if(Test-Path $configPath) {
        $config = Get-Content $configPath
        $config = %{$_ -replace "username=Admin", "username=Administrator"}
        echo $config > $configPath
    }
}