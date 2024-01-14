---
title: "Pastabos apie openSUSE Leap 42.3 papildomą vaizdo plokščių tvarkyklių paketą drm-kmp-default"
description: ""
tags: [  ]
date: "2017-08-08"
lastmod: "2017-08-17"
author:  "embar"
---
Nors _openSUSE Leap 42.3_ versijoje branduolio versija išliko praktiškai ta pati kaip ir buvo _openSUSE Leap 42.2_ versijoje, t. y. abiejų yra 4.4 LTS, tačiau diegiant _openSUSE Leap 42.3_ numatytuoju atveju į kompiuterį kartu įdiegiamas [drm-kmp-default](https://software.opensuse.org/package/drm-kmp-default) paketas, kuriame yra su grafika susiję atnaujinimai, atkelti iš Linux branduolio 4.9 versijos. Tai, kad vaizdo plokščių tvarkyklių atnaujinimai pateikiami atskiru paketu (o ne integruoti į Linux branduolio pagrindinį [kernel-default](https://software.opensuse.org/search?q=kernel-default) paketą), suteikia jums galimybę grįžti prie Linux 4.4 LTS siūlomos grafikos tiesiog pašalinant _drm-kmp-default_ paketą, jei kyla nesklandumų.

![](/images/stories/openSUSE_Leap_42.3_YaST2_systemd_journal_-_gpu_hang.png)

Vis tik dar neskubėkite visiškai atsisakyti šio paketo, jei įdiegta 4.9.33\_k4.4.76\_1-5.1 jo versija, net jei kompiuteris kelioms ar keliolikai sekundžių karts nuo karto pakimta, o vėliau tęsia įprastai; net jei jūsų naudotojas kartais automatiškai atjungiamas iš darbalaukio seanso; net jei atvėrę _YaST2 > Systemd žurnalo_ modulį, galite matyti eilutes su tekstu „gpu hang“... Pasirodo jau yra paruoštas [drm-kmp-default](https://software.opensuse.org/package/drm-kmp-default) atnaujinimas, kuris gali išspręsti minėtas problemas, tačiau jis kol kas dar negali automatiškai įsidiegti su atnaujinimais dėl konfliktuojančių failų. Todėl pirmiausia turite pašalinti esamą _drm-kmp-default_ paketą, o tik po to įdiegti atnaujintąjį. Įdiegus atnaujinimą, reikia iš naujo paleisti kompiuterį.

Atnaujinta informacija:

Atnaujinimas nuo 2017-08-16 dienos perkeltas į oficialią atnaujinimų saugyklą. Todėl, jei spėjote į saugyklų sąrašą įtraukti [http://download.opensuse.org/repositories/openSUSE:/Maintenance:/7039/openSUSE\_Leap\_42.3\_Update/](http://download.opensuse.org/repositories/openSUSE:/Maintenance:/7039/openSUSE_Leap_42.3_Update/) , tuomet pastebėsite, kad nuo 2017-08-16 dienos ši saugykla nebeveikia – tiesiog pašalinkite ją.

Paketą pašalinti ir įdiegti iš naujo galite patys rankiniu būdu. Arba galite visa tai atlikti komandinėje eilutėje:

su  
\# įveskite administratoriaus (root) slaptažodį  
zypper rm -y drm-kmp-default  
zypper ar -f http://download.opensuse.org/repositories/openSUSE:/Maintenance:/7039/openSUSE\_Leap\_42.3\_Update/ openSUSE:Maintenance:7039:drm-kmp-default  
zypper in --from openSUSE:Maintenance:7039:drm-kmp-default -y drm-kmp-default

...ir, jei norite dabar pat iš naujo paleisti kompiuterį:

reboot

Daugiau informacijos:

[https://doc.opensuse.org/release-notes/x86\_64/openSUSE/Leap/42.3/](https://doc.opensuse.org/release-notes/x86_64/openSUSE/Leap/42.3/)

[https://bugzilla.opensuse.org/show\_bug.cgi?id=1050256](https://bugzilla.opensuse.org/show_bug.cgi?id=1050256)

[https://lists.opensuse.org/opensuse-factory/2017-08/msg00215.html](https://lists.opensuse.org/opensuse-factory/2017-08/msg00215.html)

[https://bugs.freedesktop.org/show\_bug.cgi?id=101967](https://bugs.freedesktop.org/show_bug.cgi?id=101967)
