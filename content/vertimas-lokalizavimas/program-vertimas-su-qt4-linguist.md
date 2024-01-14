---
title: "Programų vertimas su „Qt4 Linguist“"
description: ""
tags: [  ]
date: "2011-08-18"
lastmod: "2017-07-31"
---
„Qt4 Linguist“ yra vienas iš kompiuterinių programų lokalizavimo įrankių.

Tarkime turime kokią nors į lietuvių kalbą neišverstą programą, tarkim _qx11grab_.  
  
Eikime _YaST > (Programinė įranga) > Programinės įrangos tvarkytuvė_.  
Susiraskime mūsų neišverstąją programą.  
Rinkmenų kortelėje peržiūrėkime, kokios rinkmenos į ją įeina.  
Matome, kad tarp jų yra ir su **\*.qm** prievardžiu. Vadinasi, programa jau išversta į dvi kalbas, viena iš jų – vokiečių.  
Tačiau \*.qm tėra sukompiliuotas vertimas, šitų rinkmenų nebegalime redaguoti.  
Vertimui būtent šiuo atveju skirtos yra **\*.ts** rinkmenos.  
Jas būtų galima redaguoti su bet kokia tekstų rengykle,  
tačiau gerokai patogiau su **Qt4 Linguist** programa, kurią rasite **libqt4-devel** pakete.  
Su šia programa verčiamos kai kurios _Qt_ sąsajos programos, pvz., _GoldenDict žodynas, VirtualBox, Skype prokalbių programa_.  
  
Minėtame _libqt4-devel_ pakete yra ir **lconvert** programėlė, leidžianti konvertuoti iš sukompiliuotųjų _\*.qm_ į redaguotinas _\*.ts_ vertimo rinkmenas. Tačiau būtų sugeneruojamos tik tos eilutės, kurios jau išverstos. Jei neturime _\*.ts_ rinkmenos, bet turime _\*.qm_, įvykdykime:

lconvert -if qm /kelias/iki/sukompiliuoto/vertimo\_aa.qm -of ts -o vertimas\_bb.ts

Paleiskime _„Qt4 Linguist“_ vertimo įrankį. Jame atverkime _\*.ts_ rinkmeną.  
Tačiau atminkite, kad ši _\*.ts_ rinkmena gali būti jau pasenusi ir nebetiks naujesnėms verčiamos programos versijoms.  
Jei yra galimybė, interneto atsisiųskite pačią naujausią vertimui skirtą _\*.ts_ rinkmeną.  
Pažiūrėkite, gal kas nors jau buvo vertęs programą, bet vėliau apleido vertimą – tuomet tęskite ankstesnio žmogaus pradėtą darbą.  
Jei dar nenurodyta vertimo kalba, patvirtinkime, kad verčiame į lietuvių.  
  
Po to tiesiog verskime.  
Svarbu versti ne pažodžiui, bet pagal prasmę.  
_„Source text“_ – tai neišverstas užrašas, _„Lithuanian translation“_ – mūsų vertimas.  
Matome, kad vertimo įrašai suskirstyti grupėmis pagal temas.  
Verčiant eilutę, mėlynas klaustukas, reiškiantis neišverstą tekstą,  
tampa geltonu klaustuku, kuri žymi neaiškų vertimą.  
Kartais pasirodantis raudonas šauktukas žymi sintaksės neatitikimą tarp  
pradinio teksto ir išversto teksto.  
Ypač svarbu, kad išverstoje eilutėje atsirastų tokie patys kintamieji,  
kurie žymimi mėlynai su procentų ženklu (pvz., _%1_).  
Žalia varnelė reiškia, kad vertimą Jūs laikote geru.  
Vertimą patvirtinsite spustelėję ženkliuką šalia tos eilutės arba spausdami _Vald+Įvesti_ (angl. _Ctrl+Enter_) klavišus.  
  
Jei būtų prieinamas programos pradinis kodas, viršutiniame dešiniame kampe kartais galėtumėme pamatyti paveikslėlį, rodantį, kaip vertimas atrodys išverstoje programoje.  
Apatiniame dešiniame kampe karts nuo karto pasirodys įvairūs informaciniai pranešimai, perspėjantys apie galimas vertimas klaidas. Apačioje viduryje pateikiami vertimo pasiūlymai iš vertimo atminties, žinoma, jeigu anksčiau jau buvo versta panaši eilutė.  
  
Šiek tiek išvertę, patikrinkime, kaip atrodys mūsų vertimas.  
Pirmiausia eikime _File > Save As_ ir įrašykime savo rinkmeną taip, kad jos vardo gale būtų **\_lt.ts**, pvz., _qx11grab\_lt.ts_.  
  
Po to turimą vertimą sukompiliuokime pasirinkdami _File > Release As_; bus sukurta rinkmena, kurios vardas baigiasi **\_lt.qm**. Šią rinkmeną reikia nukopijuoti į reikiamą vietą administratoriaus teisėmis.  
Reikiamą aplanką susižinosime paketų tvarkytuvėje pagal jau esamų _\*.qm_ vertimo rinkmenų kelią.  
  
_KDE4_ darbalaukio aplinkoje einame per programų meniu _Sistema > Rinkmenų tvarkytuvė > Rinkmenų tvarkytuvė – super naudotojo veiksena_ ir atveriame _Dolphin_ programos langą administratoriaus teisėmis.  
Jei naudojate _GNOME_ darbalaukio aplinką, analogišką programą administratoriaus teisėmis paleisite įvykdę:

xdg-su -c nautilus

Nukopijuokime mūsų ką tik sukurtą _\*\_lt.qm_ rinkmeną į reikiamą aplanką.  
Iš naujo paleiskime verstąją programą ir pažiūrėkime, kas pasikeitė jos grafinėje sąsajoje.  
  
Jei turime skirtingų versijų vertimus, juos galime suvienodinti su **lupdate**.  
Arba galite susikurti žodynėlį (angl. _phrase book_) su **lconvert**:

lconvert /kelias/iki/vertimo\_ts\_arba\_qm -of qph -o žodynas\_qph.ts

Galiausiai savo vertimą nusiųskite programos kūrėjams, kurie mielai įtrauks jūsų darbą, o mes galėsime džiaugtis dar viena išversta naujai išversta programa arba papildytu, ištaisytu vertimu.

![](/images/stories/ts.png)

![](/images/stories/linguist.png)

![](/images/stories/kopijuoti%20qm.png)
