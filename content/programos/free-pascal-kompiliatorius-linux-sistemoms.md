---
title: "Free Pascal kompiliatorius Linux sistemoms"
description: ""
tags: [  ]
date: "2010-02-11"
lastmod: "2017-09-17"
---
Daug kas mano, kad paskalio programa Linux sistemai nėra sukurta. Tai klaidingas požiūris, nes su paskaliu puikiai galime programuoti ir Linux (openSUSE) sistemoje, tik tereikia įsidiegti **fpc** (Free Pascal Compiler) paketą.

Terminale rašome:  
**sudo zypper install fpc**  
  
Ši programa veikia tik komandinėje eilutėje.  
  
Kaip ja naudotis?

1\. Einame į terminalą

2\. Rašome **fpc pavyzdys.pa**s (jei pavyzdys.pas failiukas yra /home/vartotojas/ aplanke, kelio papildomai nurodyti nebereikia)  
arba **cd /maršrutas/jonas/** (nurodome kelią, kur randasi pavyzdys.pas failiukas) ir po to  
**fpc pavyzdys.pas**  
  
Jei norite naudotis savo sukompiliuota programa, tai turėsite įrašyti šią komandą:  
**./programa**

Autorius: vytautas39
