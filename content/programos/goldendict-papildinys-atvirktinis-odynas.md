---
title: "GoldenDict papildinys: atvirkštinis žodynas"
description: ""
tags: [  ]
date: "2013-04-20"
lastmod: "2017-06-30"
---
GoldenDict 1.0 programos trūkumas, lyginant su StarDict, buvo tai, kad nebuvo galima atlikti paieškos visame žodynų tekste. Pavyzdžiui, turint tik anglų-lietuvių kalbų žodyną, StarDict leidžia jį panaudoti kaip lietuvių-anglų žodyną (prieš paieškos žodį prirašius „|“), o GoldenDict ([iki 2014 m. balandžio](https://github.com/goldendict/goldendict/commit/9ad0d5f985a054f7eba89df00e0a7dd7825b0b87)) – negalėjo. Bet GoldenDict leidžia naudoti išorines programas. Tokiu būdu gali naudoti paieškos visame tekste papildinį, parašytą Python kalba.

**P.S. Goldendict 1.5RC versijos nuo [2014 m. balandžio](https://github.com/goldendict/goldendict/commit/9ad0d5f985a054f7eba89df00e0a7dd7825b0b87) savaime palaiko paiešką visame žodynų tekste.**

Visų pirma mums reikės GoldenDict programos, palaikančios išorines programas kaip papildinius: tokią įdiegsite nuspaudę šią [„diegti tuoj pat“](http://software.opensuse.org/ymp/office:goldendict/openSUSE_Tumbleweed/goldendict.ymp?query=goldendict) nuorodą. (2011 m. pasirodžiusi stabili GoldenDict 1.0.1 versija netinka, reikia kiek patobulintos versijos)

Norėdami išbandyti, parsisiųskite [GoldenDict\_plugin\_for\_full-text-search\_in\_StarDict\_dictionaries.zip](https://dl.dropboxusercontent.com/u/23309933/GoldenDict/GoldenDict_plugin_for_full-text-search_in_StarDict_dictionaries.zip) ir išpakuokite kokiame nors aplanke, pvz., /home/\[naudotojas\]/.goldendict/

Paleiskite GoldenDict programą.

Pagrindiniame lange nuspauskite F3 klavišą.

Pasirinkite kortelę „Progamos“ ( „Progams“).

Spauskite „Pridėti“ („Add...“).

Nurodykite „html“ tipą.

Sugalvokite žodyno pavadinimą.

Kaip komandinę eilutę (ties „Command Line“ laukeliu) įveskite:

`python2 /kelias/iki/full-text-search.py "%GDWORD%" "kelias/iki/žodyno(bet be .ifo galūnės)"`

Pavyzdžiui,

`python2 /home/naudotojas/.goldendict/GoldenDict_plugin_for_full-text-search_in_StarDict_dictionaries/full-text-search.py "%GDWORD%" "/usr/share/stardict/dic/LIKIT EKZ 2008/LIKIT EKZ 2008"`

Pažymėkite langelį varnele, kad įgalintumėte papildinį (ties „Enabled“).

Išbandyti vertimą galite prieš žodį parašę statų brūkšnį, pvz. „|žodis“,

Bet jei norite visada paleisti tokią paeišką, galite komandinėje eilutėje vietoj "%GDWORD%" rašyti "|%GDWORD%" - tada „|“ simbolis visada bus automatiškai perduodamas.

Teksto paryškinimui naudojama BeautifulSoup, bet python-beautifulsoup4 paketas, skirtas Python2, nėra reikalingas - šis modulis jau yra parsisiųsto archyvo aplanke „bs4“.  
Bet galima visai nenaudoti BeautifulSoup ir rinktis full-text-search-simpler.py , o ne full-text-search.py .

Išbandyta openSUSE 12.3 Linux sistemoje su Python 2.7.3.

![](/images/stories/goldendict_paieka_tekste2.png)

![](/images/stories/goldendict_paieka_tekste1.png)
