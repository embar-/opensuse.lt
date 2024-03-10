---
title: "Atsarginių kopijų kūrimas su „fsarchiver“"
description: ""
tags: [  ]
date: "2019-07-02"
lastmod: "2019-07-03"
author:  "embar"
---
Nuo netikėtumų niekas neapsaugotas, tad patariama reguliariai darytis svarbių duomenų atsargines kopijas, o prieš atnaujinant operacinę sistemą – visos esamos operacinės sistemos atsarginę kopiją. O tokiems darbams tinkama programa gali būti „[fsarchiver](https://software.opensuse.org/package/fsarchiver?locale=lt)“, kurią rasite pagrindinėse openSUSE paketų saugyklose. Jos pagrindinės savybės (privalumai):

*   palaiko tiek paprastus rinkmenų atributus (leidimus, naudotojus), tiek sudėtingesnius (pvz., SELinux);
*   palaiko Linux rinkmenų sistemų atributus (pvz., uuid, blokų dydžius);
*   palaiko visas pagrindines Linux rinkmenų sistemas (extfs, xfs, btrfs, reiserfs ir kt.);
*   nuo 0.8 versijos palaiko FAT rinkmenų sistemos archyvavimą (gali prireikti darant EFI skaidinio atsarginę kopiją);
*   į vieną archyvą galima patalpinti ne tik vienas, bet ir kelias rinkmenų sistemas iš karto;
*   ...arba galima archyvuoti atskirus katalogus (vietoj rinkmenų sistemų);
*   kontrolinės sumos sukuriamos tiek antraštėms, tiek duomenų blokus, tiek paskirus failus;
*   jei kartais būtų sugadinta archyvo dalis, „fsarchiver“ galėtų atkurti likusius nepažeistus duomenis;
*   palaiko _LZO, GZIP, BZIP2, LZMA/XZ_ [glaudinimą](http://www.fsarchiver.org/compression/), nuo 0.8.3 versijos – _L4_, o nuo 0.8.4 versijos (pagrindinėse openSUSE saugyklose nuo openSUSE Leap 15.0 versijos) – ir _ZSTD_;
*   glaudinant galima naudoti ne vieną procesorių, o kelis procesorius iš karto – galite pilnai išnaudoti kompiuterio pajėgumus ir atlikti darbą greičiau;
*   leidžia kurti archyvą padalintą į kelias rinkmenas/tomus (t.y. kurti daugiatomį archyvą);
*   archyvą galima užšifruoti slaptažodžiu.

Trūkumai:

*   Jei operacinės sistemos paleidyklė įdiegiama į pirmą disko ar skaidinio sektorių, paleidyklė nėra suarchyvuojama. Tai gali būti svarbu tik tuo atveju, jei operacinės sistemos paleidimui naudojamas senasis būdas per BIOS (angliškai dar vadinamas „Legacy boot“), kai disko skaidinių lentelė yra MSDOS tipo (paprastai galioja senesniems kompiuteriams); tuomet atkūrus operacinę sistemą ji nepasileistų – prieš tai tektų iš naujo įdiegti paleidyklę; arba atskirai archyvuoti paleidimo sektorius kitais įrankiais. Tai visai nėra svarbu naudojant diskus su GPT tipo skaidinių lentelėmis, kuomet paleidimui naudojama EFI technologija (prieinama kompiuteriuose, pagamintuose nuo maždaug 2011–2012 m.).
*   Skaidinys, kurio atsarginė kopija daroma, turėtų būti nenaudojamas/atjungtas arba būti tik skaitomas (angl. _read-only_); jei tame skaidinyje įdiegta operacinė sistema, „fsarchiver“ reikia paleisti iš kitos operacinės sistemos, pvz., LiveCD/LiveUSB laikmenos ([Lietukas](https://www.lietukas.lt/gauti.html) nuo 15.0.0 versijos jau turi „fsarchiver“);
*   BTRFS momentinės kopijos nėra archyvuojamos – „fsarchiver“ archyvuoja tik tuos BTRFS skaidinių duomenis, kurie būtų matomi prijungus skaidinį.

Naudojimas:

*   Apsispręskite, kuriuos skaidinius norite archyvuoti.  
    Jei archyvuojate operacinę sistemą, pravartu pažiūrėti jos _/etc/fstab_ turinį ir įsiminti operacinėje sistemoje naudojamų skaidinių **UUID**; neverta ieškoti skaidinio raidės ir numerio (pvz., dev/sd**b2**), „fsarchiver“ naudojimui paleistoje kitoje operacinėje sistemoje diskų raidžių eiliškumas gali būti visai kitoks, tačiau UUID būtų vienodas. Skaidinio, kuriame įdiegta operacinė sistema, prijungimo kelias yra vienas pasvirasis brūkšnys „**/**“; skaidinio, kuriame yra EFI paleidyklė, kelias būtų **/boot/efi**.
*   Su „fsarchiver“ programa dirbama komandinėje eilutėje, pvz., Konsolės, Terminalo ar pan programoje.
*   Programa veikia tik su administratoriaus (_root_ naudotojo) teisėmis. Dirbti administratoriaus teisėmis komandinėje eilutėje galėsite pradėti dirbti po to, kai įvykdysite (jūsų paprašys įvesti slaptažodį):
    
    su
    
*   Būtinai **pasitikrinkite**, koks yra jūsų norimo archyvuoti skaidinio vardas/kelias toje operacinėje sistemoje, iš kurios paleidžiate „fsarchiver“; tam įvykdykite:
    
    fsarchiver probe detailed  
    
    Jei archyvuojate operacinę sistemą, ieškokite skaidinio vardo_ /dev/sdXN_ formatu, kuris atitiktų jūsų įsimintą UUID.  
      
      
    
*   Norėdami **sukurti** vieno **skaidinio archyvą**, įvykdykite (vietoj _/dev/sdXN_ įrašykite savo skaidinį):
    
    fsarchiver -L _"Archyvo aprašymas"_ savefs _"ARCHYVO\_VARDAS.fsa"_ /dev/sdXN
    
    Čia -L parinktis leidžia pridėti išsamų skaidinio turinio aprašymą. Aprašymą rašykite tarp kabučių.  
      
    _"ARCHYVO\_VARDAS.fsa"_ gali būti pilnas kelias iki naujai sukurtinos archyvo rinkmenos, pvz., _"/run/media/root/abcd-1234/Atsarga/openSUSE\_Leap\_15.1\_2019-07-01.fsa"_. Jei archyvo kelyje/varde yra tarpų, iš abiejų pusių uždėti kabutes yra būtina. Vietoj _"ARCHYVO\_VARDAS.fsa"_ galite rašyti tik vardą be pilno kelio – tada archyvas būtų sukuriamas darbiniame kataloge.  
      
    
*   Jei norėtume suarchyvuoti kelis skaidinius į vieną archyvą:  
    
    fsarchiver -L _"Archyvo aprašymas"_ savefs _"ARCHYVO\_VARDAS.fsa"_ /dev/sdX1 /dev/sdX2
    
    Pavyzdžiui, archyvuojant kompiuterio operacinių sistemų EFI skaidinį ir openSUSE Linux operacinės sistemos skaidinį, kurie atitinkamai galėtų būti /dev/sda1 ir /dev/sda2 skaidiniuose:
    
    fsarchiver -j3 -L "openSUSE Leap 42.3 $(date -I) su paleidimo EFI skaidiniu" savefs "/mnt/atsargos/openSUSE\_Leap\_42.3\_$(date -I).fsa" /dev/sda1 /dev/sda2
    
*   Jei kompiuteryje yra daugiau nei vienas procesorius, galite paprašyti išnaudoti daugiau nei vieną procesorių su **\-j** parinktimi. Pavyzdžiui, jei kompiuteryje yra 4 procesoriai, bet archyvavimo metu ketinate ką nors kito veikti, procesorių galite paprašyti išnaudoti tris procesorius:
    
    fsarchiver -j3 -L _"Archyvo aprašymas"_ savefs ARCHYVO\_VARDAS.fsa /dev/sdXN
    
*   Jei norėtume sukurti archyvą, kurio išpakavimui būtų reikalingas slaptažodis, prirašykime „-c -“ (jei norite atskirai įrašyti slaptažodį) arba „-c SLAPTAŽODIS“ (jei norite slaptažodį iškart įrašyti į komandą) parinktį:  
    
    fsarchiver -L _"Archyvo aprašymas"_ savefs -c - _"ARCHYVO\_VARDAS.fsa"_ /dev/sdXN
    
*   Jei norėtumėte sukurti daugiatomį archyvą, nurodykite jo dydį „-s“ parinktimi; pavyzdžiui, norėdami archyvą skaidyti į 4,3 GB dydžio tomus, įvykdykite:
    
    fsarchiver savefs -s 4300 _"ARCHYVO\_VARDAS.fsa"_ /dev/sdXN
    
    Pirmas tomas sukuriamas su _.fsa_ prievardžiu, o kiti – su _.f01, .f02, .f03_, … prievardžiais. Išpakuojant daugiatomį archyvą reikėtų nurodyti tik jo pirmąjį tomą (su _.fsa_ prievardžiu).  
      
      
    
*   Norėdami **peržiūrėti informaciją apie sukurtą archyvą**, įvykdykite:  
    
    fsarchiver archinfo _"ARCHYVO\_VARDAS.fsa"  
    _
    
      
    
*   Norėdami **atkurti skaidinį iš archyvo**, kuriame suarchyvuotas vienas skaidinys arba norite išpakuoti tik pirmąjį archyve esantį skaidinį, įvykdykite:  
    
    fsarchiver restfs _"ARCHYVO\_VARDAS.fsa"_ id=0,dest=/dev/sdXN
    
*   Norėdami atkurti du skaidinius iš archyvo, įvykdykite (skaidiniai numeruojami pradedant nuo nulio):  
    
    fsarchiver restfs _"ARCHYVO\_VARDAS.fsa"_ id=0,dest=/dev/sdX1 id=1,dest=/dev/sdX2
    
    Konkretesnis pavyzdys, išpakuojant du skaidinius ir panaudojant trijų procesorių pajėgumus:  
    
    fsarchiver -j3 restfs "/mnt/atsargos/openSUSE\_Leap\_42.3.fsa" id=0,dest=/dev/sda1 id=1,dest=/dev/sda2 
    

*   Daugiau informacijos apie „[fsarchiver](http://www.fsarchiver.org)“ ir jos naudojimo galimybes su pavyzdžiais rasite [http://www.fsarchiver.org/quickstart/](http://www.fsarchiver.org/quickstart/) puslapyje, taip pat įvykdę komandą:  
    
    man fsarchiver
