$sourceLocalScriptPath = 'C:\UnattendResources\LocalScripts'
$targetLocalScriptPath = 'C:\Program Files\Cloudbase Solutions\Cloudbase-Init\LocalScripts'

if(!(Test-Path $targetLocalScriptPath)) {
    mkdir -Path $taegetLocalScriptPath
}

# Inject LocalScripts
Copy-Item -Recurse -Force $sourceLocalScriptPath 'C:\Program Files\Cloudbase Solutions\Cloudbase-Init\'