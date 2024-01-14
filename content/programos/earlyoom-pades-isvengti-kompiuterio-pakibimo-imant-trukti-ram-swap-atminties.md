---
title: "EarlyOOM padės išvengti kompiuterio pakibimo imant trūkti RAM/SWAP atminties"
description: ""
tags: [  ]
date: "2020-02-08"
lastmod: "2020-02-08"
author:  "embar"
---
Naudojate sunkiasvores programas, kurios retkarčiais suryja ne tik visą greitąją RAM atmintį, bet pradeda intensyviai rašyti į standųjį diską užpildinėdama jame esančią lėtąją SWAP atmintį kol dėl to kompiuteris ilgam nustoja reaguoti, kad nusprendžiate verčiau grubiai išjungti kompiuterį neleisdami sudrožti jūsų standžiojo disko?

Tokių kritinių atvejų padėtų išvengti [**EarlyOOM**](https://github.com/rfjakob/earlyoom/blob/master) programa, kuri pasiekus mažą laisvos RAM ir SWAP atminties lygį siunčia problematiškiausioms programoms prašymą užsidaryti (siųstų SIGTERM), o pasiekus kritinį laisvos RAM ir SWAP atminties lygį – jų veiklą nutrauktų priverstinai (siųstų SIGKILL). _EarlyOOM_ kūrėjai siūlo 10% RAM ir 10% SWAP kaip mažos laisvos atminties ribą; o perpus mažesnis laisvos atminties kiekis – kaip kritinis lygis. Programų užvėrimo signalai siunčiami tik jei abi sąlygos yra tenkinamos vienu metu, t.y. beveik išnaudojama tiek RAM, tiek SWAP atmintis; o jei bent viena iš šių dviejų atminčių (RAM arba SWAP) lieka pakankamai laisva – tada programos nebūtų raginamos užsidaryti.

Norėdami įsidiegti EarlyOOM į _openSUSE Leap 15_ sistemą, ieškokite [earlyoom](https://software.opensuse.org/package/earlyoom) paketo [Base:System](https://software.opensuse.org/download/package?package=earlyoom&project=Base%3ASystem&locale=lt) saugykloje; o _openSUSE Tumbleweed_ naudotojai [earlyoom](https://software.opensuse.org/package/earlyoom) paketą ras pagrindinėje saugykloje (nereikės jokių papildomų saugyklų).

Jūs patys keisdami _/etc/sysconfig/earlyoom_ konfigūracijos rinkmeną galite pasirinkti norimas ribas procentais (**\-m** parametras RAM atminčiai ir **\-s** parametras SWAP atminčiai) arba kilobaitais (**\-M** parametras RAM atminčiai ir **\-S** parametras SWAP atminčiai), galite nurodyti, kokių programų (pvz., sisteminių programų systemd, zypper) niekada nedera uždarinėti (**\--avoid** parametras) ir kurias (pvz., nebūtinas FireFox) dera uždarinėti pirmiausia (**\--prefer** parametras).

Fedora svarsto įgalinti [EarlyOOM](https://fedoraproject.org/wiki/Changes/EnableEarlyoom) numatytuoju atveju.

Daugiau informacijos anglų kalba:

[https://github.com/rfjakob/earlyoom/blob/master/README.md](https://github.com/rfjakob/earlyoom/blob/master/README.md)

[https://gitlab.freedesktop.org/hadess/low-memory-monitor](https://gitlab.freedesktop.org/hadess/low-memory-monitor)
