---
title: "Pasirodė Linux branduolio atnaujinimai, ištaisantys KRACK pažeidžiamumą"
description: ""
tags: [  ]
date: "2017-10-26"
lastmod: "2017-12-07"
author:  "embar"
draft: true
---
Neseniai spaudoje pasirodė [straipsniai](http://www.lrt.lt/naujienos/mokslas_ir_it/1/190470/panika_bevielis_rysys_tapo_nesaugus_) apie pavojus naudojantis WPA/WPA2 belaidžiu ryšiu (Wi-Fi) dėl _KRACK_ (angl. _Key Reinstallation AttaCK_) pažeidžiamumo ([CVE-2017-13080](https://nvd.nist.gov/vuln/detail/CVE-2017-13080)). _Linux_ branduolio atnaujinimai, ištaisantys šį pažeidžiamumą [jau pasirodė](https://git.kernel.org/pub/scm/linux/kernel/git/davem/net.git/commit/?id=fdf7cb4185b60c68e1a75e61691c4afdc15dea0e) ir [atkelti](https://bugzilla.suse.com/show_bug.cgi?id=1063667) į _openSUSE_ [atnaujinimus](https://lists.opensuse.org/opensuse-updates/2017-10/msg00088.html). Norėdami _openSUSE Leap 42.3_ sistemą apsaugoti nuo _KRACK_, nepamirškite atnaujinti branduolio (_kernel-default_ paketo) bent iki 4.4.92 versijos.
