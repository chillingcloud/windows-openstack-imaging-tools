$sourceLocalScriptPath = 'C:\UnattendResources\LocalScripts'
$targetLocalScriptPath = 'C:\Program Files\Cloudbase Solutions\Cloudbase-Init\LocalScripts'

if(!(Test-Path $localScriptPath)) {
    mkdir -Path $localScriptPath
}

# Inject LocalScripts
Copy-Item -Recurse -Force $sourceLocalScriptPath 'C:\Program Files\Cloudbase Solutions\Cloudbase-Init\'