#Windows Feature Update Script

$dir = 'C:\_Windows_FU\packages'
mkdir $dir
$webClient = New-Object System.Net.WebClient
$url = 'https://github.com/patbman/Windows-Feature-Update/blob/main/Windows10Upgrade21H2.exe?raw=true'
$file = "$($dir)\Win1021h2Upgrade.exe"
$webClient.DownloadFile($url,$file)
Start-Process -FilePath $file -ArgumentList '/quietinstall /skipeula /auto upgrade /norestart /wait'

[System.Windows.MessageBox]::Show('Your System has been updated to the lasted version of windows please reboot your system')