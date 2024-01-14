---
title: "Patarimai dėl KDE Plasma 5 grafikos"
description: ""
tags: [  ]
date: "2015-11-05"
lastmod: "2017-06-29"
---
KDE Plasma 5 darbalaukio aplinka mėgina išnaudoti OpenGL 2 (ar naujesnės OpenGL versijos) aparatinį spartinimą grafikai apdoroti.

Jei aparatūros ir programinė komplektacija nedraugauja su _KDE Plasma 5_, tuomet po diegimo galite dar pabandyti išjungti aparatinį _OpenGL_ naudojimą ir rinktis lėtesnį programinį:

echo 'QT\_XCB\_FORCE\_SOFTWARE\_OPENGL=1' > ~/.bashrc

echo 'LIBGL\_ALWAYS\_SOFTWARE="true"' > ~/.bashrc

Dar galėtumėte pabandyti pakeisti kompozitoriaus galinę sąsają iš OpenGL į XRender: KDE darbalaukio nuostatų centre susiraskite _aparatinės įrangos_ grupėje esantį modulį _Ekranas ir monitorius_, įeikite į _kompozitoriaus_ kortelę.

Intel vaizdo plokščių turėtojams dar galėtų padėtii [akseleracijos metodo pakeitimas iš naujesnio SNA į senesnį UXA](https://bugs.kde.org/show_bug.cgi?id=349519#c42):

su   
#įveskite slaptažodį  
echo 'Section "Device"  
 Identifier "Intel Graphics"  
 Driver "Intel"  
 Option "AccelMethod" "uxa"  
EndSection' > /etc/X11/xorg.conf.d/20-intel.conf  
exit  

Tačiau nežinau, ar patarimas bus aktualus _openSUSE Leap KDE_ naudotojams.

Beje, Intel naudotojai pasitikrinti vaizdo akseleracijos metodą gali įvykdę:

cat /var/log/Xorg.0.log | egrep -i 'sna|uxa'

Tikiuosi neprireiks, jei _KDE Plasma 5_ darbalaukis sukvailiotų, nuspauskite Alt+F2, įveskite žodį _konsole_ ir paleiskite šią programą, joje įvykdykite:

killall plasmashell

kstart plasmashell  

Jei tai nepadėtų, tiesiog kurį laiką palaikykite nuspaudę klavišų kombinaciją Vald+Alt+Naikinti (angl. Ctrl+Alt+Backspace). Vargu, ar pastarųjų patarimų reikės, nebent labai išskirtiniais atvejais.
