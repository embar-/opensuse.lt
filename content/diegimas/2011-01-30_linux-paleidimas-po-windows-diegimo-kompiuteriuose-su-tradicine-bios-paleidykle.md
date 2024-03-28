---
title: "Linux paleidimas po Windows diegimo kompiuteriuose su tradicine BIOS paleidykle"
description: ""
tags: [  ]
date: "2011-01-30"
lastmod: "2017-08-08"
---
Po _Windows_ diegimo arba dėl kitų nenumatytų priežasčių dažnai nebepavyksta paleisti _Linux_ sistemos. **Patarimai šiame straipsnelyje tinka tik tuo atveju, jei kompiuterio paleidimui nėra naudojama UEFI/EFI** (greičiausiai tiks seniems kompiuteriams, kuriuose įdiegėte _Windows 7, XP_ ar senesnę versiją, tačiau kartais gali tikti ir naujesniems kompiuteriams su naujesnėmis Windows versijomis). _Linux_ paleidimo atkūrimas yra kitoks sistemose, kuriose naudojama UEFI/EFI, nei tose, kuriose ši kompiuterio paleidimo sistema nėra naudojama. Jei dvejojate, prieš naudodamiesi šio straipsnelio patarimais, peržiūrėkite kompiuterio su UEFI požymius straipsnelyje apie [openSUSE sistemos paleidimą per UEFI]({{< ref "/diegimas/2017-08-07_opensuse-paleidimas-per-uefi-paleidyklės-meniu" >}}).

**A.** Viena išeitis – įdiegti GRUB pasinaudojant Windows operacine sistema.

Administratoriaus teisėmis paleiskite _grubinst\_gui.exe_ iš [http://download.gna.org/grubutil/grubinst-1.1-bin-w32-2008-01-01.zip](http://download.gna.org/grubutil/grubinst-1.1-bin-w32-2008-01-01.zip) ([alternatyvi nuoroda](/Priedai/grubinst-1.1-bin-w32-2008-01-01.zip)) ir įdiekite į diską.

Po to iš [http://download.gna.org/grub4dos/grub4dos-0.4.4-2009-06-20.zip](http://download.gna.org/grub4dos/grub4dos-0.4.4-2009-06-20.zip) ([alternatyvi nuoroda](/Priedai/grub4dos-0.4.4-2009-06-20.zip)) į savo C:\\ ar kurį kitą diską nukopijuokite _grldr_, _grldr.mbr_ ir _menu.lst_ rinkmenas.

Galiausiai į _menu.lst_ įterpkite:

title openSUSE Linux   
 find --set-root /etc/SuSE-release  
 kernel /boot/vmlinuz  
 initrd /boot/initrd

Nors openSUSE Leap 42.3 ir senesnėse versijose _/etc/SuSE-release_ rinkmena yra, tačiau artimoje ateityje naujesnėse _openSUSE_ sistemose jos nebeliks, tad galite įrašyti vietoj jos _/etc/os-release_ ; bet _/etc/os-release_ turi ir kiti _Linux_ platinamieji paketai, ne tik _openSUSE_.

O jei žinote konkretų skaidinį, vietoj to galite rašyti:

title openSUSE Linux skaidinyje (hd0,_skaidinio\_numeris_)

 root (hd0,_skaidinio\_numeris_)  
 kernel /boot/vmlinuz  
 initrd /boot/initrd

Arba, jei paleidyklė buvo įdiegta į skaidinį (beje, taip galima paleisti ir Windows):

title skaidinys (hd0,_skaidinio\_numeris_)  
 rootnoverify (hd0,_skaidinio\_numeris_)  
 chainloader +1

Pastaba: skaidiniai numeruojami nuo 0, pvz., (hd0,0) atitinka pirmąjį disko skaidinį.

Norėdami įkelti GRUB (bet ne GRUB2) meniu, į menu.lst parašykite:

title openSUSE Linux   
 find --set-root /boot/grub/menu.lst  
 configfile /boot/grub/menu.lst

Norėdami pamatyti įdiegtų openSUSE 42.x, 13.x ir senesnių sistemų versijų pagrindinių skaidinių sąrašą, GRUB komandinėje eilutėje įvykdykite:

find /etc/SuSE-release 

Norėdami pamatyti visų įdiegtų Linux sistemų pagrindinių skaidinių sąrašą, GRUB komandinėje eilutėje įvykdykite:

find /etc/os-release

Naudodamiesi GRUB komandine eilute openSUSE paleisite parašę:

 root (hd0,_skaidinio\_numeris_)  
 kernel /boot/vmlinuz  
 initrd /boot/initrd  
 boot

{{< youtube czwShqjX\_8o >}}. Šis būdas yra geresnis tuo, kad nėra perrašomas disko pradžioje esantis pagrindinis paleidimo įrašas.
