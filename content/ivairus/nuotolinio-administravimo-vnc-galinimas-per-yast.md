---
title: "Nuotolinio administravimo (VNC) įgalinimas per YaST"
description: ""
tags: [  ]
date: "2011-11-26"
lastmod: "2017-08-07"
---
Diegiant openSUSE 12.1 numatytuoju atveju įdiegiamas ir YaST modulis, skirtas nuotolinio administravimo (VNC) įgalinimui.

Norėdami paleisti šį modulį, eikite _YaST > (Tinklo paslaugos) > Nuotolinis administravimas_. Čia įgalinę nuotolinio administravimo funkciją ir nurodę atverti užkardą, galėsite administruoti šį kompiuterį iš kito nutolusio kompiuterio, nepriklausomai nuo jame esančios operacinės sistemos.

Tam galite naudoti VNC klientą, pvz., krdc (programoje nurodant jungtis adresu _kompiterio\_IP\_arba\_vardas__:5901_).

Arba galite naudoti _Java_ palaikančią saityno naršyklę (jungtis prie _http://kompiterio\_IP\_arba\_vardas:5801_). Norint prisijungti per interneto naršyklę iš openSUSE 12.1 sistemos, turi būti įdiegtas _icedtea-web_ paketas (įdiegus paketą būtina iš naujo paleisti saityno naršyklę). Beje, pastaroji nuotolinio administravimo forma ne tokia saugi kaip SSH.
