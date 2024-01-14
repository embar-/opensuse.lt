---
title: "Vietos atlaisvinimas ištrinant dalį sistemos žurnalų"
description: ""
tags: [  ]
date: "2015-09-22"
lastmod: "2017-08-07"
---
Operacinės sistemos standžiajame diske ima trūkti laisvos vietos? Vienas iš būdų ją kiek atlaisvinti – pašalinti iš atminties senus sistemos veiklos pranešimus, kurie saugomi vadinamuosiuose sistemos _žurnaluose_ (angl. _log_).

Norėdami pasitikrinti, kiek vietos diske užima sistemos žurnalai, įvykdykite:

sudo journalctl --disk-usage  

Jų dydis kai kuriose sistemose gali skaičiuoti gigabaitus, tačiau informacijai apie pastarųjų kelių dienų sistemos įvykius peržiūrėti greičiausiai jums pakaktų vos keliasdešimt megabaitų. Sistemos žurnalai saugomi **/var/log/journal/**kataloge; jei norite, galite drąsiai ištrinti visas rinkmenas šiame kataloge ir pakatalogiuose, tačiau neištrinkite pačio katalogo!

Norėdami apriboti žurnalo dydį, nuostatų rinkmeną **/etc/systemd/journald.conf** redaguokite administratoriaus **root** teisėmis taip, kad joje atsirastų tokia eilutė (be papildomo # ženklo jos pradžioje):

SystemMaxUse=50M  

Vietoj _50M_, galite nurodyti kitą žurnalo dydį.

Tam, kad žurnalų ciklas greičiau atsinaujintų, įvykdykite komandą:

```
sudo systemctl kill --kill-who=main --signal=SIGUSR2 systemd-journald.service
```

Norint priverstinai atnaujinti žurnalų paslaugą, įvykdykite:

```
sudo systemctl restart systemd-journald.service
```

Informacijos šaltinis:

[http://unix.stackexchange.com/questions/130786/can-i-remove-files-in-var-log-journal-and-var-cache-abrt-di-usr](http://unix.stackexchange.com/questions/130786/can-i-remove-files-in-var-log-journal-and-var-cache-abrt-di-usr)
