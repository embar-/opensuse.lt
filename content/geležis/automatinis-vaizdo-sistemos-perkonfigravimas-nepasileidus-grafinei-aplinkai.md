---
title: "Automatinis vaizdo sistemos perkonfigūravimas nepasileidus grafinei aplinkai"
description: ""
tags: [  ]
date: "2014-12-18"
lastmod: "2017-09-17"
---
Kartais vis dar tenka susidurti su problema, kad vaizdo plokštė paleidžiant sistemą nėra tinkamai atpažįstama, parenkamos netinkamos tvarkyklės ir jų konfigūracija, o dėl to grafinė aplinka nepasileidžia ir naudotojas patenka į juodą langą su žodžiu „login:“, kuriame prisijungęs privalo rašyti komandas... Linux vaizdo pateikimui ekrane dažniausiai naudoja vadinamąjį X.org serverį, kurio nulūžimą automatiškai aptikus, galima galima pabandyti iš naujo parinkti vaizdo parametrus, vėl paleisti X serverį ir grafinę darbalaukio aplinką. Tam sukūriau _check-x-failed_ programėlę ir _check-x-failed.service_ Systemd paleidimo sistemos priedą automatiniam nulūžusio X.org vaizdo serverio perkonfigūravimui ir paleidimui, kuriuos galite parsisiųsti ir įsidiegti [systemd-check-x-failed-service](http://software.opensuse.org/download.html?project=home%3Aembar-%3ALietukas&package=systemd-check-x-failed-service) paketu.

Systemd leido sukurti tarnybą, kuri kas kiek laiko (~10 sek) patikrina, ar kartais vaizdo serverio žurnaluose neatsirado įrašas apie jo nulūžimą. Tuomet ji vieną po kito išbando įvairius konfigūracijos variantus tol, kol grafinis serveris nebenulūžta: dar kartą pabando paleisti esamą konfigūracijos variantą, naudojant tuščią (automatinę) Xorg konfigūraciją, konfigūraciją sukurtą įdiegus operacinę sistemą, „Xorg -configure“ sukurtą konfigūraciją ir SAX3 konfigūraciją. Jei nė vienas variantas netiko – tik tada ši tarnyba pati save išjungia ir grįžtate į konsolės langą.

Šią funkciją rasite jau „Lietuko“ 13.2 versijose.
