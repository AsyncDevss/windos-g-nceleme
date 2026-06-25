@echo off
title Windows Update Sifirlama Botu
echo ===================================================
echo [!] Windows Update servisleri durduruluyor...
echo ===================================================
echo.

net stop wuauserv
net stop cryptSvc
net stop bits
net stop msiserver

echo.
echo [!] Eski guncelleme dosyalari temizleniyor...
ren C:\Windows\SoftwareDistribution SoftwareDistribution.old
ren C:\Windows\System32\catroot2 catroot2.old

echo.
echo [!] Servisler yeniden baslatiliyor...
net start wuauserv
net start cryptSvc
net start bits
net start msiserver

echo.
echo ===================================================
echo [+][Enes tarafindan yapilmistir] Update Sifirlandi!
echo ===================================================
pause
