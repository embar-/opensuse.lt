---
title: "NVIDIA jau siūlo uždaro kodo vaizdo plokščių tvarkyklių saugyklą taip pat ir openSUSE Tumbleweed sistemai"
description: ""
tags: [  ]
date: "2017-08-10"
lastmod: "2017-08-10"
author:  "embar"
---
Kitaip nei _openSUSE Leap_ (liet. _Šuolis_) versijose, nuolat atnaujinamoje _openSUSE_ atmainoje _Tumbleweed_ (liet. _Vėjaričiai_), Linux branduolys labai dažnai atnaujinamas, todėl vienas iš _openSUSE Tumbleweed_ trūkumų buvo, tai kad nebuvo atitinkamoms Linux branduolio versijoms nuosavybių vaizdo plokščių tvarkyklių paketų RPM saugyklos pavidalu, kad jas būtų patogu diegti paprastiems naudotojams (reikėdavo kaskart atsinaujinus Linux branduoliui _openSUSE Tumbleweed_ rankiniu perkompiliuoti tvarkykles). Jei konkrečiau, tai tik naujoms _NVIDIA_ vaizdo plokštėms tai būdavo aktualu. Bet nuo šiol veikia uždaro kodo NVIDIA tvarkyklių saugykla <[https://download.nvidia.com/opensuse/tumbleweed/](https://download.nvidia.com/opensuse/tumbleweed/)\> su RPM paketais _NVIDIA GeForce 400_ ir naujesnėms vaizdo plokštėms (t. y. praktiškai visoms plokštėms pagamintoms nuo maždaug 2010 metų). Šie paketai automatiškai perkompiliuojami atsinaujinus atitinkamiems _openSUSE Tumbleweed_ paketams. Ši nauja saugykla, kitaip nei analogiškos _openSUSE Leap_, _13.x_ ar senesnių _openSUSE_ versijoms skirtos _NVIDIA_ saugyklos, nepateikia paketų senesnėms _NVIDIA_ plokštėms. Beje, senesnės vaizdo plokštės turėtų puikiai veikti ir su atviro kodo tvarkyklėmis, kurias kuria ne pati _NVIDIA_.

Jei norite naudotis šia uždaro kodo NVIDIA saugykla, tačiau jau esate susikompiliavę uždaro kodo NVIDIA tvarkykles, pirma turite jas pašalinti.

Norėdami _openSUSE Tumbleweed_ sistemoje pridėti šią naują NVIDIA saugyklą ir įdiegti reikiamus RPM paketus, galite:

**arba** tai padaryti **per YaST** rankiniu būdu eidami per _YaST2 > (Programinė įranga) > Saugyklos_, o po to _YaST2 > (Programinė įranga) >_ _Programinės įrangos tvarkytuvė_;

**arba** tai padaryti **komandinėje eilutėje** administratoriaus (root) teisėmis įvykdę:

zypper ar -f https://download.nvidia.com/opensuse/tumbleweed nvidia-tumbleweed  
zypper inr

Tuo tarpu _AMD_ jau kurį laiką naujoms vaizdo plokštėms pati kuria atviro kodo _AMDGPU_ tvarkykles, kurios integruojamos į _Linux_ branduolį iškart (skaitykite apžvalgą apie [AMD tvarkykles _Linux_ sistemoms](index.php/pamokos/8-geleis/210-trumpai-apie-tvarkykles-amdati-vaizdo-ploktms)).

Daugiau informacijos:

[https://lists.opensuse.org/opensuse-factory/2017-08/msg00281.html](https://lists.opensuse.org/opensuse-factory/2017-08/msg00281.html)
