---
title: "Pastebėjimai apie openSUSE Leap 42.1"
description: ""
tags: [  ]
date: "2015-11-04"
lastmod: "2017-06-30"
---
Jau spėjome grynai testavimui įsidiegti openSUSE Leap 42.1 su KDE Plasma 5. Pateikiame gausiai iliustruotą apžvalgėlę.

Kiek anksčiau pasikeitė _openSUSE_ svetainės pats pirmasis puslapis, labai aiškiai pristatantis, kad _openSUSE Linux_ sistema pateikiama dviem atmainomis: nuolatinio atnaujinimo (angl. _rolling release_) _Tumbleweed_ (Vėjaričių) ir periodiškai (kartą per metus) išleidžiama _Leap (Šuolio)_. Tačiau pirmoji _Leap_ versija pasirodė tik dabar.

![atnaujinta svetainė](/images/stories/opensuse_svetain2015.png "atnaujinta svetainė")  
  
Vos paleidus kompiuterį iš _Leap_ diegimo laikmenos pasitinka maloniai nuteikianti animacija, bet kitokia nei anksčiau. Ilgus metus diegimo laikmena šalia kompaktinio disko paveiksliuko išrašydavo pasisveikinimo žodžius įvairiomis pasaulio kalbomis; o dabar užsidega ekrane lemputė:

![Lemputė](/images/stories/leap.gif "Užsidega lemputė")

  
Užsidegusią lemputę matysite ir jau įdiegtoje sistemoje – darbalaukio fone. Bent jau man tai vienas gražesnių _openSUSE_ dailininkų parengtų _openSUSE_ apipavidalinimų.  
  
Pats diegimas vyksta praktiškai taip pat, kaip ir ankstesnėse _openSUSE_ versijose.  
Maža naujovė: pirmame diegimo lange, kuriame pateikiama licencija bei pasirenkama kalba ir klaviatūra, galite išbandyti klaviatūros išdėstymą.  
  
Beje, šioje _openSUSE_ versijoje, palyginti su 13.2, šiek tiek daugiau matote išverstų pranešimų į lietuvių kalbą, kurie priklauso nuo _openSUSE:_ 86% _YaST,_ 82% įvairių kitų. Dalis vertimų nespėjo pakliūti į galutinę _openSUSE 42.1_: daugiausia jie susiję _desktop-translations_ paketo turiniu. Remiantis patirtimi su ankstesnėmis _openSUSE_ versijomis, galima tikėtis, kad naudotojus dar papildyti vertimai pasieks iki gruodžio pradžios per atnaujinimus internetu. Tad, jeigu suskubtumėte [prisidėti verčiant _openSUSE_]({{< ref "pamokos/vertimas-lokalizavimas/opensuse-vertimas-interneto-naryklje" >}}), galbūt jūsų indėlis būtų matomas dar šioje versijoje; kita vertus – prisidėti galite bet kada.

![Licencija,         kalba, klaviatūra](/images/stories/leap421_licencija.png "Licencija, kalba, klaviatūra")  
  
Pasirenkant disko vietą sistemos diegimui, pagrindinius sistemos duomenis siūloma laikyti _BtrFs_ rinkmenų sistemoje (kad galėtumėte kurti jos momentines kopijas ir prireikus iš jų atkurti sistemą), o naudotojo duomenis – _XFS._ Naudojantis paprastuoju skaidinių pasirinkimu, skaidiniams galite rinktis ne tik minėtas – momentines kopijas leidžiančią kurti _BtrFs_ (pastarosios trūkumas – šiek tiek lėtesnis duomenų skaitymas/rašymas) ir greitą _XFS_ (pastarosios trūkumas tame, kad tokio skaidinio dydžio negalite mažinti – nebent tik didinti), – bet ir populiariąją _Ext4._ Patyrę naudotojai čia pat gali įeiti į jiems skirtą skaidinių tvarkymo veikseną ir pasirinkti dar kitokią rinkmenų sistemą bei nustatyti dar daugiau parinkčių.  
  
![Skaidiniai](/images/stories/skaidiniai.gif "Skaidiniai")  
  
  
Kitaip nei daugumoje kitų Linux platinamųjų paketų, diegdami iš DVD, galite patys išsirinkti norimą darbalaukio aplinką. DVD laikmena leidžia paprastai pasirinkti arba numatytąją _KDE Plasma 5.4.2_, arba _GNOME 3.16_, arba _XFCE,_ arba _LXDE,_ arba minimalią _IceWM,_ arba _Enlightenment,_ arba nesirinkti jokios. Jei netenkina minėtosios aplinkos, tuomet paskutiniame diegimo etape – diegimo nuostatų apžvalgoje – neskubėkite patvirtinti diegimo, o pirmiau nuspauskite nuorodą sudėtingesniam programinės įrangos pasirinkimui. Pamatysite, kad yra paruošti šablonai _MATE, LXQt_ darbalaukio aplinkų diegimui. Bet ir tai ne viskas – dar daugiau aplinkų galite rasti papildomose programinės įrangos saugyklose.  
  
