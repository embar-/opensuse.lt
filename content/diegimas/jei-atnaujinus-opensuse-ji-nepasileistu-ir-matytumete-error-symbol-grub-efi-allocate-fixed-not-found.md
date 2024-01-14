---
title: "Jei atnaujinus openSUSE, ji nepasileistų ir matytumėte „error: symbol \"grub_efi_allocate_fixed\" not found“"
description: ""
tags: [  ]
date: "2019-10-29"
lastmod: "2019-10-29"
author:  "embar"
---
Ties 2018 ir 2019 metų sandūra _openSUSE_ GRUB paleidyklėje atsirado „grub\_efi\_allocate\_fixed“ simbolis, dėl kurio gali kilti bėdų kai kuriuose kompiuteriuose ar virtualiose mašinose atnaujinant _openSUSE Leap 15.0_ (ar senesnes openSUSE versijas) iki _openSUSE Leap 15.1_ ar _openSUSE Tumbleweed_ – po atnaujinimo galite pamatyti maždaug tokią klaidą:

Loading Linux 4.12.14-lp151.28.20-default ...  
error: symbol \`grub\_efi\_allocate\_fixed' not found.  
Loading initial ramdisk ...  
error: symbol \`grub\_efi\_allocate\_fixed' not found.  
  
Press any key to continue...

Šios klaidos openSUSE netaisys, nes ji yra dėl programinės aparatinės įrangos (angl. firmware) problemų tik kai kuriuose kompiuterių modeliuose. Norėdami patys susitvarkyti sistemą:

1.  Paleiskite kompiuterį iš atmintuko (USB laikmenos), CD ar DVD kokią nors Linux operacinę sistemą.
2.  Prijunkite EFI skaidinį ir įeikite į jį.  
    Jis greičiausiai yra paslėptas, bet jo vardą (_/dev/sdXN_ formatu) galite rasti įvykdę
    
    parted -l
    
    Prijungti skaidinį (tarkim kaip _/mnt_) galite įvykdę komandą
    
    mount /dev/sdXN /mnt
    
    Įeikite į prijungtą skaidinį įvykdę komandą (vietoj _/mnt_ rašykite savo kelią)  
    
    cd /mnt
    
3.  Dėl visa ko pasidarykite _./EFI/BOOT/bootx64.efi_ atsarginę kopiją
    
    mv ./EFI/BOOT/bootx64.efi ./EFI/BOOT/bootx64.efi.senas
    
4.  Nukopijuokite _./EFI/opensuse/grubx64.efi_ į _./EFI/BOOT/bootx64.efi_ įvykdę
    
    cp ./EFI/opensuse/grubx64.efi ./EFI/BOOT/bootx64.efi
    
5.  Galite iš naujo paleisti kompiuterį, dabar _openSUSE Leap 15.1_ ar _openSUSE Tumbleweed_ turėtų pasileisti

Daugiau informacijos:

[https://forums.opensuse.org/showthread.php/534612-GRUB-problem-after-update-to-Tumbleweed-2019-01-15?p=2892093#post2892093](https://forums.opensuse.org/showthread.php/534612-GRUB-problem-after-update-to-Tumbleweed-2019-01-15?p=2892093#post2892093)

[https://bugzilla.novell.com/show\_bug.cgi?id=1123245](https://bugzilla.novell.com/show_bug.cgi?id=1123245)
