---
title: "BtrFs rinkmenų sistemos taisymas (balansavimas)"
description: ""
tags: [  ]
date: "2016-10-14"
lastmod: "2017-06-29"
---
Pastaruoju metu openSUSE kaip numatytąją rinkmenų sistemą siūlo BtrFs. BtrFs privalumas tame, kad leidžia sukurti to skaidinio momentines kopijas (angl. _snapshots_) neeikvojant papildomos disko vietos (kaip įprastai darant atsargines kopijas) ir vėliau prieiti informacijos buvusios diske konkrečiu laiku (kai konkreti momentinė kopija buvo sukurta). Tvarkyti momentines kopijas leidžia openSUSE ir SUSE siūlomas **snapper** įrankis, kuris turi taip pat ir atskirą YaST valdymo centro modulį, įgalinantį momentines kopijas tvarkyti grafinėje sąsajoje.

Jei intensyviai naudojate BtrFs, galite susidurti su problema, kai sistema mano, kad nebėra laisvos vietos disko BtrFS skaidinyje, nors jos iš tiesų vis dar yra, ypač jei skaidinys mažas (iki 16 GB). Kai kuriais atvejais ši bėda gali privesti prie to, kad nebeužsikraus jūsiškė darbalaukio aplinka. Taip yra dėl to, kad BtrFs rinkmenų sistemai gali pritrūkti ne vietos pačioms rinkmenoms, bet meta duomenims apie rinkmenas. Tuomet gali padėti vadinamasis _balansavimas_. Terminalo programoje (pvz., „Konsole“ programoje; jei nepasileido darbalaukis, nuspaudę Vald(Ctrl)+Alt+F1 (vietoj F1 gali būti kitas klavišas nuo F1 iki F6) galėsite prisijungti savo naudotoju komandiniame lange) įvykdykite komandą:

sudo btrfs fi balance start -dusage=50 -musage=50 /btrfs/prijungimo/vieta

Čia _/btrfs/prijungimo/vieta_ yra BtrFs skaidinio prijungimo (angl. mount) kelias. Jei openSUSE įdiegta į BtrFs, tuomet šis kelias yra /, tad reikėtų vykdyti:

sudo btrfs fi balance start -dusage=50 -musage=50 /

Laimei, openSUSE yra lanksti sistema, tad jei jums nereikia momentinių kopijų, galite openSUSE sistemą diegti į kitokio tipo rinkmenų sistemą (pvz., Ext4).

Daugiau informacijos:

1\. https://btrfs.wiki.kernel.org/index.php/Problem\_FAQ#I\_get\_.22No\_space\_left\_on\_device.22\_errors.2C\_but\_df\_says\_I.27ve\_got\_lots\_of\_space

2\. https://lists.opensuse.org/opensuse-factory/2016-09/msg00274.html