![Darbalaukių         pasirinkimas](/images/stories/leap_darbalaukiai.png "Darbalaukių pasirinkimas")  

![Programinės įrangos pasirinkimas](/images/stories/leap421_sw.png "Programinės         įrangos pasirinkimas")

Svarbu: jei _VirtualBox_ programoje paleidžiate _openSUSE Leap_ tarsi svečio sistemą, tuomet būtinai rinkitės kitokią nei GDM prisijungimų tvarkyklę. Paprastai GDM naudojama kartu su _GNOME_ darbalaukiu. GDM paleidžia _X serverį_ naudotojo kontekste (kitaip nei kitos šiuo metu žinomos prisijungimų tvarkyklės). Tačiau toks GDM elgesys nesuderinamas su _VirtualBox_ vaizdo tvarkyklėmis, todėl X langų sistema nulūžta. Diegdami iš DVD diegimo laikmenos kitą prisijungimų paleidyklę išsirinkti galite ką tik minėtame programinės įrangos pasirinkimo lange nuspaudę mygtuką „Išsamiau“. Pavyzdžiui, norėdami naudoti „lightdm“ prisijungimų tvarkyklę, įdiekite „lightdm“ paketą. Jei po diegimo vis tiek pasileistų GDM, tuomet aktyvuokite „lightdm“ pagal instrukcijas pastabose apie šią openSUSE versiją. [Pastabas apie šią laidą](http://doc.opensuse.org/release-notes/x86_64/openSUSE/Leap/42.1) galite skaityti kone bet kada tiek iki diegimo patvirtinimo (mygtukas apačioje „pastabos šiai versijai“), tiek po diegimo patvirtinimo (kortelė „pastabos openSUSE versijai“).  
  
Kita susijusi su _VirtualBox_ galima bėda gali kilti tuomet, jei naudojate seną _VirtualBox_ versiją (4.x ar senesnę) ir renkatės _KDE Plasma 5_ darbalaukį: _KDE Plasma_ _5_ reikalauja OpenGL 2, kurią rasite _VirtualBox 5_ versijoje.  
  
Minėti GDM (GNOME) ir KDE Plasma pokyčiai glaudžiai susiję su pasiruošimu pereiti nuo X serverio prie pažangesnio _Wayland_ projekto _Weston_ grafikos kompozitoriaus.

Patvirtinę diegimo nuostatas, pradedate diegti sistemą, o tuo metu numatytuoju atveju rodomos skaidrės. Vienoje skaidrėje nuo šiol atkreipiamas dėmesys į tai, kad, kitaip nei Windows sistemoje, patys sprendžiate, ką ir kada atnaujinti. Dar galima pridurti, jog valdote savo saugumą ir privatumą; o į darbalaukį, programas ar programų paleidimo meniu nėra įterpiama jokia reklama.

Vos įdiegtas _KDE Plasma 5_ darbalaukis _openSUSE Leap_ labai panašus į _KDE 4_ dėl numatytojo valdiklių išdėstymo, bendrųjų principų, _Oxygen_ stiliaus ženkliukų, matomų darbalaukyje, programų paleidimo K meniu. Numatytoji elgsena taip pat primena pritaikytą KDE 4, pavyzdžiui, iš naujo paleidus KDE sesiją, atveriamos programos, kurių neišjungėte prieš atsijungdami paskutinį kartą; tačiau lygiai taip pat paprastai, kaip ir _KDE 4_ atveju, galima sukonfigūruoti, kad kiekvieną kartą prisijungus būtų įkeliama vadinamoji „tuščia sesija“.

_KDE Plasma 5_ darbalaukio vertimas į lietuvių kalbą nors šiai dienai mažiau užbaigtas nei _KDE 4_, tačiau vertimas tikrai padengia pakankamai.

Numatytuoju atveju siūlomi du virtualūs darbalaukiai vietoj keturių, kaip dažniausiai būdavo pateikiant _KDE 4_ aplinką, tačiau šį kiekį galite patys keisti.  
  
Dar didesnių funkcinių vienetų nei virtualus darbalaukis – vadinamųjų _Plasmos veiklų_ (_Plasma activities_) – konfigūravimo galimybės _KDE Plasma 5_ aplinkoje dirbtinai apribotos palyginus su _KDE 4_ galimybėmis tam, kad būtų užtikrintas didesnis darbalaukio stabilumas. Šiaip ar taip retas naudotojas _Plasma_ veiklas išnaudoja tam, kad susikurtą atskiras darbalaukio konfigūracijas atskirai darbinei, laisvalaikio ar kitai veiklai.

![KDE numatytasis meniu](/images/stories/kde5meniu.png "KDE numatytasis meniu")

  
Galim pasidžiaugti, kad su _KDE Plasma_ pateikiamas numatytasis programų meniu puikiai randa nišą išlaikydamas pusiausvyrą tarp pačio paprasčiausio _(Kicker)_ ir įmantraus meniu (pvz., _Kickoff, Lancelot)_; tokio funkcionalaus ir kartu paprasto meniu pasigedome _KDE 4_ darbalaukyje. Šis nėra apkrautas, turi paieškos laukelį (beje, kaip ir senasis _KDE 3_ paprastasis meniu), kairiame stulpelyje greitai pasiekiamus kompiuterio išjungimo ar naudotojo atsijungimo, pačio naudotojo pažymėtų mėgstamų programų mygtukus. Norėdami ten įtraukti programą, pirma ją susiraskite per meniu, paspauskite dešiniu pelės klavišu ir pasirinkite įtraukti ją į žymeles.  
  
Šioje _KDE Plasma 5_ versijoje vienas iš alternatyvių programų paleidimo meniu išsiskleidžia per visą ekraną, primenantį _Gnome 3_ numatytąjį arba naudojamą planšetiniuose bei išmaniuosiuose įrenginiuose. Norėdami jį naudoti, ties K raide dešiniu pelės klavišu ir pasirinkite atitinkamai.  
  
![KDE alternatyvus meniu](/images/stories/kde5meniu2.png "KDE alternatyvus meniu")  
  
Labai gražiai integruojasi ir vienas į kitą pereina Plasmos valdikliai, pavyzdžiui, šalia laikrodžio pasiekiami garsumo, tinklo ryšių, ekrano šviesumo, išorinių įrenginių valdymui. Tarp jų yra vienas naujas – spausdinimo užduočių tvarkymui.  
  
![Plasmos         valdikliai](/images/stories/plasma5valdikliai2.gif "Plasmos valdikliai")  
  
Ne visur _KDE Plasma 5.4_ čia tokia vientisa išvaizdos prasme. Atsidarius _KDE_ programas matyti _Breeze_ ženkliukai. Jie minimalistiniai, viename ženkliuke dominuoja tik vienas atspalvis, ne tokie išraiškingi – mažiau krentantys į akis dirbant. _Breeze_ ženkliukai rinkmenų tvarkytuvėje nepadeda taip gerai atskirti katalogų nuo rinkmenų, kadangi abiejų spalvos yra pakankamai ryškios, tuo tarpu _Oxygen_ ženkliukų rinkinyje aplankai yra gerokai ryškesni nei balsvesnės rinkmenos. Ko gero tiesiog reiktų laiko priprasti prie _Breeze_ apipavidalinimo. Kita vertus, ženkliukų apipavidalinimo rinkinį galit patys bet kada pasikeisti ar gana patogiai netgi įsidiegti visiškai naują iš siūlomų. Beje galite [pasikeisti ir YaST ženkliukų apipavidalinimą]({{< ref "/pamokos/isvaizdos-keitimas/yast-enkliukai" >}}).

![Dolphin](/images/stories/dolphin_breeze.png "Dolphin")

  
_LibreOffice_ neblogai integruojasi į _KDE Plasma 5_ visumą:

![LibreOffice](/images/stories/libreoffice_kde542.gif "LibreOffice")  
  
Nusišypsoti priverčia tai, kad _Kwrite_ programoje „Pagalbos“ meniu nėra paskutinis, o yra ties viduriu... Tai vienintelė programa, kurioje tai pastebėjau.

![Kate](/images/stories/kate_kde542.png "Kate")  
  
Gali tekti susidurti su nedideliais nesklandumais. Pirmą kartą paleista _Kontact_ programa praneša apie klaidą _„The Email program encountered a fatal error and will terminate now. The error was: Invalid parent“_ ir užsidaro. Vis tik ši klaida daugiau kosmetinė – vėliau bandant paleisti programą ji nebesikartoja. Nors kaip viena iš _KDE Plasma 5_ naujovių yra internetinių paskyrų integravimas, tačiau mygtukas joms pridėti net nereagavo... Daugiau nesklandumų nepastebėjau.

Paminėtina, kad pačiose pirmosiose _KDE Plasma 5_ versijose naudotojai keikdavo _KDE Plasma 5_ darbalaukį dėl dažnų jo nulūžimų, tačiau dažnu atveju problema visai nesusijusi su KDE! Grafikai perteikti vis labiau išnaudojamas vaizdo plokščių potencialas, o tai padeda gerokai greičiau į dienos šviesą iškelti kartais pasitaikančius Linux vaizdo perteikimo sistemų ir vaizdo plokščių netobulumus. Taigi darbo su nauja _KDE Plasma_ aplinka potyriai gerokai labiau priklauso nuo jūsų kompiuterio aparatinės įrangos, pasirinktų vaizdo plokštės tvarkyklių ir kai kurių papildomų grafikos sistemų dermės.

Todėl visa pikto praverstu, žinoti, kad, jei kartais ši versija vis dar keltų su grafika susijusių nesklandumų, [sprendimų yra]({{< ref "/pamokos/geležis/patarimai-dl-kde-plasma-5-grafikos" >}}).

_KDE_ aplinka remiasi _Qt_ bibliotekomis. Nors buvo galima tikėtis, kad _Leap 42.1_ gaus _Qt 5.5.1_ (jį gavo Tumbleweed), tačiau gavo _Qt 5.5.0_ versiją, kuri vis tik papildyta svarbiais pataisymais, atkeltais (angl. _backported_) iš _Qt 5.5.1_.

Bendras įspūdis pasinaudojus _KDE_, kurią pateikia _openSUSE Leap 42.1_, – **_KDE_ _Plasma 5.4.2_ darbalaukio aplinka** yra **patogi, funkcionali, graži**, nors vis dar nėra kruopščiai nušlifuota, bet **kasdieniams darbams naudoti tinka**. Vis tik, jei kartais netenkintų _KDE Plasma 5_ kokybė jūsiškėje apratinės ir programinės įrangos komplektacijoje, atminkite, kad galite rinktis kitą darbalaukio aplinką. Deja, _openSUSE Leap_ nesuteiks galimybės naudotis nušlifuota _KDE 4_ darbalaukio aplinka (nes ši konfliktuoja su _KDE Plasma 5_), tačiau _openSUSE 13.2_ versija palaikysima ne mažiau nei iki 2017 m. pirmo ketvirčio, o joje kaip tik ir rasite _KDE 4.14 LTS_. Palyginimui – _openSUSE Leap 42.1_ (kaip ir _SLE 12 SP1_) bus palaikoma ne mažiau nei iki 2017 metų vidurio, tikintis, kad naudotojams užteks pusmečio atsinaujinti sistemą po būsimos _openSUSE Leap 42.2_ išleidimo 2016 m. pabaigoje ( _SLE 12 SP2_ atitikmens).  
  
Paprastiems naudotojams iš naujų _YaST_ modulių galbūt įdomesnis būtų šriftams skirtasis, galbūt dar „Systemd žurnalų“ modulis, leidžiantis jį peržiūrėti grafinėje sąsajoje.  
![Šriftų modulis](/images/stories/yast_sriftai.png "Šriftų modulis")  
  
Apžvalgėlę pradėjome nuo atsinaujinusios _openSUSE_ svetainės, o artėdami prie jos pabaigos vėl sugrįžtame: numatytoji svetainė _Mozilla Firefox_ ir _Chromium_ naršyklėse dabar leidžia greitai pasiekti pagrindines _openSUSE_ svetainės skiltis – pradinį puslapį, programinės įrangos paiešką, vikį ir kūrimo paslaugą – arba iškart atlikti paiešką internete taip, kaip tai darote _Google_ svetainėje.  
![Geeko](/images/stories/geeko_google.png "Geeko")  
  
Jei ketinate įsidiegti ar jau įsidiegėte openSUSE, tačiau esate naujokas, pasižvalgykite po [šiame]({{< ref "/opensuse-pradedantiesiems" >}}) puslapyje pateiktas nuorodas. Beje, nieko tokio, kad dalis informacijos skirta senesnėms versijoms – praktiškai viskas tebegalioja. Netgi 5 metų patarimai apie darbelius po _openSUSE 11.4_ diegimo iš demonstracinės laikmenos (LiveCD) su _KDE 4.6_ tinka ir šiandienai; skirtumas tas, kad _libxine1-codecs_ paketą pakeitė _libxine2-codecs_, tačiau jis nebeaktualus, nes _KDE_ garso sistema _Phonon_ nebepalaiko _Xine_ variklio, o _Google Chrome_ veikimui nebereikia patiems diegti vieno papildomo paketo.

O štai čia naujosios openSUSE 42.1 diegimo vaizdo įrašas:

{{< youtube D-6bToLumM8 >}}

Džiugių akimirkų!
