---
title: "openSUSE „Tumbleweed“ - nuolatinė tęsiama stabili versija"
description: ""
tags: [  ]
date: "2011-01-24"
lastmod: "2017-06-29"
---
Nuo openSUSE 11.4 pilnai veiks „Tumbleweed“ saugykla, į kurią nuolat pateks naujausi stabilūs paketai, tad openSUSE bus galima vadinti tęsiama arba „riedančia“ laida (angl. _roolling release_) kaip ir Gentoo, Arch Linux, o naudotojai bus nesusaistyti su savo įdiegta konkrečia openSUSE versija.

Iki šiol openSUSE stabilių versijų pagrindinė saugykla būdavo tarsi įšaldoma, sistemos atnaujinimams būdavo skirta atskira saugykla, o naudotojai, norintys atnaujinti kitus komponentus (pvz., KDE, GNOME aplinką), turėdavo įsidėti papildomas saugyklas.

_Vėjaričių_ (Tumbleweed) nuo vystomos (Factory) versijos skirsis tuo, kad čia bus talpinami tik pakankamai stabilūs paketai, nors joms abejoms bus bendras nuolatinis kitimas. Būtent dėl kitimo ši _„_Tumbleweed“ saugykla nėra suderinama (bent kol kas) su kai kuria nuosavybine programine įranga, pvz., NVIDIA ir ATI vaizdo plokščių tvarkyklėmis.

Nekantraujantys jau dabar gali prisidėti dar teberuošiamą [vėjaričių](http://download.opensuse.org/repositories/openSUSE:/Tumbleweed/standard/) saugyklą:

**sudo zypper ar --refresh http://download.opensuse.org/repositories/openSUSE:/Tumbleweed/standard/** **Tumbleweed**

O norėdami savo sistemos paketus pakeisti šios saugyklos paketais, įvykdykite:

**sudo zypper dup --from** **Tumbleweed**

Daugiau informacijos:

[http://en.opensuse.org/Tumbleweed](http://en.opensuse.org/Tumbleweed)

[http://news.opensuse.org/2011/01/03/opensuse-finished-2010-big/](http://news.opensuse.org/2011/01/03/opensuse-finished-2010-big/)
