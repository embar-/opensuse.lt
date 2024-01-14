---
title: "openSUSE paleidimas per UEFI paleidyklės meniu"
description: ""
tags: [  ]
date: "2017-08-07"
lastmod: "2017-08-08"
author:  "embar"
---
Netgi tuo atveju, kai kompiuteris automatiškai pasileisdamas neparodo meniu, kuriame galėtumėte pasirinkti įdiegtą _Linux_ operacinę sistemą, greičiausiai ją vis tiek galite paleisti per UEFI paleidyklės meniu, jei kompiuteris turi šią funkciją. Požymiai, kad galite pasinaudoti UEFI paleidyklės meniu:

*   Jei kompiuteris yra naujas (pagamintas maždaug po 2011–2012 metų), ypač jei parduotas su jau įdiegta _MS Windows 8/8.1/10_ operacine sistema, greičiausiai naudojama UEFI/EFI paleidyklė.
*   Jei UEFI/EFI parinktis (o ne „Legacy boot“) įgalinta BIOS nuostatose. Tiesa, dalyje naujų kompiuterių jūs tiesiog negalėsite išjungti UEFI. Tik dalis naujų kompiuterių modelių leidžia rinktis tarp senosios („Legacy boot“) ir naujosios UEFI/EFI paleidyklės, tačiau šios parinkties nekeiskite, jei kompiuteryje yra operacinių sistemų, kurias norite ir toliau naudoti, antraip jos gali nebepasileisti. Beje, į BIOS nuostatas dažnu atveju galite patekti nuspaudę atitinkamą klavišą vos pasileidžiant kompiuteriui (paprastai Gr/Esc, Del, F2, F10 ar F12 klavišas, bet gali būti ir dar kitoks klavišas, priklausomai nuo gamintojo, kompiuterio modelio).
*   Jei disko skaidinių lentelės tipas yra GTP (angl. _GUID Partitioning Table_), o ne tarkim populiaraus MBR/DOS/MSDOS tipo.
*   Jei diske yra vienas ar keli FAT tipo skaidiniai su EFI rinkmenomis; tačiau tas(-ie) skaidinys(-iai) yra dažniausiai slepiamasis(-ieji). Įdiegus _openSUSE Leap 42.3_ su UEFI palaikymu, FAT skaidinyje sukuriamas _/EFI/opensuse/_ katalogas, o jame įrašomos rinkmenos: _boot.csv grub.cfg grub.efi grubx64.efi MokManager.efi shim.efi_ . Be to, jei FAT skaidinyje dar nebuvo, papildomai sukuriamas _/EFI/Boot/_ katalogas su _bootx64.efi_ ir _fallback.efi_ rinkmenomis.

UEFI programinė aparatinė įranga (angl. _firmware_) pasileidžiant kompiuteriui paprastai ieško pirmo FAT skaidinio su _/EFI/BOOT/bootx64.efi_ rinkmena, kurią vykdant nukreipiama į dar kitą. Tačiau operacinės sistemos kompiuterio UEFI NVRAM atmintyje gali sukurti nuosavus paleidimo įrašus, kuriems suteikiama aukštesnė pirmenybė nei standartinis paieškos kelias. Pavyzdžiui, _Windows 8/8.1/10_ sukuria UEFI/EFI meniu įrašą _„Windows Boot Manager“_ su nuoroda į _\\EFI\\Microsoft\\Boot\\bootmgfw.efi_ rinkmeną. Tuo tarpu openSUSE sistemoms naudojama EFI rinkmena gali skirtis, priklausomai nuo to, ar UEFI/EFI paleidyklė naudojama kartu su BIOS nuostatose įgalinta saugaus paleidimo (angl. _Secure boot_) parinktimi, ar ne:

