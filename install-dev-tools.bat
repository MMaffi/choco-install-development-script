@echo off

REM Instala o Chocolatey (caso ainda não tenha)
echo Instalando o Chocolatey...
Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.SecurityProtocolType]::Tls12; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))

REM Instala o Visual Studio Community 2022
echo Instalando o Visual Studio Community 2022...
choco install visualstudio2022community -y

REM Instala o Python
echo Instalando o Python...
choco install python -y

REM Instala o Git
echo Instalando o Git...
choco install git -y

REM Instala o Node.js
echo Instalando o Node.js...
choco install nodejs -y

REM Instala o Docker
echo Instalando o Docker...
choco install docker-desktop -y

REM Instala o Google Chrome
echo Instalando o Google Chrome...
choco install googlechrome -y

REM Instala o Visual Studio Code
echo Instalando o Visual Studio Code...
choco install vscode -y

REM Instala o Postman
echo Instalando o Postman...
choco install postman -y

REM Instala o Slack
echo Instalando o Slack...
choco install slack -y

REM Instala o Java Development Kit (JDK)
echo Instalando o Java Development Kit (JDK)...
choco install openjdk -y

REM Instala o Sublime Text
echo Instalando o Sublime Text...
choco install sublimetext -y

REM Instala o VLC (player de mídia)
echo Instalando o VLC...
choco install vlc -y

REM Instala o IntelliJ IDEA (IDE para Java e outras linguagens)
echo Instalando o IntelliJ IDEA...
choco install intellijidea -y

REM Instala o MySQL Server (serviço)
echo Instalando o MySQL Server...
choco install mysql -y

REM Instala o MySQL Workbench
echo Instalando o MySQL Workbench...
choco install mysql-workbench -y

REM Instala o WinRAR
echo Instalando o WinRAR...
choco install winrar -y

REM Instala o Discord
echo Instalando o Discord...
choco install discord -y

REM Instala o Flameshot
echo Instalando o Flameshot...
choco install flameshot -y

REM Instala o Everything
echo Instalando o Everything...
choco install everything -y

REM Instala o K-Lite Codec Pack
echo Instalando o K-Lite Codec Pack...
choco install k-lite-codec-pack -y

REM Instala o AnyDesk
echo Instalando o AnyDesk...
choco install anydesk -y

REM Instala o CutePDF
echo Instalando o CutePDF...
choco install cutepdf -y

REM Instala o LibreOffice
echo Instalando o LibreOffice...
choco install libreoffice-fresh -y

REM Instala extensões no VS Code
echo Instalando extensões no Visual Studio Code...
code --install-extension ms-python.python
code --install-extension eamodio.gitlens
code --install-extension dbaeumer.vscode-eslint
code --install-extension esbenp.prettier-vscode
code --install-extension redhat.vscode-yaml
code --install-extension dracula-theme.theme-dracula
code --install-extension pkief.material-icon-theme
code --install-extension naumovs.color-highlight

echo "Instalação de ferramentas e extensões do VS Code concluída!"
pause
