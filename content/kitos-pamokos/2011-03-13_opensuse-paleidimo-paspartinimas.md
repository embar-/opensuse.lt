---
title: "openSUSE paleidimo paspartinimas"
description: ""
tags: [  ]
date: "2011-03-13"
lastmod: "2019-01-01"
---
Norėtumėte pabandyti openSUSE paleisti greičiau?

1\. Išjunkite nereikalingas ar nenaudojamas paslaugas. Tai galite padaryti eidami YaST > (Sistema) > Sistemos paslaugos (paleisties lygmenys)

[![](/images/stories/opensuse114-7-paleisties-lygmenys.png)](/images/stories/opensuse114-7-paleisties-lygmenys.png)

Prieš išjungiant pravartu kur nors pasižymėti šiuo metu įgalintas paslaugas (nors galbūt šiuo metu nepaleistas). Nepatartina uždrausti acpid, dbus, earlysyslog, earlyxdm, kbd, syslog, xdm.

Jei naudojate openSUSE Leap ar naujesnę versiją, skaitykite apie sistemos paleidimo trukmės analizę [čia]({{< ref "/programos/2017-07-01_sistemos-paleidimo-trukmės-analizė" >}}).

Jei naudojate _openSUSE 13.1_ ar senesnę versiją, sistemos paleidimo procesą įvertinti padės **bootchart** programa (tolesnės instrukcijos netinka naujesnėms versijoms).

[![bootchart diegimas](/images/stories/opensuse114-1-bootchart-diegimas.png)](/images/stories/opensuse114-1-bootchart-diegimas.png)

Įdiegę „bootchart“, eikite YaST > Sistema > Paleidyklė

[![](/images/stories/opensuse114-5-yast.png)](/images/stories/opensuse114-5-yast.png)

ir sukurkite naują paleidyklės meniu elementą klonuodami jau esamą

[![](/images/stories/opensuse114-2-bootchart-idejimas-i-meniu.png)](/images/stories/opensuse114-2-bootchart-idejimas-i-meniu.png)

[![](/images/stories/opensuse114-3-bootchart-idejimas-i-meniu.png)](/images/stories/opensuse114-3-bootchart-idejimas-i-meniu.png)

Prie branduolio parametrų prirašykite **initcall\_debug printk.time=y quiet init=/sbin/bootchartd rdinitrd=/sbin/bootchartd**

[![](/images/stories/opensuse114-4-bootchart-idejimas-i-meniu.png)](/images/stories/opensuse114-4-bootchart-idejimas-i-meniu.png)

Sekantį kartą paleidžiant kompiuterį, bus sukurtas **/var/log/bootchart.png** paveikslas, kuriuo remdamiesi galėsite toliau optimizuoti savo sistemos paleidimą. Pavyzdžiui, jei jums nereikia AppArmor, galite uždrausti boot.apparmor paslaugą per YaST sistemos paslaugų konfigūravimo modulį.

[![](/images/stories/opensuse114-6-bootchart-paveiksliukas.png)](/images/stories/opensuse114-6-bootchart-paveiksliukas.png)

2\. Leiskite naudotojui prisijungti automatiškai openSUSE paleidimo metu (tada kompiuteriu galės naudotis ir kiti, nežinantys jūsų slaptažodžio). openSUSE 11.4 sistemoje tai padarysite per YaST > (Saugumas ir naudotojai) > Naudotojų ir grupių tvarkymas. Rinkitės nuostatas ekspertams.

[![](/images/stories/opensuse114-8-automatinis-naudotojo-prijungimas.png)](/images/stories/opensuse114-8-automatinis-naudotojo-prijungimas.png)

Jei galite, pasidalinkite idėjomis šia tema diskusijose.

Pasiremta senu šaltiniu [http://forums.opensuse.org/archives/sls-archives/archives-linux-tweaks/archives-howtos-discussions/376672-how-speed-up-opensuse-boot-time-manage-memory-better.html](http://forums.opensuse.org/archives/sls-archives/archives-linux-tweaks/archives-howtos-discussions/376672-how-speed-up-opensuse-boot-time-manage-memory-better.html)
