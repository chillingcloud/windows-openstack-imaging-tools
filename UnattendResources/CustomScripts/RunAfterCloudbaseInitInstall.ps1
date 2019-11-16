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

function Set-CloudInitPlugins {
    param(
        [string]$configPath = $null
    )
    if(Test-Path $configPath) {
        $config = Get-Content $configPath
        $config = "$config`r`nplugins=cloudbaseinit.plugins.windows.userdata.UserDataPlugin,cloudbaseinit.plugins.common.localscripts.LocalScriptsPlugin"
        Write-Output $config > $configPath
    }
}

function Set-CloudInitUnattendPlugins {
    param(
        [string]$configPath = $null
    )
    if(Test-Path $configPath) {
        $config = Get-Content $configPath
        $config = {$_ -replace "plugins=cloudbaseinit.plugins.common.mtu.MTUPlugin,cloudbaseinit.plugins.common.sethostname.SetHostNamePlugin", "plugins=cloudbaseinit.plugins.common.mtu.MTUPlugin"}
    }
}

$configDirectory = "C:\Program Files\Cloudbase Solutions\Cloudbase-Init\conf"
$configFilePath = "$configDirectory\cloudbase-init.conf"
$configUnattendFilePath = "$configDirectory\cloudbase-init-unattend.conf"

Write-Host -NoNewLine "[AfterCloudbaseInitInstall] Once you done any manual configuration or don't want to config, Press any key to continue...";
$null = $Host.UI.RawUI.ReadKey('NoEcho,IncludeKeyDown');

#Set-AdministratorUsername $configFilePath
#Set-AdministratorUsername $configUnattendFilePath

# Disable Cloud-Init Plugins
#Set-CloudInitPlugins $configFilePath
#Set-CloudInitUnattendPlugins $configUnattendFilePath