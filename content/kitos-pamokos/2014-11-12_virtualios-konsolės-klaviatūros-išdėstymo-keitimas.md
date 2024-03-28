---
title: "Virtualios konsolės klaviatūros išdėstymo keitimas"
description: ""
tags: [  ]
date: "2014-11-12"
lastmod: "2017-08-07"
---
openSUSE 13.2 sistemoje virtualaus terminalo klaviatūros išdėstymas konfigūruojamas kiek kitaip nei ankstesnėse versijose.  
Nuo šiol ignoruojamas _/etc/sysconfig/keyboard_ rinkmenoje esantis _KEYTABLE_ parametras, o naudojamas **/etc/vconsole.conf** rinkmenos _KEYMAP_ parametras. Kad pakeitimai galiotų iš naujo paleistoje sistemoje, reikia įvykdyti **mkinitrd**.  
  
Pavyzdžiui, jei nuspaudę Vald(Ctrl)+Alt+F1...F6 norite naudoti lietuvišką standartinę (ĄŽERTY) klaviatūrą, administratoriaus (**root**) teisėmis redaguokite **/etc/vconsole.conf** įrašydami **KEYMAP=lt.std** arba komandinėje eilutėje tiesiog įvykdykite:

su -c "echo 'KEYMAP=lt.std' > /etc/vconsole.conf"

sudo mkinitrd

sudo reboot

Tinkamus klaviūros išdėstymus matysite įvykdę:

localectl list-keymaps
