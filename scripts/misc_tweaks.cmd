echo [optimiz] Cleaning temporary files...
rmdir /s /q %temp%
mkdir %localappdata%\Temp
cls

echo [optimiz] Flushing DNS...
ipconfig/flushDNS
cls

echo [optimiz] Resetting Windows Store...
wsreset
taskkill /f /im WinStore.App.exe
cls

echo [optimiz] Now disabling the Lock Screen...
REG ADD HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Personalization /v NoLockScreen /d 1 /f

cd %userprofile%
cls

title Optimiz Shell (Admin)
echo [optimiz] The script is over! We've been sweet and left a Command Prompt window for you to do "whatever you want"! 