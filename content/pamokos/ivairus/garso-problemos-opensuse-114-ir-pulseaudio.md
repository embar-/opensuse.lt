---
title: "Garso problemos: openSUSE 11.4 ir PulseAudio"
description: ""
tags: [  ]
date: "2011-07-29"
lastmod: "2017-09-17"
---
Numatytuoju atveju su openSUSE 11.4 įdiegiama PulseAudio garso sistema, kuri kai kuriuose kompiuteriuose kelia problemų, pvz., tik kartais veikia garsas darbalaukio aplinkoje, nėra garso interneto naršyklėje.

Galbūt kai kam padeda savo naudotojo įtraukimas į _audio, pulse, pulse-access_ grupes  
(einant _YaST > (Saugumas ir naudotojai) > Naudotojų ir grupių tvarkymas_ ,  
pažymėjus savo naudotoją, nuspaudus \[Keisti\] ir kortelėje „Išsamiau“ pažymėjus norimas grupes).

Norėdami išjungti PulseAudio, administratoriaus teisėmis įvykdykite:

**sed 's/PULSEAUDIO\_ENABLE="yes"/PULSEAUDIO\_ENABLE="no"/' -i /etc/sysconfig/sound**

Arba tą patį atliksite eidami _YaST > (Sistema) > /etc/sysconfig redaktorius_, _Hardware > Soundcard > PulseAudio_ ir **PULSEAUDIO\_ENABLE** kintamajam suteikę reikšmę **no**.

Arba, eikite _YaST > (Įrenginiai) > Garsas_, dešiniame kampe spauskite \[Kita\]. Paradoksas, tačiau tuomet šį parametrą per YaST galima keisti tik tuo atveju, jei įdiegtas pulseaudio paketas. Viename kompiuteryje garsą pavyko sutvarkyti štai taip: įdiegiant ištrintą pulesaudio paketą; išjungiant PulseAudio; ištrinant pulseaudio paketą ir šį paketą užrakinant. Galiausiai kaip naudojama garso sistema lieka ALSA.

Beje spręsdami, ar yra garsas, būtinai įsitikinkite, ar pagarsinti garso kanalai per _YaST > (Įrenginiai) > Garsas_, dešiniame kampe paspaudus \[Kita\], pasirinkus „Garsumas“.
