---
title: "Linux įrašymas į išorinį standųjį diską, šalia Windows 7"
description: ""
tags: [  ]
date: "2010-08-03"
lastmod: "2017-08-07"
---
Pamokos autorius – Lulilo

Ši pamokėlė skirta tiems, kurie turi Windows 7 operacinę sistemą ir nutarė įsirašyti Linux į **išorinį** standųjį diską. Man buvo iškilę šiokių tokių keblumų, tad pasidalinsiu įspūdžiais bei problemėlių sprendimais.  
  
Norint įsidiegti Linux, pirmiausia reikia BIOS nustatymuose nustatyti, kad įjungiant kompiuterį užsikrautų pirmutis CD įrenginys, o antrasis užsikrautų „USB HDD“ įrenginys. Tuomet reikia išjungti kompiuterio kietąjį diską. Tai galime padaryti BIOS nustatymuose arba atsuktuvėlio pagalba(išimti arba „atjungti“). Jei to nepadarome, Linux įrašymo metu duomenis iš informacinės laikmenos(paprasčiau tariant DVD) perrašo į išorinį kietąjį diską, o GRUB palieka kompiuterio vidiniame kietajame diske. To pasekoje, Windows „nebepasileidžia“, o kompiuterio ekrane pasirodo štai toks užrašas:

Grub Loading Stage 1.5.  
  
Grub loading, please wait...  
  
Error 21

Nepergyvenkite, jei taip nutiko. Visi duomenys bei turėta informacija nepradingo. Tačiau įrašymas nepavyko, nes be GRUB, Jūsų išorinis standusis diskas su įrašyta Linux operacine sistema nepasileis kituose kompiuteriuose. Tad pabandykite dar kartelį įrašyti Linux, tik išėmęs ar išjungęs kompiuterio kietąjį diską. Windows galėsite pataisyti po pilnaverčio įrašymo. Išjungęs ar išėmęs kompiuteryje esantį „HDD“ diską, Linux nepaliksite kitos išeities, kaip tik GRUB perkelti į ten, kur pageidausite.  
  
Windows 7 taisymui prireiks Windows 7 informacinės laikmenos (DVD). Šios operacinės sistemos perrašyti nereikės. Atjungę išorinį kietąjį diską, prijunkite vidinį „HDD“ kompiuterio diską. Užsikrovus Windows 7 operacinei sistemai iš "kompaktinio" disko, nustatykite šalį bei klaviatūros kalbą, o tolesniame žingsnyje pasirinkite „Taisyti kompiuterį“, o tuomet „Taisyti norimą operacinę sistemą (Windows 7)“. Sekančiame laukelyje pasirinkite komandinę eilutę ir joje įrašykite:

Bootrec.exe /FixMbr

ir

Bootrec.exe /FixBoot

Perkraukite kompiuterį. Tik tiek.
