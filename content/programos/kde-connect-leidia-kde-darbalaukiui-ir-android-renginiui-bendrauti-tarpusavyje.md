---
title: "„KDE Connect“ leidžia KDE darbalaukiui ir Android įrenginiui bendrauti tarpusavyje"
description: ""
tags: [  ]
date: "2015-11-09"
lastmod: "2017-06-29"
---
Jei naudojate KDE darbalaukio aplinką ir turite Android įrenginį, tuomet galite susieti savo kompiuterį su Android. „KDE Connect“ leidžia paprastai persiųsti duomenis, KDE darbalaukyje matyti Android pranešimus, Android įrenginio ekraną naudoti kaip jutiklinį kilimėlį ir t.t.

Pirmiausia į Android įrenginį įsidiekite [KDE Connect](https://play.google.com/store/apps/details?id=org.kde.kdeconnect_tp) programėlę. Į kompiuterį įsidiekite [kdeconnect-kde](https://software.opensuse.org/package/kdeconnect-kde) (0.8b tinka KDE 4 aplinkai) arba [kdeconnect-kde5](https://software.opensuse.org/package/kdeconnect-kde5) papildinį (šių paketų nėra oficialiose saugyklose, todėl spustelėję savo openSUSE versiją, žemiau jos pasirinkite „rodyti neoficialius paketus“!).

Pasiruošimui reikia atverti užkardos 1714-1764 prievadus:

*   įeikite į YaST valdymo centro „Saugumo ir naudotojų“ modulį „Užkarda“;
*   kairėje pusėje spauskite kortelę „Leidžiamos paslaugos“;
*   spauskite apačioje dešinėje esantį mygtuką „Išsamiau...“;
*   atsivėrusiame lange ties TCP prievadais prirašykite „1714:1764“ (be kabučių; jei čia jau yra skaičių, prieš tai padėkite tarpą);
*   ties UDP prievadais lygiai taip pat prirašykite „1714:1764“;
*   užverkite langus patvirtindami pakeitimus, t.y. spauskite „Gerai“, „Toliau“, „Užbaigti“.

Toliau reikia, kad kompiuteris ir Android įrenginys būtų tame pačiame tinkle (pavyzdžiui, kompiuteris gali dalintis belaidžiu ryšiu (Wi-Fi), o Android įrenginys turėtų prie jo prisijungti).

Susižinokite kokį IP adresą turi šiame tinkle jūsų kompiuteris. Yra daugybė būdų tai padaryti, pavyzdžiui, pažiūrėti ties tinklo ryšio informaciją tinklo valdiklyje (kuris paprastai yra šalia laikrodžio); arba galite atsidaryti „kinfocenter“ programą ir ties „Informacija apie tinklą“ > „Tinklo sąsajos“ (reikia ne „Loopback“, o transliacijos tipo IP adreso).

Android įrenginyje atsidarykite „KDE Connect“ programėlę, viršutiniame dešiniame kampe spauskite „**⋮**“ ženkliuką, po to „Add devices by IP“, apačioje ties „Hostname or IP“ įveskite savo kompiuterio IP adresą ir spauskite „Add Host/IP“. Grįžkite į „KDE Connect“ pagrindinį langą. Nuo šiol įrenginių sąraše turėtumėte matyti savo kompiuterį – spustelėkite ties juo, pasirinkite suporuoti įrenginius („Request pairing“). Netrukus kompiuteryje (KDE darbalaukyje) pasirodys pranešimas, prašantis patvirtinti suporavimą.

Kompiuteryje įeikite į KDE darbalaukio nuostatų centrą (gali vadintis „Sistemos nustatymai“, „Darbalaukio nuostatos“ ar pan.), susiraskite „KDE Connect“ modulį. Čia galite matyti visus savo Android įrenginius, juos suporuoti/atrišti, konfigūruoti leidžiamas paslaugas.

Daugiau informacijos:

[https://community.kde.org/KDEConnect](https://community.kde.org/KDEConnect)
