---
title: "openSUSE LiveUSB kūrimas naudojant Windows sistemą, išlaikant turinį"
description: ""
tags: [  ]
date: "2015-01-07"
lastmod: "2017-06-30"
---
Turint ISO rinkmeną galima sukurti iš USB laikmenos paleidžiamą openSUSE ar jos vedinio (pvz., Lietuko ar kurio kito SUSE Studio projekto) sistemą Windows sistemoje, neištrinant esamų atmintuko duomenų:  
1\. Savo atmintuke sukurkite naują aplanką „boot“ ir į jį nukopijuokite turimą Linux ISO atvaizdį.  
2\. Iš ISO atvaizdžio ištraukite du failus: ''linux'' ir ''initrd'', juos taip pat padėkite atmintuko aplanke „boot“. Šiuo failus greičiausiai rasite aplanke „boot\\i386\\loader“ arba „boot\\x86\_64\\loader“. Ištraukti failus galite naudodami archyvavimo programą, pvz., [7z](http://www.7-zip.org/download.html), arba virtualiai prijungdami ISO atvaizdį, pvz., įsidiegę [Pismo File Mount Audit Package](http://pismotec.com/download/).  
3\. Į atmintuką įdiekite GRUB4DOS paleidyklę. Paprasčiausias būdas tai padaryti paleidžiant [RMPrepUSB](http://www.rmprepusb.com/) programą, pasirenkant savo atmintuką ir spaudžiant „Install GRUB4DOS“.  
4\. USB laikmenoje sukurkite naują tekstinį failą „menu.lst“

Menu.lst turinys turi būti toks (vietoj openSUSE-13.2-KDE-Live-x86\_64.iso įrašykite tikrą savo ISO atvaizdžio pavadinimą):

timeout 10  
  
 title openSUSE-13.2-KDE-Live-x86\_64.iso  
 uuid () > nul  
 set UUID=%?%  
 set ISO=openSUSE-13.2-KDE-Live-x86\_64.iso  
 kernel /boot/linux isofrom=/dev/disk/by-uuid/%UUID%:/boot/%ISO% isofrom\_device=/dev/disk/by-uuid/%UUID% isofrom\_system=/boot/%ISO% loader=syslinux splash=silent quiet  
 initrd /boot/initrd

**Svarbu:** šiame puslapyje gali atrodyti kad tarp „kernel ...“ ir „initrd...“ yra papildomų eilučių, tačiau taip nėra: prieš paskutinė eilutė yra labai ilga ir prasideda žodžiu „kernel“, o paskutinė eilutė – „initrd“.

**Svarbu:** daugumoje kompiuterių, pagamintų maždaug nuo 2011–2012 metų (ir visuose, parduotuose su iš anksto įdiegta Windows 8/8.1/10), naudojama UEFI/EFI paleidyklė; paprastai šią veikseną galima pakeisti per BIOS nuostatas – tradicinis paleidimas naudojamas įgalinus „Legacy boot“ parinktį (gali tekti išjungti „UEFI/secure boot“ parinktį); dalis kompiuterių modelių leidžia matyti kompiuterio paleidimo meniu, kuriame vienu metu siūlomi variantai tiek iš tradicinio, tiek UFEI/EFI meniu. **Šios instrukcijos veiks tik naudojant tradicinį BIOS paleidimo mechanizmą, t.y. neveiks naudojant UEFI/EFI mechanizmą!**

Kaip visa tai vyksta, parodyta filmuke:

{{< youtube CVGXWV1zcq4 >}}
