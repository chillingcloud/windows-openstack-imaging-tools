$localScriptPath = 'C:\Program Files\Cloudbase Solutions\Cloudbase-Init\LocalScripts'

if(!(Test-Path $localScriptPath)) {
    mkdir -Path $localScriptPath
}

'New-Item -Path C:\hello.txt' | Out-File -FilePath "$localScriptPath\create-hello-file.ps1"