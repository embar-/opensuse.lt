---
title: "YaST ženkliukai"
description: ""
tags: [  ]
date: "2014-12-11"
lastmod: "2017-07-31"
---
openSUSE 13.2 YaST valdomo centre naudojant KDE4 aplinką kažkodėl matomi GNOME/ stiliaus ženkliukai vietoj Oxygen stiliaus. Norėdami matyti YaST valdomo centre KDE4 Oxygen ženkliukus, komandinėje eilutėje įvykdykite:

cd /usr/share/YaST2/theme/current/

su -c "rm icons; ln -s '../../../icons/oxygen' icons"

Palyginimui, YaST2 su Oxygen ženkliukų rinkiniu:

![](/images/stories/yast2_oxygen.png)

Ir su Hicolor:

![](/images/stories/yast2_hicolor.png)
