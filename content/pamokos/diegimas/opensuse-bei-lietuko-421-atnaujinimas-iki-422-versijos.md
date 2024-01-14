---
title: "openSUSE (bei Lietuko) 42.* arba 15.* atnaujinimas iki 15.3 versijos"
description: ""
tags: [  ]
date: "2016-11-16"
lastmod: "2021-12-23"
---
Jei jau esate įsidiegę _openSUSE Leap 42.1, 42.2, 42.3 ar 15.1, 15.2_ (ar atitinkamos _Lietuką_), tuomet galite tiesiog sklandžiai atsinaujinti iki 15.3 versijos, užuot iš naujo diegę _openSUSE Leap 15.3_ sistemą.

*   Pasidarykite bent svarbiausių duomenų ir konfigūracijų atsargines kopijas.
*   [Parsisiųskite openSUSE Leap](https://software.opensuse.org/distributions/leap?locale=lt) ISO atvaizdį. Rekomenduojame rinktis „DVD atvaizdžio“ variantą, tinkantį rašymui į DVD ir į atmintuką.
*   ISO atvaizdį [įrašykite į DVD](https://lt.wikibooks.org/wiki/Linux_%C5%BEaliems:_openSUSE/ISO_atvaizd%C5%BEio_%C4%AFra%C5%A1ymas#Ra.C5.A1ymas_.C4.AF_CD.2FDVD_optin.C4.99_laikmen.C4.85) ar [atmintuką](https://lt.wikibooks.org/wiki/Linux_%C5%BEaliems:_openSUSE/ISO_atvaizd%C5%BEio_%C4%AFra%C5%A1ymas#Ra.C5.A1ymas_.C4.AF_USB_laikmen.C4.85). Palikite sukurtą diegimo laikmeną kompiuteryje ir išjunkite kompiuterį.
*   Iš naujo paleiskite kompiuterį. Jei kompiuteris pasileidžia ne iš diegimo laikmenos, tuomet spauskite Esc, F2, F10, F12 ar kitą klavišą, kad galėtumėte pakeisti BIOS nuostatose laikmeną, kurią sistema nori paleisti (angl. _boot_)
*   Iš pasirodžiusio diegimo laikmenos meniu rinkitės „Upgrade“ („Atnaujinti“), bet ne „Install“ („Įdiegti“).

(žemiau paveikslai iš atnaujinimo nuo openSUSE Leap 42.1 iki 42.2, tačiau eiga tokia pati ir naujesnėse 42.\* ir 15.\* versijose)

![openSUSE Leap 42.3 DVD meniu](/images/stories/openSUSE_423_DVD_meniu_lt.png "openSUSE Leap 42.3 DVD meniu")

*   Pasirinkite norimą kalbą (pvz., lietuvių) bei klaviatūros išdėstymą.  
    ![](/images/stories/opensuse_422_kalba_diegiant.png "Kalba ir klaviatūra")
*   Iš pasiūlymų pasirinkite senąją openSUSE sistemą, kurią norite atnaujinti (jei buvo kelios). Jei dėl kokių nors priežasčių nematote senų sistemų, pažymėkite varnelę ties „Rodyti visus skaidinius“ ir pasirinkite skaidinį, kuriame yra senoji openSUSE sistema.  
    [![](/images/stories/lietuko_atnaujinimas_skaidinys.png "Skaidinio pasirinkimas")](/images/stories/lietuko_atnaujinimas_skaidinys.png)
*   Pasirinkite, kurias senąsias saugyklas norite išlaikyti (dukart spragtelėdami arba ją pažymėję ir nuspaudę „Keisti būseną“). Pažymėję seną saugyklą ir nuspaudę „Keisti“, galėsite pakeisti jos URL adresą: paprastai užtenka pakeisti paskutinius skaitmenis į 15.3 (t.y. paskutinis pakatalogis paprastai būna „openSUSE\_Leap\_15.3“). Jei naudojote „Lietuką“ ir norite kad „Lietuko“ paketai būtų taip pat atnaujinti, tuomet nepamirškite atitinkamai pakeisti bent jau abiejų „Lietuko“ saugyklų ir „PackMan“ saugyklos URL adresus bei įjungti tas saugyklas (nes „Lietuko“ šablonai reikalauja paketų iš įvairių nestandartinių saugyklų); antraip sistema gali pasiūlyti išmesti visus „Lietuko“ paketus arba diegimo apžvalgoje paprašys spręsti paketų konfliktus.  
    [![](/images/stories/lietuko_atnaujinimas_421-422_keisti_saugykla.png "Senos saugyklos")](/images/stories/lietuko_atnaujinimas_421-422_keisti_saugykla.png)
*   Patvirtinkite naujai pridedamas standartines „openSUSE Leap“ saugyklas.
*   Apžvalgoje prieš atnaujinimą („Diegimo nuostatos“ dialoge) peržiūrėkite atnaujinimo parinktis. Jei kartais ties „Paketais“ matote raudoną užrašą „Nepavyksta išspręsti visų konfliktų“ (konfliktų neturėtų būti, jei visi šablonams reikalingi paketai yra pasirinktų naudoti saugyklų), tuomet nuspauskite nuorodą „Reikia spręsti jums“ ir pasirinkti iš siūlomų sprendimo variantų (paprastai jūs greičiausiai norėsite sutikti su saugyklų pakeitimu ir išvengti paketų nesuderinamumo). Net jeigu viskas tvarkoje, patariama nuspausti „Paketai“ ir tuomet kortelę „Diegimo santrauka“, kurioje matysite, kurie būtent paketai bus atnaujinti, kurie naujai įdiegiami, o kurie pašalinami. Paprastai pašalinami tie paketai, kurių nėra pasirinktose saugyklose.  
    [![](/images/stories/lietuko_atnaujinimas_421-422_santrauka.png "Santrauka")](/images/stories/lietuko_atnaujinimas_421-422_santrauka.png)
*   Patvirtinkite atnaujinimą.
