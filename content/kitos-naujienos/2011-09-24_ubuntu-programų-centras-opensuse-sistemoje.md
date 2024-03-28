---
title: "Ubuntu programų centras openSUSE sistemoje"
description: ""
tags: [  ]
date: "2011-09-24"
lastmod: "2017-09-17"
---
![](/images/stories/software-center-factory-2011-09-24.png)

Ateityje programas bus galima diegti ir naudojantis **programinės įrangos centru** kaip _Ubuntu_ sistemoje.

Programinės įrangos centras (**software-center**) vis dar tobulinamas, bet jau galite pamėginti jį paleisti openSUSE 11.4 sistemoje (instrukcija bandant įdiegti software-center-4.1.17+bzr2155b-3.1.noarch.rpm 2011-09-24):

**1.** Pridėkite _software-center_ ir _packagekit 0.6.16_ pateikiančias saugyklas:

[http://download.opensuse.org/repositories/home:/alexeftimie/openSUSE\_11.4](http://download.opensuse.org/repositories/home:/alexeftimie/openSUSE_11.4)

[http://download.opensuse.org/repositories/home:/dmacvicar:/branches:/GNOME:/Factory/GNOME\_STABLE\_3.0\_openSUSE\_11.4/](http://download.opensuse.org/repositories/home:/dmacvicar:/branches:/GNOME:/Factory/GNOME_STABLE_3.0_openSUSE_11.4/)

**2.** Įdiekite _software-center_ ir _packagekit_ paketus.

**3.** Į kitą katalogą perkelkite keletą rinkmenų, kurios ne ten buvo įdiegtos (gal iš tikrųjų jų reiktų perkelti ir daugiau, bet apsiribosime būtiniausiomis; o galbūt šio žingsnio visai nereiks daryti, jei paketas bus pataisytas):

**mv /usr/bin/update-software-center-agent /usr/share/software-center/  
mv /usr/bin/piston\_get\_review\_stats\_helper.py /usr/share/software-center/**

**4.** Nebūtinas žingsnis: parsisiųskite [appdata.xml](http://bazaar.launchpad.net/~software-store-developers/software-center/trunk/download/head:/appdata.xml-20110530140000-5s9p6kouwhex66od-3/appdata.xml) ir nukopijuokite į /usr/share/app-info/xmls/ aplanką (jei nėra tokio, sukurkite).  

**5.** Įvykdykite:

**su -c "update-software-center --appstream-only"**

**6.** Paleiskite:

**software-center**

arba

**software-center-gtk3**

Daugiau informacijos ieškokite:

[http://en.opensuse.org/openSUSE:GSOC\_2011/SoftwareCenter](http://en.opensuse.org/openSUSE:GSOC_2011/SoftwareCenter)

[http://distributions.freedesktop.org/wiki/AppStream](http://distributions.freedesktop.org/wiki/AppStream)

[https://wiki.ubuntu.com/SoftwareCenter/PackagekitBackend](https://wiki.ubuntu.com/SoftwareCenter/PackagekitBackend)
