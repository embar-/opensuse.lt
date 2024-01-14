---
title: " Automatinis naudotojų prisijungimas openSUSE sistemoje"
description: ""
tags: [  ]
date: "2017-01-28"
lastmod: "2017-06-30"
---
Norėdami sukonfigūruoti openSUSE sistemą, kad įjungus kompiuterį būtų automatiškai prisijungiama kuriuo nors naudotoju, reikia nuostatas keisti kitaip negu kad kitose Linux operacinės sistemos atmainose. Paprasčiausias būdas eiliniam naudotojui būtų:

1.  Įeiti „YaST“ administratoriaus nuostatas.
2.  „Saugumo ir naudotojų“ kategorijoje pasirinkti „naudotojų ir grupių tvarkymą“.
3.  Atsivėrusiame lange spausti „nuostatų ekspertams“ mygtuką ir pasirinkti „prisijungimo nuostatas“.
4.  Atsivėrusiame dialoge įjungti „automatinį prisijungimą“ ir iš sąrašo išsirinkti naudotoją, kuriam norite įgalinti automatinį sesijos įkėlimą.

{{< youtube XhpAz3wp6qo >}}

Kitas būdas – /etc/sysconfig/displaymanager rinkmenoje pakeisti DISPLAYMANAGER\_AUTOLOGIN reikšmę. Jei ji bus tuščia – automatinis prisijungimas išjungsimas; jei įvesite naudotojo vardą – to naudotojo darbalaukis bus įkeliamas automatiškai įjungus kompiuterį. Šią reikšmę galite pakeisti ir YaST2 /etc/sysconfig redaktoriuje eidami _Desktop → Display manager → DISPLAYMANAGER\_AUTOLOGIN_.
