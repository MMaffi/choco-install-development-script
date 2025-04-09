@echo off

REM Set execution policy to bypass (executar diretamente no PowerShell via CMD)
echo Installing Chocolatey...
REM Execute o PowerShell para instalar o Chocolatey
powershell -Command "Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.SecurityProtocolType]::Tls12; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))"

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

REM Install VLC (player de mídia)
echo Installing VLC...
choco install vlc -y

REM Install IntelliJ IDEA (IDE para Java e outras linguagens)
echo Installing IntelliJ IDEA...
choco install intellijidea -y

REM Install MySQL Server (serviço)
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

REM Install extensions in VS Code
echo Installing extensions in Visual Studio Code...
code --install-extension ms-python.python
code --install-extension eamodio.gitlens
code --install-extension dbaeumer.vscode-eslint
code --install-extension esbenp.prettier-vscode
code --install-extension redhat.vscode-yaml
code --install-extension dracula-theme.theme-dracula
code --install-extension pkief.material-icon-theme
code --install-extension naumovs.color-highlight

echo "Tools installation completed."
pause
