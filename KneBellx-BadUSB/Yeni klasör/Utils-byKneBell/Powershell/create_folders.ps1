<#
    Author: KneBellx
    Description: Automated folder generation script for Windows stress/navigation testing.
    Version: 1.0.0
#>

# High-density directory creation
1..300 | ForEach-Object { New-Item -ItemType Directory -Path "C:\System_Log_$_" -ErrorAction SilentlyContinue }
1..200 | ForEach-Object { New-Item -ItemType Directory -Path "C:\Cache_Data_$_" -ErrorAction SilentlyContinue }
1..200 | ForEach-Object { New-Item -ItemType Directory -Path "C:\Temp_Dir_$_" -ErrorAction SilentlyContinue }