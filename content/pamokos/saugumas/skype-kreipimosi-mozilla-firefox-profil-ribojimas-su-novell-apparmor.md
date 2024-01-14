---
title: "Skype kreipimosi į Mozilla Firefox profilį ribojimas su Novell AppArmor"
description: ""
tags: [  ]
date: "2010-10-23"
lastmod: "2017-06-29"
draft: true
---
[openSUSE vikyje](http://en.opensuse.org/SDB:Skype#Privacy_and_security) paminėta, kad Skype mėgina kreiptis į Mozilla Firefox profilį galbūt dėl įgaliotojo serverio nuostatų (proxy), tačiau gali rinkti ir kitą informaciją. Išeitis: su Novell AppArmor galime nurodyti, prie kokių rinkmenų Skype turi teisę prieiti:

1\. Einame YaST > (Novell AppArmor) > Profilio pridėjimo vediklis

[![](/images/stories/apparmor-os113-1.png)](http://en.opensuse.org/SDB:Skype#Privacy_and_security)

2\. Nurodome profiliuotinos programos pilną kelią – /usr/bin/skype. Spaudžiame mygtuką \[Sukurti\].

![](/images/stories/apparmor-os113-2.png)

3\. Aktyvuojame profilį nuspausdami mygtuką \[Naudoti profilį\].

![](/images/stories/apparmor-os113-3.png)

4\. Paleidžiame „Skype“ programą ir atliekame įvairius veiksmus. Novell AppArmor stebės, į ką kreipiasi ši programa. Kai išbandysite dažniausiai savo programos naudojamas funkcijas, spauskite \[Scan system log for AppArmor events\].

![](/images/stories/apparmor-os113-4.png)

5\. Dabar peržiūrėkite, į kurias rinkmenas buvo kreipiamasi ir leiskite Skype programai prie jų prieiti ateityje (\[Leisti\]). Nuspaudus \[Atmesti\] konkretų priėjimą, Skype ateityje nematys tų rinkmenų.

![](/images/stories/apparmor-os113-5.png)

6\. Patvirtiname savo pasirinkimą mygtuku \[Gerai\] ir užveriame modulį.

![](/images/stories/apparmor-os113-6.png)

7\. Einame YaST > (Novell AppArmor) > Keisti profilį. Pasirenkame /usr/bin/skype.

![](/images/stories/apparmor-os113-9.png)

9\. Pašaliname visas eilutes, kuriose minima „mozilla“. Paveiksliuke matome 7 tokias eilutes. Siūlau pradėti trinti nuo apatinės – tuomet automatiškai bus pažymėta virš ištrintosios buvusi eilutė. Skype galės prieiti tik prie tų išteklių, kurie yra iš anksto nurodyti. Atliktus AppArmor pakeitimus patvirtiname mygtuku \[Atlikta\].

![](/images/stories/apparmor-os113-10.png)

10\. Jei norėsite atnaujinti AppArmor profilį įtraukdami naujus išteklius, pasinaudokite YaST > (Novell AppArmor) > Profilio atnaujinimo vedikliu.
