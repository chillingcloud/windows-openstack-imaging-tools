$sourceConfigDir = 'C:\UnattendResources\Config'
$targetConfigDir = 'C:\Program Files\Cloudbase Solutions\Cloudbase-Init\conf'

if((Test-Path $sourceConfigDir)) {
    # Inject Cloudbase-Init Config
    Copy-Item -Recurse -Force $sourceConfigDir 'C:\Program Files\Cloudbase Solutions\Cloudbase-Init\'
}

Write-Host -NoNewLine "[AfterCloudbaseInitInstall] Once you done any manual configuration or don't want to config, Press any key to continue...";
$key = $Host.UI.RawUI.ReadKey('NoEcho,IncludeKeyDown');

Write-Host "Entering Sysprep phase..."

#Set-AdministratorUsername $configFilePath
#Set-AdministratorUsername $configUnattendFilePath

# Disable Cloud-Init Plugins
#Set-CloudInitPlugins $configFilePath
#Set-CloudInitUnattendPlugins $configUnattendFilePath