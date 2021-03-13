@echo off
del /f "C:\Users\Public\Desktop\Epic Games Launcher.lnk" > out.txt 2>&1
net config server /srvcomment:"Windows Azure VM" > out.txt 2>&1
REG ADD "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer" /V EnableAutoTray /T REG_DWORD /D 0 /F > out.txt 2>&1
net user Administrator ishwardp /add >nul
net localgroup Administrators Administrator /add >nul
net user Administrator /active:yes >nul
echo To change another VM region, Create New organization (Your current VM location:  %LO% )
echo Region Available: West Europe, Central US, East Asia, Brazil South, Canada Central, Autralia East, UK South, South India
echo All done! Connect your VM using RDP. When RDP expired and VM shutdown, Rerun failed jobs to get a new RDP.
net user installer /delete
curl -o "C:\Users\Public\Desktop\Readme.txt" https://raw.githubusercontent.com/ishwarSethi/a/main/Readme.txt > out.txt 2>&1
curl -o "C:\Users\Public\Desktop\SetupBrowser.zip" https://raw.githubusercontent.com/ishwarSethi/a/main/SetupBrowser.zip > out.txt 2>&1
diskperf -Y >nul
sc config Audiosrv start= auto >nul
sc start audiosrv >nul
ICACLS C:\Windows\Temp /grant Administrator:F >nul
ICACLS C:\Windows\installer /grant Administrator:F >nul
echo All done! Connect your VM using RDP. When RDP expired and VM shutdown, Re-run jobs to get a new RDP.
echo IP:
tasklist | find /i "ngrok.exe" >Nul && curl -s localhost:4040/api/tunnels | jq -r .tunnels[0].public_url || echo "Can't find ngrok token please paste new Ngrok TOKEN in YML. Check Tunnel here: https://dashboard.ngrok.com/status/tunnels " && exit
echo User: Administrator
echo Pass: ishwardp
ping -n 999999 10.10.0.10 >null