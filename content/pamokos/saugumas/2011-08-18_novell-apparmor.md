---
title: "Novell AppArmor"
description: ""
tags: [  ]
date: "2011-08-18"
lastmod: "2017-06-30"
---
Tikriausiai pastebėjote, kad openSUSE YaST valdymo centre yra Novell AppArmor modulių grupė.  
Ji skirta sistemoje veikiančių programų ir procesų veiklos kontroliavimui ir tiesiog veiklos stebėjimui, tad šiek primena antivirusinių programų veiklą ir SElinux projekto tikslus.  
  
a) Pabandykime **sukurti naują Novell AppArmor profilį** ir išmėginti šios apsaugos sistemos galimybes.  
1\. Pirmiausia eikite YaST > (Novell AppArmor) > Profilio pridėjimo vediklis.  
Šis vediklis padės norimai programai sukurti naują AppArmor apsaugos profilį arba patobulinti jau esamą  
profilį leidžiant AppArmor sistemai išmokti naujo elgesio būdo su ta programa.  
Įveskite vardą programos, kuriai norite sukurti profilį, arba spauskite „Naršyti“ ir pasirinkite savo sistemos programą.

(Tarkim kaip profiliuotiną programą įrašykite _isomaster_, jei ji įdiegta.

2\. Profiliuotiną programą paleiskite kitame lange ir atlikite su ja įvairiausius veiksmus.  
Kai baigsite, spauskite „Peržiūrėti...“. Tuomet sistemos žurnaluose bus peržiūrimi AppArmor įvykiai.  
  
3\. Kiekvienam AppArmor įvykiui nurodykite, ar jam leisti įvykti ateityje, ar uždrausti. Galimi pasirinkimai skiriasi priklausomai nuo to, ar profiliuojama programa kreipiasi į vykdomąją rinkmeną ar ne.  
Jeigu tai nėra vykdomoji rinkmena, rinkitės iš tokių parinkčių:  
_Leisti_ – suteikiama teisė prieiti pasirinktu keliu. Jei yra galimybė, patariama rinktis ne kelią, o taisyklių šabloną (žymimą _#include_).  
_Atmesti_ – drausti prieigą.  
_Globalus_ – suteikiama teisė prieiti ne tik nurodytu keliu, bet ir aplanku aukščiau.  
_Glob w/Ext_ – suteikiama teisė prieiti ne tik nurodytu keliu, bet ir aplanku aukščiau, tačiau tik prie tokį patį prievardį turinčių rinkmenų.  
_Keisti_ – rankiniu būdu pakoreguoti eilutę.  
Jeigu kreipiamasi į vykdomąją rinkmeną, galite, pvz.:  
nurodyti _paveldėti_ teises – liktų toje pačioje saugumo veiksenoje,  
kurti atskirą _profilį_,  
nurodyti, kad tai proceso „_vaikas_“,  
visai _nevaržyti_ proceso veiklos,  
_atmesti_ arba rinktis dar porą parinkčių.  
  
Kuo sudėtingesnė programa, tuo daugiau įvykių teks peržiūrėti.  
  
4\. Peržiūrėkite sukurtąjį profilį, spauskite „Gerai“, „Užbaigti“.  
  
Jei profilį jau turite kompiuteryje, tuomet nereikia šio vediklio:  
Eikite YaST > (Novell AppArmor) > Rankiniu būdu pridėti profilį,  
  
b) **Profilio atnaujinimas**  
Paleiskite programą ir įsitikinkite, kad programa iš tiesų negali atlikti to, kas jai neleista.  
Bandykite atlikti veiksmus, kurių galbūt neatlikote kuriant profilį.  
AppArmor registruoja visus profiliuojamų programų įvykius, tad profilį galite nesunkiai atnaujinti eidami  
YaST > (Novell AppArmor) > Profilio atnaujinimo vediklis.  
Jei buvo naujų įvykių, nurodykite, ar leisti jiems įvykti ateityje.  
Atnaujinus programos profilį, atitinkamai pasikeis ir jos kontrolė.  
  
c) **Profilio veiksenos keitimas**  
Eikite YaST > (Novell AppArmor) > AppArmor valdymo skydelis,  
ties „Nustatyti profilių veiksenas“ spauskite „Konfigūruoti“.  
Matome, kad numatytuoju atveju programa paleidžiama _griežtoje_ (angl. _enforce_) veiksenoje: programa ar paslauga gali atlikti tik tai, kas jai buvo leista.  
Jei norite leisti laisvai veikti, tiesiog stebėti viską, ką programa atlieka, perjunkite į _skundimo/apmokymo_ veikseną (angl. _complain_), tinkamą profilių kūrimui, derinimui.  
  
d) **Profilio keitimas**  
Eikite YaST > (Novell AppArmor) > Keisti profilį.  
Galite keisti esamus konkretaus profilio įrašus, juos šalinti arba pridėti naujus įrašus. Įrašai gali būti susiję su rinkmenomis, katalogais, tinklo taisyklėmis, įvairiomis galimybėmis. Taip pat galite tvarkyti vadinamąsias _kepures_ – tam tikrus taisyklių rinkinius.  
  
e) **Profilio pašalinimas**  
Eikite YaST > (Novell AppArmor) > Pašalinti profilį,  
pasirinkite pašalintiną profilį ir patvirtinkite AppArmor sistemos pakeitimus.  
  
f) **Informavimas apie su saugumu susijusius įvykius**  
Eikite YaST > (Novell AppArmor) > AppArmor valdymo skydelis ir  
ties „Informavimas apie su saugumu susijusius įvykius“ spauskite „Konfigūruoti“.  
Galite nurodyti, kad informacija būtų siunčiama elektroniniu paštu.  
Arba eikite YaST > (Novell AppArmor) > AppArmor ataskaitos  
  
  
Daugiau informacijos ieškokite:  
/usr/share/doc/manual/opensuse-manuals\_en/manual/book.security.html  
[http://www.novell.com/documentation/](http://www.novell.com/documentation/)
