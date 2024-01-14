---
title: "Virtualus katalogų duomenų suliejimas su `mount -t overlay`"
description: ""
tags: [  ]
date: "2015-07-06"
lastmod: "2017-09-17"
---
nuo Linux branduolio 3.18 versijos galite virtualiai sulieti dviejų katalogų turinį naudodamiesi _mount -t overlay_ komanda. Ši galimybė pravers, jei neturite teisės rašyti į reikalingą katalogą, tačiau darbui reiktų kiek pakeisto to katalogo turinio. Pateiksime pavyzdį, kaip virtualiai keisti ISO rinkmenos turinį.

Pirmiausia prijunkite ISO, pavyzdžiui, prie naujai sukurto /tmp/iso katalogo įvykdydami komandą:

mkdir /tmp/iso  
mount /kelias/iki/rinkmenos.iso /tmp/iso

Minimai i _mount -t overlay_ komandai iš viso reikia keturių katalogų:  
1) vienas „perdengiamasis“ katalogas yra tarsi pagrindas _(lowerdir_), kuriame gali būti neįmanomi pakeisti duomenys (pavyzdyje /tmp/iso) arba duomenys, kurių nenorite pakeisti visam laikui;  
2) vienas „perdengiantysis“ katalogas _(upperdir)_, kuriame yra ar bus laikomi duomenys, kurie nesutaps su pirmojo katalogo duomenimis arba papildomi nauji duomenys (pavyzdyje /tmp/perdanga); nors pavyzdyje kuriame naują katalogą, bet tai gali būti bet koks katalogas su jau esančiais jame duomeninis;  
3) vienas tuščias sistemos katalogas _(workdir)_, kuriame jūs nieko negalėsite daryti, tarkim naujai sukuriamas /tmp/tuscias;  
4) katalogas, kuriame matysite sulietus „perdengiamojo“ ir „perdengiančiojo“ katalogo duomenis (pavyzdyje tebūnie /mnt).

Tad sukurkime papildomus katalogus:

mkdir /tmp/perdanga  
mkdir /tmp/tuscias

Galiausiai administratoriaus (root) teisėmis įvykdykite mount komandą:

mount -t overlay overlay -o upperdir=/tmp/perdanga,lowerdir=/tmp/iso,workdir=/tmp/tuscias /mnt
