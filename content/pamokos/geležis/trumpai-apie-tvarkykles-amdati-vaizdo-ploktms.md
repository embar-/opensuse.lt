---
title: "Trumpai apie tvarkykles AMD/ATI vaizdo plokštėms"
description: ""
tags: [  ]
date: "2017-06-25"
lastmod: "2017-06-30"
---
Prieš keliolika metų jau buvo galima rinktis apgrąžos inžinerijos būdu kuriamas atviro kodo [**Radeon**](https://www.x.org/wiki/RadeonFeature/) tvarkykles ([xf86-video-ati](http://software.opensuse.org/package/xf86-video-ati)). Šiai dienai šios tvarkyklės gerai palaiko plokštes nuo _AMD Radeon 7000 (R100)_ iki _Radeon HD 7000 (Southern Islands)_ bei _Radeon Rx 200 serijų_, t. y. vaizdo plokštes, pasirodžiusias iki maždaug 2014 m.

Tiesa, turėdama AMD kompanijos palaikymą, prieš maždaug 10 metų SUSE/Novell [paskelbė](https://news.opensuse.org/2007/09/18/open-source-driver-for-ati-radeon-r5xxr6xx/) [kartu su](https://lists.x.org/archives/xorg-announce/2007-November/000432.html) X.Org komanda kurianti atviro kodo [**RadeonHD**](https://www.x.org/wiki/radeonhd:feature/) tvarkykles, kurias iki 2012 metų į openSUSE versijas (nuo 11.1 iki 12.2) galėjote įsidiegti iš pagrindinių saugyklų ([xorg-x11-driver-video-radeonhd](http://software.opensuse.org/package/xorg-x11-driver-video-radeonhd)). Apžvalgą apie dviejų atviro kodo AMD tvarkyklių pasiūlą tuo laikotarpiu skaitykite [Phoronix](http://www.phoronix.com/scan.php?page=article&item=radeon_vs_radeonhd&num=1) svetainėje, o daugiau apie kūrimo peripetijas galite paskaityti vieno iš tvarkyklių kūrėjo [tinklaraštyje](http://libv.livejournal.com/27799.html). Ilgainiui atsisakyta kurti atskiras atviro kodo tvarkykles.

Ilgą laiką AMD kūrė uždaro kodo [**FGLRX/Catalyst**](http://support.amd.com/en-us/download/desktop?os=Linux+x86_64) tvarkykles, tačiau paskutinė versija Linux sistemoms pasirodė 2015 metų pabaigoje. Šias jau nebepalaikomas tvarkykles galėjote įdiegti į openSUSE Leap 42.1 ir senesnes versijas.

Nuo 2015 metų [prieinamos](https://lists.freedesktop.org/archives/dri-devel/2015-April/081501.html) AMD kuriamos atviro kodo tvarkykles **AMDGPU** ([xf86-video-amdgpu](http://software.opensuse.org/package/xf86-video-amdgpu)). Oficialiose _openSUSE_ saugyklose tvarkyklės prieinamos nuo _Leap 42.2_ versijos (2016 m.).

AMD taip pat siūlo [**AMDGPU-PRO**](http://support.amd.com/en-us/kb-articles/Pages/AMDGPU-PRO-Driver-for-Linux-Release-Notes.aspx) tvarkykles, tačiau jos iš tiesų yra tik priedas prie atviro kodo AMDGPU tvarkyklių, t. y. jas papildo, o ne jas pakeičia. Apie šias tvarkykles rašėme [ankstesniame straipsnelyje]({{< ref "pamokos/geležis/amdgpu-pro-prieinamas-opensuse-leap-sistemoms" >}}). Nors _AMDGPU-PRO_ tvarkyklės rekomenduojamos profesionaliam darbui, tačiau jos paprastai veikia kiek [lėčiau](http://www.phoronix.com/scan.php?page=article&item=amdgpu-new-1710&num=5) nei grynos _AMDGPU_. Tad žaidimų mėgėjams diegtis _AMDGPU-PRO_ neverta.

_AMDGPU(-PRO)_ tvarkykles rekomenduojama naudoti su naujausių serijų (ypač nuo _Volcanic Islands, Arctic Islands_) plokštėmis, t. y. pasirodžiusias maždaug nuo 2013 metų. Beje, AMD _Southern Islands_ ir _Sea Islands_ serijų vaizdo plokštėms, priklausomai nuo Linukso branduolio versijos, gali tikti tiek ir senos _FGLRX_ arba _Radeon_ tvarkyklės, tiek ir naujos kartos _AMDGPU(-PRO)_ tvarkyklės.

Daugiau informacijos apie AMD/ATI tvarkykles rasite:

[https://en.opensuse.org/Category:ATI](https://en.opensuse.org/Category:ATI)

[https://wiki.gentoo.org/wiki/Radeon](https://wiki.gentoo.org/wiki/Radeon)

[https://wiki.gentoo.org/wiki/AMDGPU](https://wiki.gentoo.org/wiki/AMDGPU)

[https://wiki.archlinux.org/index.php/ATI](https://wiki.archlinux.org/index.php/ATI)

[https://wiki.archlinux.org/index.php/AMDGPU](https://wiki.archlinux.org/index.php/AMDGPU)

[https://help.ubuntu.com/community/RadeonDriver](https://help.ubuntu.com/community/RadeonDriver)

[https://help.ubuntu.com/community/AMDGPU-Driver](https://help.ubuntu.com/community/AMDGPU-Driver)
