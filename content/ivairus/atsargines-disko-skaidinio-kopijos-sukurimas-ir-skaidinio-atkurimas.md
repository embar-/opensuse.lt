---
title: "Atsarginės disko skaidinio kopijos sukūrimas ir skaidinio atkūrimas"
description: ""
tags: [  ]
date: "2017-08-01"
lastmod: "2017-08-01"
author:  "embar"
---
Atsarginės skaidinių kopijos dažniausiai kuriamos, kai diskas ima susidėvėti, kartais kai ruošiamasi dideliam operacinės sistemos atnaujinimui, t. y. vadinamajam _naujovinimui_ (angl. _upgrade_). Kuriant disko atskiro skaidinio atsarginį atvaizdį, tas skaidinys negali būti naudojamas, t.y. turi būti atjungtas (angl. _unmounted_). Taigi, jei ketinate kurti atsarginę kopiją skaidinio, kuriame įdiegta operacinė sistema, tai turite daryti iš kitos sistemos, pvz., lygiagrečiai įdiegtos sistemos arba paleidus iš vadinamosios demonstracinės laikmenos (LiveCD/LiveDVD/LiveUSB).

Universaliausias būdas kurti skaidinių atvaizdžius iš _Linux_ – naudojant **dd** komandą terminale/konsolėje.

1.  Jei konsolę atvėrėte ne kaip administratorius, įgaukite administratoriaus teises:
    
    su
    
2.  Susiraskite savo norimą skaidinį pasinaudodami viena iš šių komandų:
    
    parted -l  
    fdisk -l
    
    Skaidinio kelias paprastai būna _/dev/sdXN_ ar _/dev/hdXN_ formatu, pavyzdžiui, _/dev/sda2_, _/dev/hdb1_...  
      
    
3.  Sukurkite atsarginę kopiją. Jei norite sukurti paprasčiausią disko atvaizdį kaip _sdXN.img_ rinkmeną, įvykdykite:
    
    dd if=_/dev/sdXN_ conv=sync,noerror bs=64K status=progress > "_/kelias/iki/sdXN.img_"
    
    Jei norite, galite iš karto sukurti suspaustą atvaizdį:
    
    dd if=_/dev/sdXN_ conv=sync,noerror bs=64K status=progress | gzip -c > "_/kelias/iki/sdXN.img.gz_"
    
    Galima iš karto sukurti daugiatomį archyvą (tarkim, sudaryti iš paskirų 2 GB dydžio rinkmenų), pavyzdžiui, dėl to, kad atvaizdį įrašote į FAT failų sistemą, kurioje didžiausias leidžiamas rinkmenos dydis tėra 4 GB.
    
    dd if=_/dev/sdXN_ conv=sync,noerror bs=64K status=progress | gzip -c | split -a3 -b2G - "_/kelias/iki/sdXN.img.gz_"
    
4.  Prireikus, galite atkurti skaidinį iš atsarginės kopijos.  
    Jei kūrėte paprastą skaidinio atvaizdį:
    
    dd if="_/kelias/iki/sdXN.img_" of=_/dev/sdXN_ status=progress
    
    Jei kūrėte su _gzip_ suspaustą atvaizdį:
    
    gunzip -c "_/kelias/iki/sdXN.img.gz_" | dd of=_/dev/sdXN_ status=progress
    
    Jei atsarginės kopijos archyvas daugiatomis:
    
    cat _/kelias/iki/sdXN.img.gz\*_ | gunzip -c | dd of=_/dev/sdXN_ status=progress
    

Informacijos šaltinis:

[https://wiki.archlinux.org/index.php/disk\_cloning](https://wiki.archlinux.org/index.php/disk_cloning)
