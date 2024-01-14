---
title: "Kompiuteris pabunda pats"
description: ""
tags: [  ]
date: "2011-01-08"
lastmod: "2017-06-29"
---
Jei norite kompiuterį laikinai sustabdyti į RAM arba į diską taip, kad kompiuteris pabustų pats tam tikru metu, pasinaudokite  
**rtcwake \[-m mem|disk|no|...\] { \[-s _po\_sekundžių_\] | \[-t _laikas\_sekundėmis\_po\_1970-01-01_\] }** komanda.

Pavyzdžiui, jei kompiuterį norite trims minutėms (180 s) sustabdyti į diską _(**\-m disk**)_, įvykdykite:

**rtcwake -m disk -s 180**

Jei norite nedelsiant sustabdyti į RAM _(**\-m mem**)_,o pažadinti 2011-01-08 11:40:00, tuomet įvykdykite

**rtcwake -m mem -a -t 1294479600**

kur _\-a_ nurodo automatinį laiko juostos atpažinimą (_\-u_ būtų pasauliniam laikui, _\-l_ – vietiniam laikui), o _\-t_ nurodo laiką sekundėmis, praėjusį nuo 1970-01-01 00:00:00 pasauliniu laiku. Laiką sekundėmis nuo tos datos galima sužinoti įvykdžius **date --date="2011-01-08 11:40:00" +%s**. Arba galite rašyti tiesiog taip:

**rtcwake -m mem -a -t "\`date --date="2011-01-08 11:40:00" +%s\`"**

Galima nurodyti pabudimo laiką nepristabdant jo darbo _(**\-m no**)_. Tokiu būdu nurodytumėte, kad kompiuteris tiesiog reikiamu metu būtų įjungtas:

**rtcwake -m no -a -t 1294479600**

**Pastabos:**

Šiam veiksmui reikia administratoriaus teisių. Naudokite tik tas kompiuterio pristabdymo veiksenas, kurios be priekaištų veikia jūsų kompiuteryje. Atsargiai pasirinkite pabudimo laiką, kad, pvz., nešiojamasis kompiuteris netyčia nepabustų krepšyje. Šią funkciją įdomu būtų naudoti kartu su _crontab_, leidžiančia užduotis vykdyti nustatytu laiku.

Daugiau informacijos gausite įvykdę **man rtcwake**

Informacijos šaltinis:

[http://www.osnews.com/story/24111/Wake\_Your\_Linux\_Up\_From\_Sleep\_for\_a\_Cron\_Job](http://www.osnews.com/story/24111/Wake_Your_Linux_Up_From_Sleep_for_a_Cron_Job)
