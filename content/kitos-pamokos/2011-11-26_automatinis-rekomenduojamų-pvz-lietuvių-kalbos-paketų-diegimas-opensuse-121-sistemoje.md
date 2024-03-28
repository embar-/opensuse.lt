---
title: "Automatinis rekomenduojamų (pvz, lietuvių kalbos) paketų diegimas openSUSE 12.1 sistemoje"
description: ""
tags: [  ]
date: "2011-11-26"
lastmod: "2017-06-29"
---
Nuo openSUSE 12.1 versijos paketų tvarkytuvė nesiūlo automatiškai įdiegti rekomenduojamų paketų pagal seniau įdiegtų paketų priklausomybes. Tai reiškia, pavyzdžiui, kad:

*   jei openSUSE 12.1 diegdami pasirinkote lietuvių kalbą, tačiau diegėte iš LiveCD (o jame nėra lietuvių kalbos paketų!), tuomet įėjus į paketų tvarkytuvę nebus siūloma automatiškai įdiegti lietuvių kalbos paketų;
*   jei savarankiškai pridėjote NVIDIA ar AMD/ATI saugyklą, įėjus į paketų tvarkytuvę nebus pasiūlyta automatiškai įdiegti nuosavybinių vaizdo plokščių tvarkyklių.

**Sprendimas:**

a) eiti _YaST > (Programinė įranga) > Programinės įrangos tvarkytuvė_ (angl. _YaST > (Software) > Software management_ ),  
atsivėrusioje paketų tvarkytuvėje eiti į meniu _Savybės_ (angl. _Options_) ir﻿  
atžymėti parinktį _„Nepaisyti rekomenduojamų paketų jau įdiegtiems paketams“_ (angl. _Ignore recommended packages for already installed packages_).

b) arba terminalo programoje įvykdyti komandą:

sudo zypper inr
