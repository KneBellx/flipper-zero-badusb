<#
    Author: KneBellx
    Description: Downloads a custom note to the Desktop and duplicates it multiple times for demonstration/testing.
    Version: 1.0.0
#>

# Define Desktop Path
$DesktopPath = [Environment]::GetFolderPath("Desktop")
$TargetFile = Join-Path -Path $DesktopPath -ChildPath "H4ck3D.txt"

# Download note from KneBellx repository
$ScriptUrl = "https://raw.githubusercontent.com/KneBellx/flipper-zero-badusb/main/utils/files/hacked.txt"
Invoke-WebRequest -Uri $ScriptUrl -OutFile $TargetFile -UseBasicParsing

# Duplicate file across Desktop
1..200 | ForEach-Object {
    $CopyPath = Join-Path -Path $DesktopPath -ChildPath "hacked_$_.txt"
    Copy-Item -Path $TargetFile -Destination $CopyPath -ErrorAction SilentlyContinue
}

# Open the original note
Start-Process -FilePath $TargetFile