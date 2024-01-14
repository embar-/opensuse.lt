---
title: "Jei neveikia Broadcom belaidis (Wi-Fi)"
description: "Neveikia bevielis wi-fi internetas blogas firmware"
tags: [  ]
date: "2009-12-02"
lastmod: "2017-06-29"
---
Jei įsidiegėte openSUSE į nešiojamąjį kompiuterį, kuriame yra belaidis ryšys, tačiau openSUSE kažkodėl jo negaudo, nenusiminkite. Parašysiu kaip labai paprastai įdiegti Broadcom programinę aparatinę įrangą (angl. firmware), kurios ir tetrūksta.

Pas mane kraunantis kompiuteriui buvo toks pranešimas (peržiūrėti savo kompiuterio klaidos pranešimus galite eidami YaST > Sistemos žurnalas (angl. System Log), pasirenkame bylą /var/log/warn):

**Nov 30 20:35:37 dv6315ea kernel: \[ 71.543837\] b43-phy0 ERROR: Firmware file "b43/ucode5.fw" not found  
Nov 30 20:35:37 dv6315ea kernel: \[ 71.543889\] b43-phy0 ERROR: Firmware file "b43-open/ucode5.fw" not found  
Nov 30 20:35:37 dv6315ea kernel: \[ 71.543925\] b43-phy0 ERROR: You must go to** [**http://wireless.kernel.org/en/users/Drivers/b43#devicefirmware**](http://wireless.kernel.org/en/users/Drivers/b43#devicefirmware) **and download the correct firmware for this driver version. Please carefully read all instructions on this website.**

Taigi matome, kad ne veltui openSUSE 11.2 automatiškai į kompiuterį įdiegė **b43-fwcutter** paketą :) Bet gaila, kad automatiškai nepaleido reikiamos programos... Todėl reikia prisijungti prie interneto ir komandinėje eilutėje įvykdyti:

**sudo /usr/sbin/install\_bcm43xx\_firmware**

  
Jei norite tuoj pat naudotis belaidžiu ryšiu, perkraukite tinklo tarnybą:

**sudo /etc/init.d/network restart**

**Papildymas**:

Kai kurie naudotojai skundžiasi, kad perėjus iš openSUSE 11.2 į 11.3, nebepadeda aukščiau minėtas metodas, t.y. nors kompiuteris mato tinklus, tačiau negali prie jų prisijungti.

Tuomet, jei nepavyko, išbandykite tvarkykles, kurias nesenai pradėjo kurti [Broadcom](http://www.broadcom.com/docs/linux_sta/README.txt) specialiai Linux sistemoms. Tam iš _PackMan_ saugyklos įsidiekite paketus: broadcom-wl ir broadcom-wl-kmp-desktop. Tik pirma reikia reiktų uždrausti ankstesnius modulius:

**su  
**#(įveskite slaptažodį)**  
echo "blacklist b43" >> /etc/modprobe.d/blacklist.conf  
echo "blacklist ssb" >> /etc/modprobe.d/blacklist.conf**

Iš naujo paleiskite kompiuterį.

Mano kompiuteryje po to, kai įdiegiau **wl** modulį, belaidžio ryšio plokštę kažkodėl matė kaip eth1, o ne wlan0. Tad teko WICD programoje (kurią naudoju vietoj NetworkManager) rankiniu būdu pakeisti atitinkamą nuostatą. Tiesa, dar reikėjo pataisyti YaST tinklo nuostatas, jose wlan plokštės moduliu nurodant wl.
