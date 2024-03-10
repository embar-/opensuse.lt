---
title: "Pasirodė openSUSE Leap 15.1"
description: ""
tags: [  ]
date: "2019-05-22"
lastmod: "2019-05-23"
author:  "embar"
---
 ![](https://en.opensuse.org/images/9/98/Leap15.1Branding.jpeg)

2019 m. gegužės 22 d. išleidžiama _openSUSE Leap 15.1_ versija. Šios versijos pagrindas yra toks pat kaip ir _SUSE Linux Enterprise 15 Service Pack 1 (SLE 15 SP1)_. Atnaujinimas nuo beveik lygiai prieš metus pasirodžiusios [_openSUSE Leap 15.0_]({{< ref "/opensuse-įvykiai/2018-05-25_pasirodė-opensuse-leap-150" >}}) versijos iki 15.1 versijos turėtų būti saugus, sklandus, beveik nepastebimas. Skirtumas tarp pilnai atnaujintos _openSUSE 15.0_ ir _15.1_ versijos visai mažas, dauguma paprastų naudotojų jo greičiausiai visai nepajustų, nes programinės įrangos paketų versijos daugeliu atveju išlieka tokios pačios, pavyzdžiui:

*   Linux branduolys tos pačios versijos – 4.12 (palyginimui – _openSUSE Tumbleweed_ šiai dienai siūlo 5.1 versiją),
*   Darbalaukių versijos nepasikeitė – KDE Plasma 5.12 LTS, GNOME 3.26, XFCE 4.12.1, Enlightenment 22.3, LxQt 0.12,
*   LibreOffice raštinės paketo versijos atitinka (6.1.3.2),
*   Firefox ESR ir kitų naršyklių versijos yra naujausios stabilios,
*   GIMP piešimo programos versijos sutampa,
*   Qt tebėra senstelėjusios (bet oficialiai tebepalaikomos) 5.9 LTS versijos (palyginimui – _openSUSE Tumbleweed_ šiai dienai siūlo 5.12 versiją),
*   GTK tebėra 3.22 versijos...

Kai kurie pokyčiai liečia eilinius naudotojus:

*   Nors Linux branduolys senstelėjęs, tačiau grafikos tvarkyklės atkeltos iš naujesnio Linux 4.19 branduolio, tad palaikoma daugiau vaizdo plokščių, o anksčiau palaikytosios dabar palaikomos geriau (įskaitant AMD Vega).
*   Mesa grafikos paketas atnaujintas iki 18.3 versijos (nuo 18.0 versijos, buvusios _openSUSE Leap 15.0_ sistemoje; palyginimui – _openSUSE Tumbleweed_ šiai dienai siūlo 19.0 versiją)
*   Palaikoma daugiau belaidžio ryšio (WiFi) įrangos.
*   Dabar tinklo valdymas vyks per _Network Manager_ taip pat ir staliniuose kompiuteriuose – anksčiau toks tinklo valdymas buvo numatytasis vien tik nešiojamuosiuose kompiuteriuose.
*   KDE programų versijos atnaujintos iki 18.12.3 versijos (nuo 17.12.3 versijos, buvusios _openSUSE Leap 15.0_ sistemoje; palyginimui – _openSUSE Tumbleweed_ šiai dienai siūlo 19.04.1).
*   KDE Frameworks versija atnaujinta iki 5.55 (nuo 5.45 versijos, buvusios _openSUSE Leap 15.0_ sistemoje; palyginimui – _openSUSE Tumbleweed_ šiai dienai siūlo 5.58).
*   YaST nebeturi modulio šriftų atvaizdavimo tvarkymui visos sistemos lygiu.
*   YaST turėtų geriau atrodyti 4k (HiDPI) ekranuose.
*   [Perpiešti]({{< ref "/opensuse-įvykiai/2019-02-03_yast2-valdymo-centras-su-breeze-apivavidalinimo-ženkliukais" >}}) numatytieji YaST valdymo centro ženkliukai – dabar jie gerokai supaprastinti, plokštesni, juose mažiau spalvų (ar gražiau? – skonio reikalas).

Naujovių/galimybių gali tikėtis ir sistemų administratoriai, programuotojai. Pavyzdžiui,

*   Firewall užkardą galite konfigūruoti per YaST tekstinėje konsolės atmainoje (ne vien tik grafinėje sąsajoje).
*   YaST valdymo centre galite geriau valdyti SALT.
*   YaST valdymo centre galite geriau valdyti SSH raktus.
*   Patobulintas YaST valdymo centro skaidinių tvarkymo modulis, ypač RAID diskų tvarkymas.
*   Patobulinti numatytieji disko skaidymo pasiūlymai diegiant operacinę sistemą naujai.
*   Patogiau keisti procesorių pažeidžiamumų (pvz., Spectre,Meltdown) švelninimo (angl. mitigation) parinktis: arba diegimo santraukos lange prieš diegiant, ar einant YaST > Paleidyklė > Branduolio nuostatos; yra galimybę tą sušvelninimą visai išjungti tam, kad greičiau veiktų kompiuteris (aukojant saugumą).
*   /etc/resolv.conf, yp.conf ir kai kurios kitos konfigūracinės rinkmenos dabar tėra nuorodos į atitinkamas /var/run/netconfig/ katalogo rinkmenas.

Žadama, kad atsinaujinimas iki _openSUSE Leap 15.1_ turėtų būti sklandus ne tik nuo _openSUSE Leap 15.0_, bet taip pat ir nuo _openSUSE Leap 42_ serijos versijos (šiai dienai dar nesibaigė 42.3 versijos palaikymas). Apskritai _openSUSE Leap 15.1_ turėtų tikti tiems, kuriems norisi naudoti stabilią sistemą.

Pasirodžiusias _openSUSE Leap_ versijas parsisiųsti galima iš [https://software.opensuse.org/](https://software.opensuse.org/distributions/leap?locale=lt)

Peržiūrėti atnaujintosios sistemos ekranvaizdžius galite [čia](https://en.opensuse.org/Portal:15.1/Screenshots).

Daugiau informacijos anglų kalba:

*   [https://news.opensuse.org/2019/05/22/opensuse-community-releases-leap-15-1-version/](https://news.opensuse.org/2019/05/22/opensuse-community-releases-leap-15-1-version/)
*   [https://en.opensuse.org/Portal:15.1](https://en.opensuse.org/Portal:15.1)
*   [https://en.opensuse.org/Features\_15.1](https://en.opensuse.org/Features_15.1)
*   [https://doc.opensuse.org/release-notes/x86\_64/openSUSE/Leap/15.1/](https://doc.opensuse.org/release-notes/x86_64/openSUSE/Leap/15.1/)
