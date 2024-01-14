---
title: "„Lietuko“ ar kurio kito „SUSE Studio“ projekto .iso atvaizdžio tobulinimas"
description: ""
tags: [  ]
date: "2011-08-31"
lastmod: "2017-06-29"
draft: true
---
  
::jseblod::article::/jseblod::  
::panel\_article:: ::/panel\_article::  
::wysiwyg\_introtext::

[SUSE Studio](http://www.susestudio.com) svetainėje galite tobulinti esamus projektus, kuriuos rasite [SUSE galerijoje](http://susegallery.com/browse). Vienas iš tokių projektų yra [Lietukas](http://susegallery.com/search?q=lietukas). Norėdami jį modifikuoti, prisijunkite prie [www.susestudio.com](http://www.susestudio.com) su Novell, Google, Facebook, Yahoo ar OpenID, susiraskite norimą _SUSE Studio_ projektą ir jį klonuokite. Žemiau parašyta, kaip tobulinti jau sukurtą „SUSE Studio“ iso atvaizdį, pvz., padaryti jį tinkamu įrašyti į USB laikmeną.

::/wysiwyg\_introtext::  
::my\_readmore:: ::/my\_readmore::  
::wysiwyg\_fulltext::

Norėdami į sukurtą (angl. _build_) ISO atvaizdį įtraukti papildomų rinkmenų, pasinaudokite [isomaster](http://packman.links2linux.org/install/isomaster) programa.

**Norėdami kad turimas iso atvaizdis tiktų įrašymui į USB laikmeną:**

1\. Iš atvaizdžio /boot/i386/loader/ arba /boot/x86\_64/loader/ aplanko nukopijuokite _isolinux.cfg_ rinkmeną, ją pervadinkite į _syslinux.cfg_ ir vėl įdėkite į tą patį aplanką iso atvaizdyje (galite pasinaudoti minėtąja „ISO Master“ grafine programa). _isolinux.cfg_ gali likti kaip buvęs_.  
_

2\. Iš atvaizdžio /boot/i386/loader/ arba /boot/x86\_64/loader/ aplanko ištraukite _initrd_ rinkmeną ir ją ištrinkite iš iso atvaizdžio. Tarkim tą initrd nukopijavome į _/tmp/susestudio_ aplanką. Tuomet įvykdome:

**mkdir /tmp/initrd  
cd /tmp/initrd  
su -c "gzip -dc /tmp/susestudio/initrd | cpio -i"**

_/tmp/initrd_ aplanko rinkmenoje „include“ pakeičiame _CDDevice_ funkciją į štai tokią:

**function CDDevice { # /.../**  **\# changed this function so that it finds config.isoclient on vfat disks, e.g. USB drives**  **\# ----**  **find /lib/modules/\*/kernel/fs/nls/nls\* -exec insmod {} \\; # needed for vfat filesystem find /lib/modules/\*/kernel/fs/\*fat/\*.ko -exec insmod {} \\; # needed for vfat filesystem insmod /lib/modules/\*/kernel/drivers/usb/storage/usb-storage.ko # needed for USB**  **sleep 5 # fixme; do this in a proper way  
** ****# looks for disks instead of CDs****  
 **cddevs=\`/usr/sbin/hwinfo --disk | grep sd | grep "Device File:" | cut -f2 -d: | cut -f2 -d " "\`**  **echo cddevs $cddevs**  **for i in $cddevs;do i=$i"1" # fixme; looks on the first partition only echo i $i if \[ -b $i \];then test -z $cddev && cddev=$i || cddev=$cddev:$i echo cddev $cddev fi**  **done**  **if \[ -z $cddev \]; then systemException \\ "Failed to detect CD drive !" \\ "reboot"**  **fi }**

Jei norite redaguoti administratoriaus teisėmis su _kwrite_, tuomet įvykdykite:

**xdg-su -c "kwrite /tmp/initrd/include"**

Jei norite redaguoti administratoriaus teisėmis su _gedit_, tuomet įvykdykite:

**xdg-su -c "gedit /tmp/initrd/include"**

Pataisę ir įrašę pakeitimus, supakuojame naująjį _initrd_:

**mkdir** ****\-p** /tmp/LiveUSB**

**find . | cpio -o -H newc | gzip -9 > /tmp/LiveUSB/initrd**

Naująjį initrd (_/tmp/LiveUSB/initrd)_ nukopijuojame į _/boot/i386/loader/_ arba _/boot/x86\_64/loader/_ aplanką iso atvaizdyje vietoj senojo ištrintojo.

3\. Jei neįdiegtas, įdiegiame [_syslinux_](http://software.opensuse.org/search?q=syslinux), kuriame yra _isohybrid_ programa. Modifikuojame iso atvaizdį, kad leistų jį įrašyti į atmintuką:

**isohybrid /kelias/iki/atvaizdžio.iso**

Pastaba: taip įrašymui į atmintuką modifikuotas .ISO atvaizdis nebetinka įrašymui į CD/DVD.

::/wysiwyg\_fulltext::  
::panel\_article\_details:: ::/panel\_article\_details::  
::panel\_article\_params:: ::/panel\_article\_params::  
::panel\_article\_meta:: ::/panel\_article\_meta::  
::panel\_end:: ::/panel\_end::  
::jseblodend::::/jseblodend::
