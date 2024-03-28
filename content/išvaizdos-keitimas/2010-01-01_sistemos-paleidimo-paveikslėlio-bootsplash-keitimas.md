---
title: "Sistemos paleidimo paveikslėlio (bootsplash) keitimas"
description: ""
tags: [  ]
date: "2010-01-01"
lastmod: "2017-07-31"
---
**Nuosavo paveikslėlio rodymas pasileidžiant openSUSE sistemai.**

1\. Susižinome, kokios skiriamosios gebos paveikslėlis rodomas sistemos krovimo metu  
Tai galime padaryti nuėję į **YaST > (Sistema) > Paleidyklė** (senose versijose pavadinta kaip **Įkrovos tvarkyklė**),  
Pažymėjus openSUSE operacinę, nuspaudus \[Keisti\]  
ir pažiūrėti, kokie skaičiukai parašyti ties VGA režimu.

2\. Nukopijuoti norimą paveikslėlį  
Administratoriaus root režimu atsidarome bylų tvarkyklę  
(pvz., komandinėj eilutėj įvykdome xdg-su -c dolphin,  
arba einame **Meniu > Sistema > Rinkmenų tvarkyklė > ... super naudotojo veiksena**)  
ir nukopijuojam norimą paveiksliuką vietoj  
/etc/bootsplash/themes/openSUSE/images/silent-PLOTISxAUKŠTIS.jpg  
Senąjį būtų neprošal pervadint kitaip, jei norėtume greitai atstatyti...

3\. Komandinėje eilutėje įvykdome  
**su**

**mkinitrd**
