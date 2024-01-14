---
title: "Neveikia internetinė vaizdo kamera naršyklėje, bet veikia kitur?"
description: ""
tags: [  ]
date: "2019-04-04"
lastmod: "2019-04-04"
author:  "embar"
---
Kai kurios internetinės vaizdo kameros dalyje programų gali veikti (pvz., VLC), o kai kuriose kitose programose gali neveikti (Firefox interneto naršyklėje, Google Chrome interneto naršyklėje, Skype). Kaip sutvarkyti, kad galėtumėte filmuoti / perduoti vaizdą ir tose kitose programose?

Konkretus bėdos pavyzdys: interneto naršyklė Firefox / Facebook nerodo internetinės kameros kameros vaizdo (galite matyti klaidą _„An Error occured when trying to get access to Camera and/or Microphone: Starting video failed“_), nors naršyklėje mato, kad kamera tam tikru pavadinimu yra, ir naršyklėje leidžiate Facebook svetainei prieiti prie tos vaizdo kameros. Nepaisant to, internetinė kamera gali puikiai veikti tos pačios operacinės sistemos specializuotose įvairialypės terpės (multimedijos) programose kaip VLC - tokiu atveju tik sustiprėja įtarimas, kad bėda ne kameroje, ne openSUSE Linux sistemoje, o konkrečioje programoje.

 ![](/images/pamokos/Facebook_-_An_Error_occured_when_trying_to_get_access_to_Camera_and_or_Microphone_-_Starting_video_failed.png)

Pasitikrinkite, ar įdiegtas **libv4l** paketas.

Pasitikrinkite, ar įdiegti _libavcodec56, libavdevice56, libavformat56, libavcodec57, libavdevice57, libavformat57, libavcodec58, libavdevice58, libavformat58, gstreamer-plugins-bad, gstreamer-plugins-libav, gstreamer-plugins-ugly_ ir panašūs vaizdo kodavimo paketai. Tokie paketai turi būti būtent iš **Packman** saugyklos (jei tokios neturite - įtraukite per _YaST valdymo centrą → Saugyklos_), o ne iš atviro kodo saugyklų (numatytose pagrindinėse atviro kodo saugyklose atitinkami paketai nesuteikia visų reikiamų formatų palaikymo dėl patentų/licenzijų apribojimų). Tad eikite per _YaST valdymo centrą → Programinės įrangos tvarkytuvę_, atverkite _Saugyklų_ kortelę, pažymėkite _PackMan_ saugyklą ir spauskite nuorodą _„Pakeisti sistemos paketus versijomis iš šios saugyklos“_.

![](/images/pamokos/YaST2_-_pakeisti_paketus_versijomis_is_Packman_saugyklos.png)

Pabandykite savo programą paleisti komandinėje eilutėje, tačiau prieš programos komandą prirašykite prašymą įkelti **v4l1compat.so** arba **v4l2convert.so** biblioteką iš **libv4l** paketo. Pavyzdžiui, uždarykite visus _Firefox_ naršyklės langus ir paleiskite ją iš naujo terminalo / konsolės programoje įvykdę eilutę:

LD\_PRELOAD=/usr/lib64/libv4l/v4l1compat.so firefox

arba

LD\_PRELOAD=/usr/lib64/libv4l/v4l2convert.so firefox

Atkreipkite dėmesį į savo sistemos bei programų architektūrą. Jei programa yra 64 bitų, o nurodytumėte 32 bitų biblioteką, tai tos bibliotekos nepavyks įkelti ir matysite pranešimą, panašų į _ERROR: ld.so: object '/usr/lib/libv4l/v4l1compat.so' from LD\_PRELOAD cannot be preloaded (wrong ELF class: ELFCLASS32): ignored_

Jei naudojate 32 bitų sistemą / programą, tuomet bandykite:

LD\_PRELOAD=/usr/lib/libv4l/v4l1compat.so firefox

arba

LD\_PRELOAD=/usr/lib/libv4l/v4l2convert.so firefox

Kaskart atvėrę programą su vis kita biblioteka, pasitikrinkite, ar ji jau tinkamai veikia su jūsiške internetine vaizdo kamera.

Kai rasite, kuri biblioteka jums reikalinga, galėsite pasitaisyti programos paleidimo ženkliuką, kad nebereikėtų kaskart programos paleidinėti iš komandinės eilutės.

Jei norite keisti programos paleidimo ženkliuką visiems naudotojams, tuomet reiktų administratoriaus teisėmis pakeisti _/usr/share/applications/_ kataloge esantį _desktop_ tipo rinkmenoje eilutę, prasidedančią **Exec=**. Pavyzdžiui, pakeisti Firefox programos paleidimo ženkliuką galite komandinėje eilutėje įvykdę:

sudo sed "s/Exec=firefox/Exec=LD\_PRELOAD=\\/usr\\/lib64\\/libv4l\\/v4l1compat.so firefox/" -i /usr/share/applications/firefox.desktop 

Vis tik pakeitimai _/usr/share/applications/_ kataloge gali neišsilaikyti po programų atnaujinimų...

Galite paleidimo programos paleidimo ženkliukus pakeisti savo naudotojo darbalaukyje - tuomet jų nepaveiks programos atnaujinimai. Tiesa, kiekvieną ženkliuką KDE Plasma 5 darbalaukyje tektų keisti atskirai - atskirai meniu ženkliuką, atskirai darbalaukio ženkliuką, atskirai skydelio ženkliuką...

![](/images/pamokos/KDE_Plasma_5_-_Programos_zenkliukas_darbalaukyje_-_savybes_-_Firefox.png)

![](/images/pamokos/KDE_Plasma_5_-_meniu_-_Keisti_programa_-_Firefox.png)

![](/images/pamokos/KDE_Plasma_5_-_Programos_savybes_-_Firefox.png)

KDE Plasma 5 darbalaukyje atvėrus ženkliuko **savybių** langą, reikia rinktis kortelę **Programa** ir joje pakeisti _programos paleidimo komandą_ prirašant prašymą įkelti atitinkamą biblioteką:

![](/images/pamokos/KDE_Plasma_5_-_Programos_paleidimo_komanda_-_Firefox_su_libv4l_v4l1compat.png)
