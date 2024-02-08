---
title: "Klaviatūros išdėstymo grafinei aplinkai keitimas komandinėje eilutėje"
description: ""
tags: [  ]
date: "2011-04-09"
lastmod: "2017-06-29"
---
Norėdami pakeisti darbalaukio aplinkos klaviatūros išdėstymą komandinėje eilutėje, naudokite **setxkbmap** programą. Pavyzdžiui, norėdami naudoti lietuvišką standartinę klaviatūrą (ĄŽERTY), įvykdykite:

**setxkbmap -layout lt -variant std**

Vadinamąją lietuvišką baltišką (QWERTY) klaviatūrą naudosite įvykdę:

**setxkbmap -layout lt**

LEKP (QGRLDČ):

**setxkbmap -layout lt -variant lekp**

LEKPa:

**setxkbmap -layout lt -variant lekpa**

JAV numatytajam klaviatūros išdėstymui, naudojant Microsoft klaviatūrą, įvykdykite:

**setxkbmap -model microsoftpro -layout us**

Žinoma, klaviatūros išdėstymą galima keisti per savo darbalaukio konfigūravimo įrankius, pvz., KDE4 aplinkoje einant _Sistemos nustatymai > (Aparatinė įranga) > Įvedimo įrenginiai > Klaviatūra > Išdėstymai._

Apie konsolės klaviatūros išdėstymo keitimą rašyta [čia]({{< ref "/pamokos/ivairus/virtualios-konsols-klaviatos-idstymo-keitimas" >}}).
