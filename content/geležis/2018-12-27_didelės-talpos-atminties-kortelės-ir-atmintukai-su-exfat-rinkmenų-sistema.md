---
title: "Didelės talpos atminties kortelės ir atmintukai su exFAT rinkmenų sistema"
description: ""
tags: [  ]
date: "2018-12-27"
lastmod: "2018-12-27"
author:  "embar"
---
Didelės talpos atminties kortelės ir atmintukai dažnai parduodami suženklinti su exFAT tipo rinkmenų sistema, kuri yra panaši į FAT, tačiau joje nėra kai kurių FAT sistemos apribojimų, pvz., rinkmenos dydis gali būti didesnis nei 4 GB. Norint openSUSE Linux sistemoje dirbti su exFAT tipo rinkmenų sistemomis, reikia įsidiegti [**exfat-utils**](http://packman.links2linux.org/install/exfat-utils) ir [**fuse-exfat**](http://packman.links2linux.org/install/fuse-exfat) paketus.

Paketus galima rasti [PackMan](http://packman.links2linux.org/) saugykloje. Nuo _openSUSE Leap 15.0_ versijos, šie du paketai taip pat yra ir oficialiose openSUSE saugyklose.

Jeigu neįdiegtumėte šių paketų, įkišę atminties kortelę ar atmintuką ir bandydami jį prijungti programiškai (angl. _mount_), matytumėte klaidos pranešimą: _unknown filesystem type 'exfat'_.
