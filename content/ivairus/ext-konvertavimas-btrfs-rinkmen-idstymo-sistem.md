---
title: "EXT konvertavimas į BTRFS rinkmenų išdėstymo sistemą"
description: ""
tags: [  ]
date: "2015-10-28"
lastmod: "2017-06-29"
---
Jei turite EXT rinkmenų išdėstymo sistemos skaidinį (ext2, ext3, ext4), tuomet ją galite konvertuoti į BTRFS naudodamiesi komanda:

btrfs-convert _skaidinys_

Prieš konvertuodami skaidinį įsitikinkite, kad jis nėra programiškai prijungtas (angl. _mounted_); jei prijungtas – atjunkite (angl. _umount_). Kadangi skaidinys yra konvertuojamas senojo skaidinio vietoje (o ne kuriamas naujas skaidinys kitoje vietoje pagal senąjį), todėl jame turi būti bent 15% laisvos vietos.

Svarbu: nekonvertuokite skaidinio, jei jis naudojamas operacinei sistemai paleisti (tokiu atveju reikia turėti atskirą /boot skaidinį)! Antraip ta sistema greičiausiai nebepasileis!

BtrFs privalumas tame, kad leidžia sukurti to skaidinio momentines kopijas (angl. _snapshots_) neeikvojant papildomos disko vietos (kaip įprastai darant atsargines kopijas) ir vėliau prieiti informacijos buvusios diske konkrečiu laiku (kai konkreti momentinė kopija buvo sukurta). Tvarkyti momentines kopijas leidžia openSUSE ir SUSE siūlomas **snapper** įrankis, kuris turi taip pat ir atskirą YaST valdymo centro modulį, įgalinantį momentines kopijas tvarkyti grafinėje sąsajoje. BtrFs trūkumas yra kiek lėtesnis duomenų skaitymas/rašymas nei kitų populiarių rinkmenų išdėstymo sistemų.

Yra galimybė, kovertavus į BtrFs, vėl tą skaidinį konvertuoti atgal į Ext:

btrfs-convert -r _skaidinys_

Tačiau tuomet prarasite visus pakeitimus, kuriuos atlikote tame skaidinyje po konvertavimo į BtrFs. Jei po konvertavimo į BtrFs įvykdysite komandą „btrfs balance“, tuomet konvertuoti atgal į Ext nebegalėsite. O jei tikrai nebeketinsite grįžti prie Ext rinkmenų išdėstymo sistemos, tuomet patariama pašalinti „ext2\_saved“ atvaizdį, įvykdyti komandas „btrfs filesystem defragment“ ir „btrfs balance“.

Kai kur \[2\] nurodoma, kad ReiserFS taip pat galima konvertuoti į BtrFs.

Informacijos šaltiniai:

1\. [https://btrfs.wiki.kernel.org/index.php/Manpage/btrfs-convert](https://btrfs.wiki.kernel.org/index.php/Manpage/btrfs-convert)

2\. [https://www.suse.com/documentation/sles-12/stor\_admin/data/sec\_filesystems\_major.html](https://www.suse.com/documentation/sles-12/stor_admin/data/sec_filesystems_major.html#sec_filesystems_major_btrfs_migrate)

3\. [https://www.suse.com/documentation/sles11/stor\_admin/data/sec\_filesystems\_major.html](https://www.suse.com/documentation/sles11/stor_admin/data/sec_filesystems_major.html#b15tkr5n)
