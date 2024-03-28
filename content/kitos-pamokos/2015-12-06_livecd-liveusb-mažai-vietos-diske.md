---
title: "LiveCD/LiveUSB: mažai vietos diske?"
description: ""
tags: [  ]
date: "2015-12-06"
lastmod: "2017-06-30"
---
Jei naudojate demonstracinę sistemą (angl. LiveCD ar LiveUSB), pavyzdžiui, iš atmintuko ar DVD paleistą (bet neįdiegtą į kompiuterį) „Lietuką“, ilgiau dirbdami galite pastebėti pranešimą, perspėjantį, kad mažai vietos diske. Šis pranešimas pasirodo dėl to, kad openSUSE demonstracinės sistemos numatytuoju atveju RAM atmintyje sukuria 500 MiB dydžio virtualų diską, kuriame laikomi duomenys, nebesutampantys su (vien tik skaitymui skirtos) laikmenos turiniu. Taigi, jei sistema būtų įdiegta į kompiuterį, ji galėtų panaudoti gerokai daugiau RAM pagal įprastą paskirtį, kadangi pasikeitę duomenys būtų rašomi tiesiai į fizinį standųjį diską.

![](/images/stories/lietukas_4218_mazai_vietos.png "Pranešimas „Mažai vietos diske“")

Vis tik, paleisdami demonstracinę sistemą, galite patys nurodyti, kiek skirti vietos virtualiam RAM diskui; tai ypač gali būti svarbu, jei kompiuteris turi labai mažai RAM (1 GiB ar mažiau) arba daug neišnaudojamos RAM atminties (tarkim 4 GiB ir daugiau). Tam naudojamas **ramdisk\_size** parametras; numatytoji reikšmė yra **ramdisk\_size=512000** KiB, t. y. 500 MiB.

Veiksmai šiek tiek skiriasi, priklausomai nuo to, kokiame kompiuteryje paleidžiate demonstracinę laikmeną. Daugumoje kompiuterių, pagamintų maždaug nuo 2011–2012 metų (ir visuose, parduotuose su iš anksto įdiegta Windows 8/8.1/10), naudojama UEFI/EFI paleidyklė; paprastai šią veikseną galima pakeisti per BIOS nuostatas – tradicinis paleidimas naudojamas įgalinus „Legacy boot“ parinktį (gali tekti išjungti „UEFI/secure boot“ parinktį); dalis kompiuterių modelių leidžia matyti kompiuterio paleidimo meniu, kuriame vienu metu siūlomi variantai tiek iš tradicinio, tiek UFEI/EFI meniu.

Kompiuteriuose su UEFI/EFI sistema paleidę openSUSE demonstracinę sistemą sistemą, greičiausiai matysite GRUB2 paleidyklės (angl. boot loader) meniu:

![](/images/stories/lietukas_4218_boot_efi_1.png)

Tuomet spauskite **e** klavišą. Pateksite į pasirinktos paleisti sistemos paleidimo konfigūracijos langą:

![](/images/stories/lietukas_4218_boot_efi_2.png "paleidimo meniu redagavimas")

Ties **ramdisk\_size=** nutrinkite senąjį skaičių ir įrašykite pageidaujamą disko dydį, KiB (beje, 1 GiB = 1024 MiB = 1048576 KiB). Norėdami paleisti sistemą, spauskite **F10** klavišą.

Jei kompiuteris paleidimui naudoja tradicinį BIOS mechanizmą, tuomet matysite ISOLINUX arba SYSLINUX paleidyklės meniu:

![](/images/stories/lietukas_4218_boot_ramdisk_size1.png)

Tokiu atveju tiesiog rašykite **ramdisk\_size=** ir norimą virtualaus RAM disko dydį, KiB (paveiksle 1024000 KiB = 1000 MiB = 0,98 GiB). Spauskite įvesties (angl. Enter) klavišą.

Pastebėkite, kad paleistoje sistemoje ties įrenginiais yra standusis virtualus diskas tiksliai tokio dydžio, kokį nurodėte:

![](/images/stories/lietukas_4218_boot_ramdisk_size2.png "Dolphin programa")
