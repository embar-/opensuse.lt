---
title: "KDE vertimas"
description: ""
tags: [  ]
date: "2015-12-22"
lastmod: "2020-04-15"
---
Jei naudojatės KDE Plasma darbalaukio aplinka arba KDE programomis ir randate dar neišverstų ar klaidingai išverstų pranešimų, tuomet labai prašom prisidėti gerinant vertimus.

Kaip ir nemaža dalis kitų laisvosios programinės įrangos projektų, KDE lokalizuojama naudojant [gettext](http://en.wikipedia.org/wiki/GNU_gettext) sistemą: šablonai yra POT rinkmenose, o vertimai PO rinkmenose. Pirmiausia parsisiųskite norimas lietuvių kalbos PO rinkmenas [stabilioms](http://i18n.kde.org/stats/gui/stable-kf5/team/lt/) ir [būsimoms](http://i18n.kde.org/stats/gui/trunk-kf5/team/lt/) „KDE Frameworks 5“ versijoms. Jei norite, galite iš karto atsisiųsti visus lietuviškus „KDE Frameworks 5“ vertimus įvykdę:

mkdir "KDE vertimai"  
cd "KDE vertimai"  
svn co svn://anonsvn.kde.org/home/kde/branches/stable/l10n-kf5/lt/messages/  
mv messages stabilu  
svn co svn://anonsvn.kde.org/home/kde/trunk/l10n-kf5/lt/messages/  
mv messages vystoma  
cd ..

Beje, vertimui prieinamos ir [kitų KDE komponentų](http://i18n.kde.org/team-infos.php?teamcode=lt) PO rinkmenos.

Nors PO galima redaguoti paprasčiausia tekstų rengykle, tačiau patariame naudotis _[Lokalize](https://software.opensuse.org/package/lokalize)_, _PoEdit_ ar kita tam specialiai skirta progama.

**Lokalize** programoje parsisiųstąsias PO rinkmenas įkelkite į naują projektą eidami _Projekas → Naujo projekto vediklis → Versti dokumentą_ ir _pasirinkę aplanką_, į kurį parsiuntėte po rinkmenas, pvz., _~/KDE vertimai/._ Nuspaudę F7 ir mygtuką _„Peržvelgti projekto failus“_, sukursite vertimo atmintį, padedančią rasti pranešimus. _Lokalize_ taip pat turi aiškinamojo žodyno funkciją, tad galite eiti _Projektas → Konfigūruoti projektą → Bendri_ ir nurodyti kelią iki parsisiųsto jau sukurto [en-lt.tbx](/Dokumentai/en-lt.tbx) žodyno (pastarasis sukurtas remiantis kalbininkų prižiūrimu [anglų-lietuvių kalbų kompiuterijos terminų žodynu](http://ims.mii.lt/ALK%C5%BD/)) arba kurti nuosavą aiškinamąjį žodyną.

Atkreipkite dėmesį į tai, kad vertimai gali būti dviejų būsenų – patvirtinti ir neaiškūs (angl. _fuzzy_); neaiškūs vertimai rodomi pasvirusiu šriftu.

Versdami susidursite su tokiais ženkliukais ir reiškiniais:

*   **&** nurodo, kad po jo sekanti raidė bus prieigos klavišas, pvz., _&adresai_ atrodys kaip _adresai_, o programoje nuspaudus _Alt+A_, bus aktyvuotas su tuo įrašu susijęs elementas. Tiesa, būna, kad jis reiškia tiesiog „ir“. Su GTK/GNOME susijusiose PO rinkmenose tokią funkciją atlieka **_\__** simbolis.

*   **\\n** žymi naujos eilutės pradžią. Vertime privalo būti tiek pat **\\n** , kiek ir originale.

*   Dar labai panašus į _\\n_ yra **\\t**, žymintis tabuliaciją. **\\t** svarbesnis komandinės eilutės pranešimuose. Beje, juose labai svarbus ir tarpas. Nuo jų priklauso teksto lygiuotė.

*   **%s, %i, %d, %ul, %1, %2** ir panašūs reiškiniai su **%** simboliu atitinka kintamųjų reikšmes. Rečiau sutiksite tam dar naudojamą **$**, pvz., **%1$s, %3$lu** . Kartais **%** turintį vieną pranešimą prašo išversti kelis kartus atskirose kortelėse. Tuomet pirmosios kortelės vertimas naudojamas kai %x atitinka 1 (jei kortelių iš viso yra trys; jei kortelės keturios, tuomet vertimas taikomas dar ir 21, 31, 41 ir t. t. atveju); antrosios – 2–9, 22–29, 32–39 ir t. t. atveju; trečiosios – 10–20, 30, 40 ir t. t. atveju; ketvirtosios (jei tokia yra) – 21, 31, 41 ir t. t. atveju.

*   Dažniausiai nereikia versti tarp **<** ir **/>** esančio teksto. Beveik visada tai yra HTML kalba, nors kartais taip gali būti žymimi ir kintamieji.

*   **... |/| ... $\[ ... \]** gali padėti linksniuoti žodžius. Pavyzdžiui, sakinį „Remove this %1“ galite išversti kaip „Pašalinti šį %1|/|Pašalinti $\[get-case galininkas %1\]“. Radusi tokį vertimą, KDE sistema tikrins, ar kintamojo žodis yra tarp [JS](https://websvn.kde.org/trunk/l10n-kf5/lt/scripts/frameworks/libplasma5/) scenarijuje paminėtų; jei yra – jis versimas kaip, pvz., „Pašalinti _šią paiešką_“, o ne „Pašalinti _Ši paieška_“. Daugiau informacijos [čia](https://techbase.kde.org/Localization/Concepts/Transcript).

Atnaujinę vertimą, siųskite jį KDE lietuvinimo koordinatoriui adresu _andrius (kilpelė) stikonas (taškas) eu_ arba mums adresu _opensuse (taškas) lietuviu (taškas) kalba (kilpelė) gmail (taškas) com_.

Daugiau informacijos apie KDE vertimą:

*   [http://kde.akl.lt/?page\_id=157](http://kde.akl.lt/?page_id=157) (šiek tiek senstelėjusi)
*   [http://i18n.kde.org/team-infos.php?teamcode=lt](http://i18n.kde.org/team-infos.php?teamcode=lt)
