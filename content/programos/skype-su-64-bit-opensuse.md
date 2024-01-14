---
title: "Skype su 64 bitų openSUSE"
description: "Kaip įdiegti skype, į opensuse šė bitų"
tags: [  ]
date: "2009-11-26"
lastmod: "2017-09-17"
draft: true
---
Tikriausiai iš pirmo karto nepavyko įdiegti Skaipo į openSUSE x86\_64?  
Taip yra todėl, kad trūksta 32 bitų bibliotekų:

**libqt4-32bit  
libqt4-dbus-1-32bit  
libqt4-x11-32bit  
libsigc++2-32bit  
xorg-x11-libXv-32bit  
libasound2-32bit**

libpng12-0-32bit

  
Jas įdiekime per YaST > Programinės įrangos tvarkyklė  
  
Greitesnis ir patogesnis būdas dirbantiems terminale:  
**sudo zypper install libqt4-32bit libqt4-dbus-1-32bit libqt4-x11-32bit libsigc++2-32bit xorg-x11-libXv-32bit libasound2-32bit** libpng12-0-32bit

Skype galite siųstis iš čia:

[**http://www.skype.com/download/skype/linux/choose/**](http://www.skype.com/download/skype/linux/choose/) **pasirinke openSUSE rpm**

Jeigu darėte viską gerai, tada paspaudus siųsti, jums atsivers YaST ir pradėsite diegimą.
