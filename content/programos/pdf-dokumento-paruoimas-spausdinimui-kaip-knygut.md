---
title: "PDF dokumentas kaip knygutė"
description: ""
tags: [  ]
date: "2012-04-16"
lastmod: "2017-09-17"
---
Tarkim turime PDF dokumentą _Dokumentas.pdf_. Jį konvertuosite į A4 formato _Knyga.pdf_ rinkmeną komandinėje eilutėje įvykdę:

pdftops -level3 Dokumentas.pdf - | psbook | psnup -2 -Pa4 | ps2pdf - knyga.pdf  
  

Jei nepavyko, patikrinkite, ar įdiegti reikiami _poppler-tools, psutils ir ghostscript-library_ paketai. Juos įdiegsite įvykdę:

sudo zypper install poppler-tools psutils ghostscript-library  
  

Jei spausdintuvas spausdina tik ant vienos lapo pusės vienu metu, brošiūrą gausite pirmiausia atspausdinę lyginius puslapius atvirkštine tvarka, o po to nelyginius puslapius (pastaruosius spausdinant įprasta, o ne atvirkštine tvarka). Galiausiai gautą pluoštą galite perlenkti pusiau ir susegti – dabar galėsite vartyti A5 dydžio knygutę.

Informacijos šaltinis:

http://catdevblog.nickbair.net/2010/06/08/printing-in-booklet-format-from-the-linux-command-line/
