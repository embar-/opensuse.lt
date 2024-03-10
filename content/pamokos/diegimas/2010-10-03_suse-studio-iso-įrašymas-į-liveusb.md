---
title: "SUSE Studio *.iso įrašymas į LiveUSB"
description: ""
tags: [  ]
date: "2010-10-03"
lastmod: "2017-06-29"
draft: true
---


[SUSE Studio](http://susestudio.com/) leidžia patiems sukurti savo Linukso platinamąjį paketą (angl. distribution) ir parsisiųst. Vis tik gautas nemodifikuotas .iso yra netinkamas įrašymui į USB, o standžiojo disko atvaizdas užima ypač daug vietos. Todėl parodysiu, kaip gautą .iso įrašyti į atmintuką, t. y. pasigaminti LiveUSB. Vienas iš SUSE Studio kūrinių – [Lietukas](http://ftp.akl.lt/users/embar/). Daugiau SUSE Studio platinamųjų paketų rasite [SUSE Gallery](http://susegallery.com/browse) svetainėje.


Instrukcijose kaip pavyzdys naudojamas atmintuko įrenginys yra _/dev/sdb_, o mūsų „Live“ skaidinys yra _/dev/sdb1_. Koks yra jūsiškio atmintuko kelias, galite sužinoti įvykdę:

**ls -l /dev/disk/by-id/\*usb\***

1\. Įdiegiame _syslinux_ ir _lilo_ paketus per YaST arba komandinėje eilutėje įvykdome:

**sudo zypper in syslinux lilo**

2\. Įkišame savo USB atmintinę ir padarome ją įkraunama (angl. bootable). Vykdome administratoriaus teisėmis:

**syslinux /dev/sdb1  
**

**lilo -M /dev/sdb mbr**

**lilo -A /dev/sdb 1** \# aktyvuojame /dev/sdb įrenginio pirmą skaidinį

3\. Nukopijuojame .ISO atvaizdžio turinį (be „boot“ aplanko) į savo atmintuką.

**mkdir /tmp/iso**

**mount -o loop "/kelias/iki/atvaizdžio.iso" /tmp/iso** # iso prijungiame prie /tmp/iso

**mkdir /tmp/LiveUSB**

**umount /dev/sdb1**

**mount /dev/sdb1 /tmp/LiveUSB** # Atmintuką prijungiame prie /tmp/LiveUSB

**cp /tmp/iso/\* /tmp/LiveUSB/** #nukopijuojame ISO turinį į atmintuką

4\. Nukopijuojame paleidyklės rinkmenas iš _/boot/\*/loader/_ aplanko į atmintuką:

**cp -r /tmp/iso/boot/\*/loader/\*** **/tmp/LiveUSB/**

5\. _isolinux.cfg_ pervadiname į _syslinux.cfg_:

**mv /tmp/LiveUSB/isolinux.cfg /tmp/LiveUSB/syslinux.cfg**

6\. Dabar reikia modifikuoti _initrd_. Pirma išskleidžiame _initrd_ turinį į _/tmp/initrd/_:

**mkdir /tmp/initrd  
****cd** **/tmp/initrd**  
**gzip -dc /tmp/iso/boot/\*/loader/initrd | cpio -i**

7\. „/tmp/initrd“ aplanko rinkmenoje „include“ pakeičiame _CDDevice_ funkciją į štai tokią:

**function CDDevice { # /.../ # changed this function so that it finds config.isoclient on vfat disks, e.g. USB drives # ---- find /lib/modules/\*/kernel/fs/nls/nls\* -exec insmod {} \\; # needed for vfat filesystem find /lib/modules/\*/kernel/fs/\*fat/\*.ko -exec insmod {} \\; # needed for vfat filesystem insmod /lib/modules/\*/kernel/drivers/usb/storage/usb-storage.ko # needed for USB sleep 5 # fixme; do this in a proper way cddevs=\`/usr/sbin/hwinfo --disk | grep sd | grep "Device File:" | cut -f2 -d: | cut -f2 -d " "\` # looks for disks instead of CDs echo cddevs $cddevs for i in $cddevs;do i=$i"1" # fixme; looks on the first partition only echo i $i if \[ -b $i \];then test -z $cddev && cddev=$i || cddev=$cddev:$i echo cddev $cddev fi done if \[ -z $cddev \]; then systemException \\ "Failed to detect CD drive !" \\ "reboot" fi }**

Jei norite redaguoti administratoriaus teisėmis su _kwrite_, tuomet įvykdykite:

**xdg-su -c "kwrite /tmp/initrd/include"**

Jei norite redaguoti administratoriaus teisėmis su _gedit_, tuomet įvykdykite:

**xdg-su -c "gedit /tmp/initrd/include"**

8\. Pataisę ir įrašę pakeitimus, supakuojame naująjį _initrd_:

**find . | cpio -o -H newc | gzip -9 > /tmp/LiveUSB/initrd**

9\. Panaikiname savo darbo pėdsakus:

**umount /tmp/iso**

**umount /tmp/LiveUSB**

**rm -r -f /tmp/initrd**

**rm /tmp/iso**

**rm /tmp/LiveUSB  
**

Dabar galima pabandyti iš naujo paleisti kompiuterį iš savo atmintuko. Tam gali tekti pakeisti BIOS nuostatas. Neišjungiant kompiuterio, LiveUSB galima išbandyti su **qemu** programa. Šiuo atveju reiktų ištraukti ir vėl įkišti USB atmintinę, administratoriaus teisėmis įvykdyti **qemu /dev/sdb**.

Beje, toks patobulintas initrd pirmiausia bandys pasileisti kaip LiveUSB, o jei nepavyks – kaip LiveCD, todėl šį initrd galima nukopijuoti vietoj senojo į ISO atvaizdį (pasinaudojus ISOmaster programa), po to .iso [paversti hibrininiu]({{< ref "/pamokos/diegimas/2010-09-12_livecd-iso-atvaizdžio-pavertimas-hibridiniu" >}}). Toks patobulintas ISO atvaizdis tinkamas naudoti tiek rašymui į USB atmintinę su ImageWriter ar dd komanda, tiek rašymui į CD/DVD.

Scenarijus išbandytas openSUSE 11.3 sistemoje su Lietuku 11.3.4.

Informacijos šaltiniai:

[http://lizards.opensuse.org/2008/06/20/how-to-makeopensuse-110-gm-version-live-usb/](http://lizards.opensuse.org/2008/06/20/how-to-makeopensuse-110-gm-version-live-usb/)

[http://lizards.opensuse.org/2008/05/31/making-opensuse-110-liveusb-the-easiest-and-fastest-way/](http://lizards.opensuse.org/2008/05/31/making-opensuse-110-liveusb-the-easiest-and-fastest-way/)