*   _/EFI/opensuse/grubx64.efi_ – jei saugaus paleidimo parinktis nėra įgalinta.
*   _/EFI/opensuse/shim.efi_ – jei įgalinta kompiuterio BIOS nuostatose įgalinta _„Secure boot“_ parinktis.  
    Beje, kai kuriuose kompiuteriuose „Secure boot“ parinkties neįmanoma išjungti; tokie kompiuteriai paprastai parduodami tik su jau įdiegta _Microsoft Windows_ operacine sistema. Tačiau _shim.efi_ turi ir _Microsoft_ parašą. Savo ruožtu _shim.efi_ patikrina _grub.efi_ parašą; pagrindinis paleidyklės kodas yra _grub.efi_ rinkmenoje; _grub.efi_ įkelia FAT skaidinyje esančią _/EFI/opensuse/grub.cfg_, pastaroji konfigūracija tik įkelia GRUB2 paleidyklės meniu iš _/boot/grub2/grub.cfg_ (iš _openSUSE Linux_ sistemos skaidinio); būtent _/boot/grub2/grub.cfg_ konfigūracija nurodo galutinį meniu, kuriame galite pasirinkti norimą paleisti operacinę sistemą. Jei kartais _shim.efi_ rinkmena būtų sugadinta, ją galite rasti [shim](https://software.opensuse.org/package/shim) pakete (64 bitų _openSUSE_ sistemoms skirtame RPM pakete EFI rinkmenos kelias yra _/usr/lib64/efi/shim-opensuse.efi_ , tačiau diegiant paleidyklę ta EFI rinkmena automatiškai nukopijuojama į reikiamą kitą vietą). Jei kartais _grub.efi_ rinkmena būtų sugadinta, 64 bitų _openSUSE_ sistemoms skirtąją galite rasti [grub2-x86\_64-efi](https://software.opensuse.org/package/grub2-x86_64-efi) RPM pakete (kelias pakete yra _/usr/lib/grub2/x86\_64-efi/grub.efi_ ).

UEFI paleidyklė pirmiausia bando automatiškai paleisti aukštesnio prioriteto sistemą, o jei nepavyksta, bando paleisti vis žemesnio prioriteto sistemas. Įdiegus ar atnaujinus _Windows_ sistemą, jos įrašas gali įgauti pirmenybę visų kitų įrašų atžvilgiu; atitinkamai įdiegus _openSUSE Linux_ – numatytuoju atveju _openSUSE_ sistemos valdoma GRUB2 paleidyklė įgauna pirmenybę. Jei įdiegta _openSUSE_ sistema neparodo jos paleidimo meniu, galite patikrinti, gal kartais _openSUSE_ paleidimo įrašas tebėra tarp UEFI/EFI paleidyklės pasirinkimų, tačiau nebeturi pirmenybės (t. y. nebėra pirmasis sąraše). **Tokiu atveju paleisti _openSUSE_ galėsite per UEFI/EFI meniu jo net nekeisdami** (arba, jei norite, kartu ir pakeisdami kompiuterio paleidimo meniu):

*   Dažnu atveju vos pasileidžiant kompiuteriui galite nuspausti klaviatūros klavišą (paprastai F9 ar F12, bet gali būti ir kitoks, priklausomai nuo gamintojo ir kompiuterio modelio), kuris leidžia pasirinkti paleidžiamą laikmeną ar sistemą, nepriklausomai nuo BIOS nuostatų (kita vertus, kartais atvejais UEFI paleidyklės meniu galite keisti ir per BIOS nuostatas). UEFI paleidyklės meniu galite matyti įrašą _openSUSE_ sistemai paleisti: _„opensuse“_ – jei „UEFI/Secure boot“ parinktis nėra įgalinta, arba _„opensuse-secureboot“_ – jei _„UEFI/Secure boot“_ yra įgalinta. Animacijoje pavaizduotas _VirtualBox_ UEFI/EFI meniu.  
      
    [![](/images/stories/UEFI%20meniu.gif)](/images/stories/UEFI%20meniu.gif)  
      
    Net jei su _openSUSE_ susijusio įrašo nerastumėte pagrindiniame meniu, kai kurios UEFI sistemos leidžia naršyti FAT skaidinių turinį, paleisti iš jo kone bet kurią EFI rinkmeną ir/ar įtraukti pasirinktą EFI rinkmeną į kompiuterio paleidimo meniu.  
      
    [![](/images/stories/UEFI%20savitas%20EFI.gif)](/images/stories/UEFI%20savitas%20EFI.gif)  
      
    
*   Jei esate įsidiegę _Microsoft Windows 8/8.1/10_ operacinę sistemą, paleistoje _Windows_ sistemoje per meniu susiraskite „Paleisti iš naujo“ ir laikydami _Lyg2_ (angl. _Shift_) klavišą tą meniu įrašą nuspauskite. Iš naujo pasileidus kompiuteriui, pasirinkę _„Naudoti įrenginį“_ (angl. _Use a device_) matysite UEFI paleidyklės meniu siūlomas laikmenas ir sistemas.  
      
    [![](/images/stories/Windows%20UEFI%20naudoti%20irengini.gif)](/images/stories/Windows%20UEFI%20naudoti%20irengini.gif)  
      
    O jei norite patekti į UEFI konfigūraciją iš _Microsoft Windows 8/8.1/10_, galite nuspaudę _Lyg2_ klavišą iš naujo paleisti kompiuterį ir eiti pasirinkdami _Pašalinti gedimą_ (angl. _Troubleshoot_) > _Išplėstinės parinktys_ (angl. _Advanced Options_) > _UEFI įrangos parametrai_ (angl. _UEFI Firmware Settings_).  
      
    [![](/images/stories/Windows%20UEFI%20konfig%20iejimas.gif)](/images/stories/Windows%20UEFI%20konfig%20iejimas.gif)  
      
    Deja, VirtualBox programos valdoma virtuali mašina neatveria jokios UEFI įrangos parametrų konfigūracijos, bet gal tikroje mašinoje pavyktų... Be to, kadangi UEFI parametrai/kintamieji saugomi NVRAM atmintyje (o ne standžiajame diske), VirtualBox negali prisiminti UEFI meniu pakeitimų pilnai išjungus virtualią mašiną ir vėl įjungus, tačiau gali prisiminti UEFI pakeitimus tarp kompiuterio paleidimų iš naujo.

Jei nepavyko rasti _openSUSE_ įrašo tarp UEFI meniu įrašų, tačiau kompiuteryje lygiagrečiai įdiegta _Windows_ sistema, tuomet galite pabandyti įtraukti _openSUSE Linux_ paleidimo įrašą paleistoje [Linux]({{< ref "/pamokos/diegimas/opensuse-paleidimo-atkurimas-uefi-is-linux" >}}) arba [_Windows_]({{< ref "/pamokos/diegimas/opensuse-paleidimo-atkurimas-uefi-windows-easyuefi" >}}) sistemoje.

Daugiau informacijos rasite:

[https://doc.opensuse.org/release-notes/x86\_64/openSUSE/Leap/42.2/RELEASE-NOTES.lt.html#sec.123.uefi](https://doc.opensuse.org/release-notes/x86_64/openSUSE/Leap/42.2/RELEASE-NOTES.lt.html#sec.123.uefi) (lietuviškai)

[https://doc.opensuse.org/release-notes/x86\_64/openSUSE/Leap/42.3/](https://doc.opensuse.org/release-notes/x86_64/openSUSE/Leap/42.3/) (angliškai)

[https://en.opensuse.org/openSUSE:UEFI](https://en.opensuse.org/openSUSE:UEFI)

[https://nwrickert2.wordpress.com/2016/01/08/uefi-and-opensuse-leap-42-1-2/](https://nwrickert2.wordpress.com/2016/01/08/uefi-and-opensuse-leap-42-1-2/)

[https://docs.microsoft.com/en-us/windows-hardware/manufacture/desktop/uefi-firmware](https://docs.microsoft.com/en-us/windows-hardware/manufacture/desktop/uefi-firmware)

[https://docs.microsoft.com/en-us/windows-hardware/manufacture/desktop/boot-to-uefi-mode-or-legacy-bios-mode](https://docs.microsoft.com/en-us/windows-hardware/manufacture/desktop/boot-to-uefi-mode-or-legacy-bios-mode)

[https://docs.microsoft.com/en-us/windows-hardware/manufacture/desktop/disabling-secure-boot](https://docs.microsoft.com/en-us/windows-hardware/manufacture/desktop/disabling-secure-boot)
