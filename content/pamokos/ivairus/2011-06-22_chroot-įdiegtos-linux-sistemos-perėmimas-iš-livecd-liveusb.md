---
title: "chroot - įdiegtos Linux sistemos perėmimas iš LiveCD/LiveUSB"
description: ""
tags: [  ]
date: "2011-06-22"
lastmod: "2017-06-29"
---
Tarkim mūsų sistema įdiegta į /dev/sda1 skaidinį. Tarkim turime LiveCD/LiveUSB ir norime pasinaudoti jau įdiegtos sistemos ištekliais arba tą įdiegtą sistemą taisyti, atnaujinti. Tuomet iš demonstracinės laikmenos paleistoje sistemoje administratoriaus root teisėmis įvykdome:

**mkdir /mnt/vietinis**

**mount /dev/sda1 /mnt/vietinis  
**

**mount -o bind /proc /mnt/vietinis/proc**

**mount -o bind /dev /mnt/vietinis/dev**

**mount -o bind /sys /mnt/vietinis/sys**

**mount -o bind /etc/resolv.conf /mnt/vietinis/etc/resolv.conf**

**chroot** **/mnt/vietinis**

**rcnetwork start**

Paskutinė komanda nėra būtina, tačiau jos reikia, kad galėtumėte prisijungti prie interneto, pvz., jei norite vietinėje jau įdiegtoje sistemoje paleisti YaST paketų tvarkytuvę ir įdiegti paketus iš nuotolinių saugyklų.

Jei laikmena nesuderinama su įdiegta sistema (pvz., LiveCD yra 32 bitų, o įdiegtoji sistema - 64 bitų), tuomet pamatysite "chroot: cannot run command \`/bin/bash': Exec format error" pranešimą.
