---
title: "Visi openSUSE Tumbleweed RPM paketai perdaryti: pereita prie ZSTD glaudinimo"
description: ""
tags: [  ]
date: "2020-08-29"
lastmod: "2020-08-29"
author:  "embar"
---
2020 m. rugpjūčio 29 d. paskelbtas _openSUSE Tumbleweed_ „snapshot 20200826“. Jame RPM paketai suglaudinti naudojant naują ZSTD algoritmą – dėl to paketų išpakavimas (t.y. paketų diegimas) turėtų pagreitėti. Tačiau trūkumas tame, kad negalėsite taip paprastai iki naujausios _openSUSE Tumbleweed_ atnaujinti metus laiko neatnaujintų _openSUSE Tumbleweed_ sistemų. ZSTD glaudinimas _openSUSE_ RPM paketuose palaikomas tik nuo _Tumbleweed_ 20190713 atnaujinimo ir nuo _openSUSE Leap 15.2_ versijos. Taigi, naujų _openSUSE Tumbleweed_ sistemai sukompiliuotų paketų nebepavyks įdiegti į _openSUSE Leap 15.1_ ar senesnes versijas_._

Taip pat _%\_libexecdir_ pakeistas į _/usr/libexec_.

Dėl tokių esminių RPM pakeitimų buvo perkompiliuoti visi iki vieno _openSUSE Tumbleweed_ saugyklos paketai. Todėl _openSUSE Tumbleweed_ atnaujinimas bus gana didelis ir santykinai ilgas, nes bus iš naujo parsiųsti ir įdiegti praktiškai visi jūsų paketai.

Daugiau informacijos:

[http://dominique.leuenberger.net/blog/2020/08/opensuse-tumbleweed-review-of-the-week-2020-35/](http://dominique.leuenberger.net/blog/2020/08/opensuse-tumbleweed-review-of-the-week-2020-35/)

[https://lists.opensuse.org/opensuse-factory/2020-08/msg00226.html](https://lists.opensuse.org/opensuse-factory/2020-08/msg00226.html)

[https://lists.opensuse.org/opensuse-factory/2020-08/msg00324.html](https://lists.opensuse.org/opensuse-factory/2020-08/msg00324.html)
