---
title: "Neleisti KDE4.4 darbalaukio KDE3 sesijoje"
description: ""
tags: [  ]
date: "2010-05-14"
lastmod: "2017-06-29"
---
Jei įdiegėte KDE3.5 ir KDE4.4 aplinkas kartu, gali kilti nemalonus konfliktas:

pradėjus KDE3 sesiją, rodomas KDE4 darbalaukis.

Vienas iš būdų to išvengti – pervadinti arba ištrinti /usr/bin/plasma-desktop. KDE4 aplinka be šios rinkmenos veiks, tačiau be efektų.

Pervadint ar ištrinti galite eidami per meniu **Sistema > Rinkmenų tvarkyklė > (super naudotojo veiksena)** ir po to įėję į aplanką **/usr/bin**.

Arba komandinėje eilutėje įvykdę:

\[code\]sudo -i "rm /usr/bin/plasma-desktop"\[/code\]
