---
title: "Tos pačios programinės įrangos diegimas į kitą kompiuterį"
description: ""
tags: [  ]
date: "2011-01-15"
lastmod: "2017-06-29"
---
Norėdami į kitą kompiuterį su openSUSE Linux sistema įdiegti bemaž tą patį, ką jau įdiegėte savo kompiuteryje, galite:

**1\. Eksportuoti (importuoti) savo įdiegtos programinės įrangos sąrašą į .xml rinkmeną.**  
Tai galite padaryti eidami YaST > (Programinė įranga) > Programinės įrangos tvarkytuvė ir iš meniu „Rinkmena“ pasirinkti „Eksportuoti“. Kitame kompiuteryje importuokite tą rinkmeną analogišku būdu. Būtų siūloma šalinti tuos paketusi, kurių nebuvo .xml rinkmenoje, bet yra įdiegti; būtų siūloma įdiegti tuos paketus, kurie buvo .xml rinkmenoje, bet nebuvo įdiegti kitame kompiuteryje. Galbūt trūkumas, o galbūt ir privalumas yra tai, kad neatsižvelgiama į paketų versijas. Be to, nebus pranešta apie paketus, kurie buvo įtraukti į .xml, tačiau nėra prieinami kitame kompiuteryje, todėl gali būti naudinga pirmiau atlikti kitą žingsnį:

**2\.** **Eksportuoti (importuoti) savo saugyklas.  
**a) Jei norite į kitą kompiuterį perkelti visiškai tokią pačią saugyklų konfigūraciją, tuomet nukopijuokite savo /etc/zypp/repos.d/ aplanko turinį į atitinkamą kito kompiuterio aplanką.  
b) Jei norite kitame kompiuteryje papildomai įtraukti savo kompiuteryje turimas saugyklas, tuomet terminale įvykdykite:

**sudo zypper lr -e /kelias/iki/rinkmenos/į/kurią/eksportuojama.repo**

Po to norėdami kitame kompiuteryje importuoti tas saugyklas, įvykdykite:

**sudo zypper -r /kelias/iki/rinkmenos/iš/kurios/importuojama.repo**

**3\. Perkelti pačius paketus.  
**openSUSE sistema po diegimo gali palikti paketus /var/cache/zypp/packages/ aplanke, jei per YaST > (Programinė įranga) > Saugyklos pažymėdami varnelę nurodėte „išlaikyti parsiųstus paketus“. Kiekvienai saugyklai tai turėsite nurodyti atskirai, bet juk ne visų saugyklų paketus verta pasilikti. Norėdami iš karto pas save susirinkti įdiegtus paketus, paketų tvarkytuvėje tiesiog iš naujo įdiekite atitinkamų saugyklų programinę įrangą.  
Po to galėsite nusikopijuoti /var/cache/zypp/packages/ aplanką į, pvz., kompaktinį diską.  
Norėdami kitame kompiuteryje tą aplanką naudoti kaip vietinę saugyklą, per YaST > (Programinė įranga) > Saugyklos pasirinkite pridėti vietinį katalogą.
