#Windows Feature Update Script
#Add-Type -AssemblyName PresentationFramework
$dir = 'C:\_Windows_FU\packages'
$file = "$($dir)\Win1021h2Upgrade.exe"
if (!(Test-Path "$dir")){
#$dir = 'C:\_Windows_FU\packages'
    mkdir $dir
    $webClient = New-Object System.Net.WebClient
    $url = 'https://github.com/patbman/Windows-Feature-Update/blob/main/Windows10Upgrade22H2.exe?raw=true'
    
    $webClient.DownloadFile($url,$file)

    Start-Process -FilePath $file -ArgumentList '/quietinstall /skipeula /auto upgrade /norestart /wait'
    #start-sleep -Seconds 5
    #Wait-Process -name "Windows10UpgraderApp"

    
    }
else{
    Start-Process -FilePath $file -ArgumentList '/quietinstall /skipeula /auto upgrade /norestart /wait'
    #start-sleep -Seconds 5
    #Wait-Process -name "Windows10UpgraderApp"

}
#$updateProcess = (Get-Process "Windows10UpgraderApp").Id
#[System.Windows.MessageBox]::Show('Your System has been updated to the lasted version of windows please reboot your system')