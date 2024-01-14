---
title: "Disko tikrinimas"
description: ""
tags: [  ]
date: "2011-06-22"
lastmod: "2017-06-29"
---
Apie disko sektorių tikrinimą verta pagalvoti, jei tektų susidurti su viena iš šių bėdų:

*   paleidžiant sistemą ji nesugebėtų prijungti disko ir patektumėte į juodą terminalo langą;
*   kažkuriuo sistemos pasileidimo metu sistema sustoja, o nuspaudus Vald(Ctrl)+Alt+F10 rodo pasikartojančias eilutes;
*   dirbant kompiuteris trumpam karts nuo karto nei iš šio nei iš to sustingsta.

Jei naudojate ext3 ar ext4 rinkmenų (failų) išdėstymo sistemą, tuomet patartina iš kokio nors Linux LiveCD/LiveUSB administratoriaus teisėmis įvykdyti:

**e2fsck -f -c -y /dev/sdaN**

Vietoj /dev/sdaN rašykite savo ext2/ext3/ext4 skaidinį, pvz, /dev/sda1, /dev/hdb2.
