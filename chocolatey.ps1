# Install Chocolatey
Set-ExecutionPolicy Bypass -Scope Process -Force; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))

# Install Google Chrome using Chocolatey
choco install googlechrome -y

# Install Office
choco install microsoft-office -y

# Install Node.js (any version)
choco install nodejs -y

# Install Java
choco install adoptopenjdk -y

# Configure Java environment variables
[System.Environment]::SetEnvironmentVariable('JAVA_HOME', 'C:\Program Files\AdoptOpenJDK\jdk-15.0.2.7-hotspot', 'Machine')
[System.Environment]::SetEnvironmentVariable('Path', $env:Path + ';C:\Program Files\AdoptOpenJDK\jdk-15.0.2.7-hotspot\bin', 'Machine')

# Install Visual Studio Code
choco install vscode -y

# Install Git
choco install git -y

# Install Git Bash
choco install git.install --params "/GitAndUnixToolsOnPath" -y

# Print system environment variables
Get-ChildItem Env: | Format-Table -AutoSize

# Restart the VM (requires admin privileges)
Restart-Computer -Force
