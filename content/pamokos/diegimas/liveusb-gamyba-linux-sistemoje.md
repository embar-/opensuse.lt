---
title: "LiveUSB gamyba Linux sistemoje su ImageWriter"
description: ""
tags: [  ]
date: "2011-08-22"
lastmod: "2017-06-30"
---
Greitas būdas į USB laikmeną įrašyti turimą .iso atvaizdį.

Įdiekite [imagewriter](http://software.opensuse.org/search?q=imagewriter) paketą, paleiskite „SUSE Studio ImageWriter“ per programų meniu _Pagalbininkai > Glaudinimas_.  
  
LiveUSB .iso atvaizdį parsisiųskite iš  
[http://software.opensuse.org/](http://software.opensuse.org/)

Tinka ne bet koks iso. Pavyzdžiui netinka Lietuko LiveDVD, bet tinka LiveUSB iso atvaizdis.

{{< youtube nDBZwe9vBGs >}} atvaizdį, tuomet įdiekite _syslinux_ ir atsisiųstąjį iso apdorokite su _isohybrid_:

zypper in syslinux  
isohybrid openSUSE-11.4-DVD-x86\_64.iso

  
Informacija anglų kalba:  
[http://en.opensuse.org/SDB:Live\_USB\_stick](http://en.opensuse.org/SDB:Live_USB_stick)
