---
title: "Sistemos paleidimo trukmės analizė"
description: ""
tags: [  ]
date: "2017-07-01"
lastmod: "2017-07-01"
author:  "embar"
---
Sistemos paleidimo procesą įvertinti padeda įvairios programos. Trumpai supažindinsime su _systemd-analyze_ ir _bootchart_.

Siūloma _**systemd-analyze**_ programa nuo _openSUSE 13.2_ versijos įdiegiama standartiškai kartu su _systemd_. Joje bendrą kompiuterio paleidimo laiką matysite komandinėje eilutėje (konsolės/terminalo programoje) įvykdę:

systemd-analyze

Išsamų sąrašą, kiek kiekviena atskira paslauga užtruko, matysite įvykdę:

systemd-analyze blame

Problematiškiausius procesus matysite įvykdę:

systemd-analyze critical-chain

Galite netgi susikurti vektorinį paveiksliuką ir jį įrašyti, tarkim, kaip _/tmp/systemd-analyze.svg_:

systemd-analyze plot > /tmp/systemd-analyze.svg

Alternatyvi **_bootchart 2_** programa įdiegiama kartu su to paties pavadinimo [bootchart](http://software.opensuse.org/package/bootchart) paketu. Norint programa pasinaudoti _openSUSE Leap 42.1_ ir naujesnėse versijose, reikia įgalinti _bootchart2_ ir _bootchart2-done_ paslaugas kuriuo nors būdu:  
a) arba eidami _YaST → (Sistema) → Paslaugos_,  
b) arba komandinėje eilutėje:

systemctl enable bootchart2  
systemctl enable bootchart2-done

Iš naujo paleidę kompiuterį, paslaugų trukmių paveiksliuką rasite _/var/log/bootchart.png_
