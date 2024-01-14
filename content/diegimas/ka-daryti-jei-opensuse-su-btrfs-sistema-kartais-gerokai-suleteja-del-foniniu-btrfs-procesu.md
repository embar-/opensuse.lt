---
title: "Ką daryti, jei openSUSE su BTRFS sistema kartais gerokai sulėtėja dėl foninių BTRFS procesų?"
description: ""
tags: [  ]
date: "2020-08-22"
lastmod: "2020-08-22"
author:  "embar"
---
Numatytuoju atveju openSUSE siūlo BTRFS rinkmenų sistemą tam, kad būtų kuriamos sistemos momentinės kopijos, kurios kritiniu atveju leistų grįžti į ankstesnę sistemos būseną. Tačiau to kaina gali būti sulėtėjusi operacinės sistemos veikia tiek, kad rodos kompiuterį kartais (ypač prieš arba po programinės įrangos diegimo) tarsi netgi pakabina foniniai _btrfs-cleaner_ ir _btrfs-transacti_ procesai, suryjantys didelę dalį sistemos išteklių. Norėdami rečiau susidurti su tokiais sulėtėjimais, galite pabandyti:

*   /etc/snapper/configs/root rinkmenoje
    *   nurodyti, kad nekurtų momentinių kopijų pagal laiką:  
        
        TIMELINE\_CREATE="no"
        
    *   sumažinti leidžiamų kopijų skaičių (vietoj 10):  
        
        TIMELINE\_LIMIT\_HOURLY="2"  
        TIMELINE\_LIMIT\_DAILY="3"  
        TIMELINE\_LIMIT\_WEEKLY="1"  
        TIMELINE\_LIMIT\_MONTHLY="0"  
        TIMELINE\_LIMIT\_YEARLY="0"
        
    *    jų užimamą dydį:
        
        SPACE\_LIMIT="0.3"
        
    *   turimos likti laisvos vietos dydį, pvz.,:  
        
        FREE\_LIMIT="0.3"
        
    *   ir keisdami kitus toje konfigūracinėje rinkmenoje esančius parametrus.
*   Išjunkite kvotų grupes įvykdydami komandinėje eilutėje:
    
    sudo btrfs quota disable /
    

*   Nurodykite sistemai neindeksuoti /.snapshots katalogo; tam /etc/updatedb.conf rinkmenoje įterpkite elutę:
    
    PRUNENAMES = ".snapshots"
    

Daugiau informacijos:

[https://en.opensuse.org/SDB:BTRFS](https://en.opensuse.org/SDB:BTRFS)

[https://en.opensuse.org/Portal:Snapper](https://en.opensuse.org/Portal:Snapper)

[https://en.opensuse.org/openSUSE:Snapper\_Tutorial](https://en.opensuse.org/openSUSE:Snapper_Tutorial)

[https://forums.opensuse.org/showthread.php/533829-Computer-frozen-by-btrfs-cleaner-amp-btrfs-transacti-using-100-CPU](https://forums.opensuse.org/showthread.php/533829-Computer-frozen-by-btrfs-cleaner-amp-btrfs-transacti-using-100-CPU)

[https://wiki.archlinux.org/index.php/Snapper#Preventing\_slowdowns](https://wiki.archlinux.org/index.php/Snapper#Preventing_slowdowns)
