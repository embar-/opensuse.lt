---
title: "Espeak: lietuviško teksto skaitymas"
description: ""
tags: [  ]
date: "2012-07-10"
lastmod: "2020-10-13"
---
„Espeak“ yra viena iš balso sintezavimo (angl. _TTS, Text To Speech_) programų, kurios užrašytą tekstą perskaito balsu. Lietuvių kalbai jau yra sukurta panašių balso sintezavimo sistemų, pvz., [www.text-talk.com](http://www.text-talk.com/lt/kalbos-sinteze.html), „Aistis“, [„SakramentLith“](http://www.etalink.lt/pradzia/apie-mus/produktai/lietuviu-kalbos-sintezatorius/). Tačiau jos turi bent vieną iš trūkumų: arba joms reikia interneto ryšio, arba yra mokamos, arba nėra skirtos Linux aplinkai, o „Espeak“ yra atviro kodo projektas, jos veikimui nereikia interneto ryšio. Espeak palaiko daugybę kalbų, tarp jų ir latvių, lenkų, rusų, anglų. Tik lietuvių kalbos palaikymo dar nėra oficialiose Espeak versijose, tačiau jis jau rengiamas, Lietuvių kalbos palaikymas Espeak sistemoje įtrauktas nuo 1.47.01 versijos, kviečiame išbandyti ir prisijungti prie tobulinimo.

Norėdami išmėginti espeak su lietuvių kalbos palaikymu, įsidiekite [espeak](https://software.opensuse.org/package/espeak) arba [espeak-ng](https://software.opensuse.org/package/espeak-ng). Natūralesnį balsą girdėsite, jei naudosite mbrola balsus [lt1](https://software.opensuse.org/download/package?package=mbrola-lt1&project=home%3Aembar-%3ALietukas) ir [lt2](https://software.opensuse.org/download/package?package=mbrola-lt2&project=home%3Aembar-%3ALietukas) (tai „diegti tuoj pat“ nuorodos). Diegiant pastaruosius du, automatiškai įdiegs [mbrola](http://packman.links2linux.org/install/mbrola) paketą (bet tik jei esate įsidėję [PackMan](http://packman.links2linux.org/package/mbrola) [saugyklą](http://ftp.halifax.rwth-aachen.de/packman/suse/openSUSE_Tumbleweed/)).

Įdiegę eSpeak, lietuvišką balsą išgirsite įvykdę komandinėje eilutėje vieną iš šių komandų:

espeak -v lt "Jūsų tekstas. LT"  
espeak -v mb/mb-lt1 "Jūsų tekstas. M brola LT 1"  
espeak -v mb/mb-lt2 "Jūsų tekstas. M brola LT 2" 

Espeak galima naudoti kartu su, pvz., KDE [Jovie](http://software.opensuse.org/package/jovie) (kad veiktų pastaroji, turi būti **į**jungta PulseAudio sistema; apie jos **iš**jungimą buvo rašyta [čia]({{< ref "/pamokos/ivairus/garso-problemos-opensuse-114-ir-pulseaudio" >}})).

Norėdami patobulinti tarimą, sukurkite savo namų kataloge aplanką espeak-data ir nukopijuokite į jį visą /usr/share/espeak-data turinį. Tai padaryti galite įvykdę komandą:

cp -r /usr/share/espeak-data/ ~/

Po to redaguokite _espeak-data/dictsource_ aplanke esančius failus: [_lt\_rules_](https://github.com/mondhs/espeak/blob/master/dictsource/lt_rules) (tarimo taisyklės), _[lt\_list](https://github.com/mondhs/espeak/blob/master/dictsource/lt_list)_ (įvardžių, sutrumpinimų, skaičių ir t.t tarimas) ir [_lt\_listx_](https://github.com/mondhs/espeak/blob/master/dictsource/lt_listx) (žodžių sąrašas su nurodymu, kurį skiemenį kirčiuoti); taip pat galite keisti _espeak-data/phsource_ aplanke esantį [_ph\_lithuanian_](https://github.com/mondhs/espeak/blob/master/phsource/ph_lithuanian) (garsų žymėjimo aprašymai) ir _espeak-data/phsource/mbrola_ aplanke [_lt1_](https://github.com/mondhs/espeak/blob/master/phsource/mbrola/lt1) ir [_lt2_](https://github.com/mondhs/espeak/blob/master/phsource/mbrola/lt2) (abu aprašo espeak garsų žymėjimo sąsajas su mbrola; mbrola lietuviškų failų aprašas pateiktas [čia](http://www.ubuntu.lt/forum/download/file.php?id=272&sid=c66cc06bf65af66d2aed3d6b93fbf5a1)).

[lt\_rules taisyklės](http://espeak.sourceforge.net/dictionary.html) aprašomos pagal tokią struktūrą: \[_ženklai prieš_ **)**\] _raidė(s)_ \[**(** _ženklai po_\] _raidės tarimas_. Pavyzdžiui:

 d (\_ t // \[d\] žodžio gale tariami dusliai: kad – kat  
 \_) ie (šm jie // „ie“ žodžio pradžioje prieš „šm“ tariama \[jie\]: iešmas \[jiešmas\]  
 i (A ; // _A_ didžioji raidė reiškia bet kokį balsį,   
 // kabliataškis (;) – minkštumo ženklą.  
 k (CL06 k; // _C_ didžioji raidė reiškia bet kokį priebalsį,   
 // L su dviem skaitmenimis nurodo tam tikrą raidžių derinių grupę,   
 // kuri aprašoma to failo viršuje  
 @) ė (jL12\_ ee= // lygu (=) nurodo, kad raidė yra kirčiuota,   
 // eta (@) – prieš raidę yra bent vienas skiemuo:   
 // priesaga -ėjas: siuvėjas

lt\_list ir lt\_listx taisyklės pavyzdys:

manęs $2 // kirčiuojamas antras skiemuo

Visuose šiuose failuose // reiškia komentarus. Mažosios raidės tarime atitinka atitinkamas fonemas, išskyrus ee (taip žymima ė). Didžiosios raidės A, E, I, O, U atitinka trumpus balsius. Didžiosios S, Z atitinka Š ir Ž. Dvitaškis (:) po balsio nurodo, kad jis yra ilgasis. Kabutė (') nurodo kirčio vietą. Toks žymėjimas panašus į lietuviškuose mbrola balsuose naudojamą (jų aprašas [čia](http://www.ubuntu.lt/forum/download/file.php?id=272)), bet skiriasi tuo kad mbrola žymėjime kabutė (') reiškia minkštumo ženklą, ilgieji balsiai žymimi dviem raidėmis, pvz., aA (ã žodyje rãtas), ii (i ilgoji žodyje mylia), eA (ẽ žodyje kẽlias).

Pakeitimų testavimą labai palengvina [espeakedit](https://software.opensuse.org/package/espeakedit) programa; pirmą kartą su ja dirbant su teks pasirinkti lietuvišką balsą einant per meniu _Voice > Select voice_ (bandykite _lt_, arba iš _mb-lt1_ iš mb aplanko); atlikus bet kokius pakeitimus minėtuose _lt\_rules, lt\_list, lt\_listx, ph\_lithuanian_ failuose, teks po to eiti per meniu Compile ir nuosekliai perkompiliuoti phoneme data, dictionary "lt" .

Naudingą informaciją apie redagavimą rasite [espeak dokumentacijoje](http://espeak.sourceforge.net/docindex.html), [ubuntu.lt](http://www.ubuntu.lt/forum/viewtopic.php?f=3&t=7439) svetainėje.

Savo patobulinimus galite kelti į [ubuntu.lt](http://www.ubuntu.lt/forum/viewtopic.php?f=3&t=7439) svetainę tam, kad jie atsirastų [https://github.com/mondhs/espeak](https://github.com/mondhs/espeak)
