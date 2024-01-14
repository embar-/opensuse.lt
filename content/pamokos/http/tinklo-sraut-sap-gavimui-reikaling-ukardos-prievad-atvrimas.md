---
title: "Tinklo srautų (SAP) gavimui reikalingų užkardos prievadų atvėrimas"
description: ""
tags: [  ]
date: "2010-09-18"
lastmod: "2017-06-29"
---
Kai kuriuose vietiniuose tinkluose yra transliuojamos televizijos programos. Jas savaime aptinka VLC programa. Tačiau pirma reikia atverti tam tikrus TCP ir UDP prievadus užkardoje:

*   einame YaST > (Saugumas ir naudotojai) > Užkarda;
*   pasirenkame kortelę „Leidžiamos paslaugos“;
*   spaudžiame apatiniame dešiniame kampe mygtuką „Išsamiau“;
*   laukelyje „TCP prievadai“ įrašome savo skaičių (tai prievadas, kuriuo skelbiamos TV transliacijos);
*   laukelyje „UDP prievadai“ įrašome **1234** (tai prievadas, kuriuo gaunamos TV transliacijos);
*   įrašome konfigūraciją.

![](/images/stories/ukardos%20atvrimas%20sap%20srautams.jpg)

Jei jums kuris nors prievadas netinka, galite pabandyti jį rasti mėgindami naudoti vis siauresnį prievadų intervalą (pvz,. pirma 5000:10000, po to 5000:7000 ir t. t.)

Norėdami žiūrėti vietinio tinklo televiziją su VLC 1.1.5, einame Rodinys > Grojaraštis > Vietinis tinklas > Tinklo srautai (SAP).
