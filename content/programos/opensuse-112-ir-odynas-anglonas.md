---
title: "openSUSE 11.2 ir žodynas „Anglonas“ "
description: "Kaip įdiegti anglona wine pagalba į opensuse linux"
tags: [  ]
date: "2009-11-25"
lastmod: "2017-09-17"
---
Yra galimybė su Wine paleisti Windows programas Linux sistemoje. Bet kai  
kurios, pvz., žodynas „Anglonas“ reikalauja tam tikro paruošimo.

Tomo R. puslapyje [http://www.binaryworld.skynet.lt/Anglonas.html](http://www.binaryworld.skynet.lt/Anglonas.html)  
išsamiai aprašyta, kaip įdiegti Angloną į Ubuntu sistemą.  
Pagal jį sutrumpintai aprašysiu, kaip tai padaryti openSUSE sistemoje.

Taigi:  
1\. Įdiegiame „wine“, pavyzdžiui, vienu iš šių būdų:  
a) Einame YaST > ( Programinė įranga > ) Paketų paieška. Įrašome „wine“. Tarp rastų paketų pažymime wine. Įdiegiame...  
b) konsolėje įvykdome**  
sudo zypper in wine**

2\. Windows sistemos versiją pakeičiame į Windows 98:  
**env WINEPREFIX=$HOME/.wine\_ANGLONAS winecfg**

3\. Atsisiunčiame Windows įrankių diegimo programėlę:  
**wget** [**http://www.kegel.com/wine/winetricks**](http://www.kegel.com/wine/winetricks)

4\. Įdiegiame „Internet Explorer 6“ ir „MS Installer 2.0“:  
**env WINEPREFIX=$HOME/.wine\_ANGLONAS sh winetricks ie6 msi2**

5\. Galime pašalinti nebereikalingą rinkmeną:  
**rm winetricks**

6\. Diegiame „Angloną“:  
**env WINEPREFIX=$HOME/.wine\_ANGLONAS wine '/kelias/iki/Anglono/Setup.exe'**  
Pastabos:  
\* '/kelias/iki/Anglono/Setup.exe' pakeiskite tikru keliu iki Anglono  
diegimo rinkmenos Setup.exe.  
\* Jei turite Anglono diegimo ISO atvaizdą, konsolėje įvykdykite  
**sudo mkdir /tmp/anglonas  
sudo mount /kelias/iki/ISO/atvaizdo.iso /tmp/anglonas -o loop**  
O kai nebereikės –  
**sudo umount /tmp/anglonas  
sudo rmdir /tmp/anglonas**  
\* „env WINEPREFIX=$HOME/.wine\_ANGLONAS“ būdavo naudojamas, kad pakeistume  
wine aplanką – diegimas į standantinį man visada nesėkmingas  
\* Gerbkime Anglono autorių triūsą ir laikykitės licencijos

Sėkmingai įdiegus, darbastalio aplanke atsiranda nuoroda  
„Anglonas.desktop“, kurią ir naudokite programos paleidimui  
Arba galite programą paleisti ir komandinėje eilutėje:  
**env WINEPREFIX="/home/VARTOTOJAS/.wine\_ANGLONAS" wine "C:\\Programų  
failai\\Fotonija\\Anglonas\\Anglonas\_98.exe"  
**  
Išbandyta su openSUSE 11.2, kur pagrindinė sistemos kalba (root) –  
lietuvių; wine-1.1.33-1.1; wine-gecko-1.0.0-5.1.  
Visi ženklai atvaizduojami teisingai net transkripcijoj. Tačiau negaliu  
keisti Anglono nuostatų, paleidžiant programą nerodo Anglono logotipo.

![opensuse anglonas linux](/images/stories/Anglonas-veikia.png)
