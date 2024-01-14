---
title: "LR asmens tapatybės kortelės PIN kodo keitimas"
description: ""
tags: [  ]
date: "2017-08-16"
lastmod: "2017-08-17"
author:  "embar"
---
Visų pirma kompiuteryje turi būti įdiegta programinė įranga, apie kurią jau rašyta straipsnelyje „[Asmens tapatybės kortelė ir elektroninis parašas]({{< ref "/pamokos/geležis/asmens-tapatybs-kortel-ir-elektroninis-paraas" >}})“. Be to, reikalinga _pkcs11-tool_ programa iš [opensc](https://software.opensuse.org/package/opensc) paketo.

Jei Lietuvos Respublikos asmens tapatybės kortelėje norite pasikeisti PIN kodą, komandinėje eilutėje (konsolės/terminalo programoje) įvykdykite:

pkcs11-tool --module /usr/lib/ccs/libccpkip11.so --change-pin

Jūsų turėtų paprašyti įvesti seną PIN kodą ir po to du kartus įvesti naują PIN kodą. Vesdami slaptažodį nematysite nieko įvedant ekrane – tačiau taip turi būti; kaskart įvedę slaptažodį spauskite įvesties klavišą (angl. _Enter_). Tokį vaizdą turėtumėte matyti ekrane, jei viskas vyko sklandžiai:

Using slot 0 with a present token (0x0)  
Please enter the current PIN:   
Please enter the new PIN:   
Please enter the new PIN again:   
PIN successfully changed

P.S. Oficialioje LR Vidaus reikalų ministerijos svetainėje <[http://www.nsc.vrm.lt/guides.htm](http://www.nsc.vrm.lt/guides.htm)\> bent kol kas informacija apie PIN kodo keitimą pateikiama tik Windows operacinei sistemai.
