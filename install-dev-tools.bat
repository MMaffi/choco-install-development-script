@echo off

REM -----------------
REM Check and Install Chocolatey
REM -----------------

REM Check if Chocolatey is installed
choco -v >nul 2>&1
if %errorlevel% neq 0 (
    REM If Chocolatey is not installed, install Chocolatey
    echo Chocolatey is not installed. Installing Chocolatey...
    powershell -Command "Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.SecurityProtocolType]::Tls12; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))"
    
    REM Wait for Chocolatey to be installed
    timeout /t 30 /nobreak >nul
    echo Chocolatey installed successfully. Restarting the script...
    REM Restart the script
    call "%~f0"
    REM Prevent the script from terminating until the call command completes
    exit /b
)

REM -----------------
REM Install Softwares
REM -----------------

REM Install Visual Studio Community 2022
echo Installing Visual Studio Community 2022...
choco install visualstudio2022community -y

REM Install Python
echo Installing Python...
choco install python -y

REM Install Git
echo Installing Git...
choco install git -y

REM Install Node.js
echo Installing Node.js...
choco install nodejs -y

REM Install Docker
echo Installing Docker...
choco install docker-desktop -y

REM Install Google Chrome
echo Installing Google Chrome...
choco install googlechrome -y

REM Install Visual Studio Code
echo Installing Visual Studio Code...
choco install vscode -y

REM Install Postman
echo Installing Postman...
choco install postman -y

REM Install Slack
echo Installing Slack...
choco install slack -y

REM Install Java Development Kit (JDK)
echo Installing Java Development Kit (JDK)...
choco install openjdk -y

REM Install Sublime Text
echo Installing Sublime Text...
choco install sublimetext3 -y

REM Install VLC (media player)
echo Installing VLC...
choco install vlc -y

REM Install IntelliJ IDEA (IDE for Java and other languages)
echo Installing IntelliJ IDEA...
choco install intellijidea -y

REM Install MySQL Server (service)
echo Installing MySQL Server...
choco install mysql -y

REM Install MySQL Workbench
echo Installing MySQL Workbench...
choco install mysql.workbench -y

REM Install WinRAR
echo Installing WinRAR...
choco install winrar -y

REM Install Discord
echo Installing Discord...
choco install discord -y

REM Install Flameshot
echo Installing Flameshot...
choco install flameshot -y

REM Install Everything
echo Installing Everything...
choco install everything -y

REM Install K-Lite Codec Pack
echo Installing K-Lite Codec Pack...
choco install k-litecodecpackfull -y

REM Install AnyDesk
echo Installing AnyDesk...
choco install anydesk -y

REM Install CutePDF
echo Installing CutePDF...
choco install cutepdf -y

REM Install LibreOffice
echo Installing LibreOffice...
choco install libreoffice -y

REM -----------------
REM Install Extensions in Visual Studio Code
REM -----------------

REM Check if Visual Studio Code is installed
where code >nul 2>&1
if %errorlevel% neq 0 (
    echo Visual Studio Code is not installed, skipping extensions installation.
) else (
    echo Installing extensions in Visual Studio Code...
    code --install-extension ms-python.python
    code --install-extension eamodio.gitlens
    code --install-extension dbaeumer.vscode-eslint
    code --install-extension esbenp.prettier-vscode
    code --install-extension redhat.vscode-yaml
    code --install-extension dracula-theme.theme-dracula
    code --install-extension pkief.material-icon-theme
    code --install-extension naumovs.color-highlight
)

REM -----------------
REM Final Message
REM -----------------

echo Tools installation completed.

echo Press any key to exit when you're ready.
pause
