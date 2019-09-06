
$myPath = Read-Host -Prompt 'Input file path'
cd $myPath
$myPath = gci -include ('*.mkv', '*.mp4') -recurse | Select -expand FullName | Get-Random
$myPath = "`"$myPath`""
echo $myPath

& "C:\Program Files (x86)\VideoLAN\VLC\vlc.exe" $myPath
