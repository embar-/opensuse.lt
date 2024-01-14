---
title: "openSUSE 11.4 + Omni Connect"
description: ""
tags: [  ]
date: "2011-08-09"
lastmod: "2017-06-30"
---
Linux sistemoje naudotis „Omni Connect“ yra paprasta tinklo valdymui naudojant NetworkManager,  
o ne ifup metodą (šią parinktį galima pakeisti per YaST - (Tinklo įrenginiai) - Tinklo nuostatos).  
Į USB lizdą įkiškite „Omni Connect“ įrenginuką.  
Jei administratoriaus teisėmis terminale įvykdytumėte komandą lsusb, pamatytumėte atsiradus modemą,  
Bus 001 Device 003: ID 12d1:1003 Huawei Technologies Co., Ltd. E220 HSDPA Modem / E230/E270 HSDPA/HSUPA Modem.  
Paprastas naudotojas NetworkManager valdo su knetworkmanager (KDE) arba nm-applet (GNOME) grafinėmis programomis,  
kurių ženkliukai paprastai būna ekrano kampe, sistemos dėkle.  
Kadangi pirmą kartą naudojant „Omni Connect“ reikia nurodyti paslaugų tiekėją,  
nuspauskite minėtą interneto valdymo ženkliuką ir įeikite į programos konfigūravimo  
dialogą, pvz., spausdami „Keisti ryšius“.  
KDE4 aplinkoje tą patį dialogą atversite eidami  
Sistemos nustatymai - (Tinklas ir prisijungimai) - Tinklo nustatymai - Tinklo ryšiai.  
Rinkitės Plačiajuostis mobilus - \[Pridėti\] - Installed GSM device - Lithuania - Omnitel (contract) - Default - \[Baigti\].  
Po to tame pačiame dialoge pažymėję sukurtą konfigūraciją ir nuspaudę \[Keisti\], galite nurodyti,  
kad ryšys būtų automatiškai aktyvuojamas kai tik įmanoma.  
  

  
Jei viso to padaryti nepavyksta, patikrinkite ar įdiegti šie svarbūs paketai:  
mobile-broadband-provider-info  
usb\_modeswitch  
usb\_modeswitch-data  
ModemManager

Panašiu būdu turėtų būti galima prisijungti ir su šiuo metu „Bitėje“ platinamu „Vodaphone“ (Huawei K3765) modemu ir

su „Tele2“ platinamu „Huawei E1752“ modemu; bent jau juos palaiko _usb-modeswitch_ projektas.

{{< youtube oSUe7EjzIec >}}
