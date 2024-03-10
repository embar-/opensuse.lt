---
title: "Paketų diegimo veiksenos keitimas"
description: ""
tags: [  ]
date: "2011-04-08"
lastmod: "2017-07-31"
---
openSUSE 11.4 versijoje pasikeitė numatytoji _Zypp_ parsiuntimo veiksena diegiant paketus: pirma parsiunčiami visi paketai, o tik po to jie diegiami. Todėl diegimui reikia daugiau laisvos disko vietos (_DownloadInAdvance_). Anksčiau paketai buvo parsiunčiami ir diegiami po vieną. Jei turite mažai disko vietos, grįžti prie ankstesnės veiksenos galite _/etc/zypp/zypp.conf_ rinkmenoje administratoriaus teisėmis įrašydami naują eilutę:  
_commit.downloadMode = DownloadAsNeeded_
