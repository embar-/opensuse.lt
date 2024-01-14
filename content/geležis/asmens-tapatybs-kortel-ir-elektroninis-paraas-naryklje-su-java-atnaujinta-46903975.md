---
title: "Asmens tapatybės kortelė ir elektroninis parašas: naršyklėje su JAVA (atnaujinta)"
description: ""
tags: [ "interneto naršyklė" ]
date: "2017-06-17"
lastmod: "2018-12-16"
---
Net jei kartą susitvarkėte Linux sistemą pagal anksčiau pateiktas [asmens tapatybės kortelės naudojimo elektroniniam parašui instrukcijas](index.php/pamokos/164 "Asmens tapatybės kortelė ir elektroninis parašas"), to gali nebepakakti tvarkant reikalus interneto naršykle, kadangi pagrindinės naršyklės nesenai nustojo palaikyti NPAPI papildinius, įskaitant JAVA: [Google Chrome](https://www.java.com/en/download/faq/chrome.xml) – nuo 45 versijos (2015 m. rugsėjo), [Firefox](https://support.mozilla.org/lt/kb/npapi-plugins) [nebepalaiko](https://www.java.com/en/download/help/firefox_java.xml) nuo 52 versijos (2017 m. kovo). Elektroninį parašą per NPAPI tipo JAVA papildinį vis dar naudoja kai kurie bankai.

Tiesa, NPAPI vis dar palaikoma [Firefox 52 ESR](https://www.mozilla.org/en-US/firefox/organizations/faq/) (ilgesnio palaikymo) atmainoje, kuri palaikysima iki 2018 metų vidurio. Nuo 2017 m. kovo _openSUSE Leap_ versijose ir _openSUSE Tumbleweed_ atmainoje numatytuoju atveju gaunate būtent _Firefox 52 ESR_ atmainą. _Firefox 52 ESR_ versijoje adreso laukelyje įvedę _about:config_ , galite matyti, kad konfigūracijoje _plugin.load\_flash\_only_ kintamojo reikšmė numatytuoju atveju yra _false_; tuo tarpu įprastoje _Firefox 52_ versijoje šio kintamojo reikšmė buvo _true_; nuo Firefox 53 versijos nelieka galimybės įjungti NPAPI papildinių keičiant kintamųjų reikšmes. Būtent tik _Firefox 52 ESR_ versiją gausite su _openSUSE Leap 42.2_ atnaujinimais iki pat _openSUSE Leap 42.2_ gyvavimo pabaigos; tuo tarpu būsima _openSUSE Leap 42.3_ versija iš pradžių taip pat teiks _Firefox 52 ESR_, bet vėliau (vis dar neaišku kada tiksliai: gal nuo 2018 m. vidurio, o gal ir anksčiau) ją pakeis naujesnė Firefox versija, nebesuteikianti jokių galimybių naudoti NPAPI papildinius; _openSUSE Tumbleweed_ šiai dienai tebesiūlo _Firefox 52 ESR_ tik laikinai, kol neišspręstos kai kurios naujesnių versijų naudojimo problemos (pvz., [boo#1022830](https://bugzilla.opensuse.org/show_bug.cgi?id=1022830)).

Nuo 2017 metų kovo prisijungti prie SODROS ir kitų valstybinių įstaigų svetainių galėsite tik įsidiegę **signa-browser-ext** RPM paketą iš [SignaBrowserExt\_Linux.zip](https://www.mitsoft.lt/sites/mitsoft/files/SignaBrowserExt_Linux.zip) archyvo. Šis priedas leis prisijungti įvairiose naršyklėse (įskaitant _Firefox, Google Chrome, Chromium, Opera, Vivaldi_), nepriklausomai nuo to, ar naršyklė palaiko minėtus NPAPI papildinius. Anksčiau rašėme, kad į _Linux_ sistemą diegiant _signa-browser-ext_ gali kilti bėdų bėdų su JAVA priklausomybėmis, tačiau šių bėdų nebeliko nuo _signa-browser-ext 1.0-r7709-20170608_ versijos. Išsamesni paaiškinimai pateikti adresu [http://www.sodra.lt/lt/kaip-naudotis-elektroniniu-parasu](http://www.sodra.lt/lt/kaip-naudotis-elektroniniu-parasu) .

Jei jau spėjote įsidiegti _signa-browser-ext 1.0-r7707-20170604_ ar senesnę versiją, skaitykite toliau.

Anksčiau rašėme, kad jei naudojate 64 bitų operacinę sistemą, turite sukurti simbolinę nuorodą iš **_/usr/lib64/jvm_** į **_/usr/lib/jvm_**, nes senesnės _signa-browser-ext_ versijos tikėjosi, kad JAVA įdiegta pastarajame kataloge. Atnaujintoje _signa-browser-ext_ šios simbolinės nuorodos nebereikia, tad jei ją spėjote sukurti rankiniu būdu, rankiniu būdu ir pašalinkite:

\[ -L /usr/lib/jvm \] && sudo rm /usr/lib/jvm
