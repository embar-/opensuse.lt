---
title: "fail2ban, apsauga nuo brute force"
description: "opensuse, suse, suselinux, linux, kde, yasta, yast2, gnome, pagalba, suse, novell, opensuse linux, linux unleashed, download, gnu, system, operating system"
tags: [  ]
date: "2009-10-25"
lastmod: "2017-06-29"
draft: true
---
Šioje pamokoje, greitai ir aiškiai išmokinsiu įdiegti, bei susikonfiguruoti [fail2ban](http://www.fail2ban.org/ "fail2ban, opensuse") programą.

1\. Diegimas

 Atsidarome terminalą ir rašome:

**yast2**

Kai atsidarys YaST, eikite į Software > Community Repositories:

![Yast 2 Software Community repositories opensuse](http://www.ipix.lt/images/74670265.png)

 Aktyvuokite **Packman Repository** ir spauskite **Finish**:

![opensuse, packman repository, finish, opensuse.lt](http://www.ipix.lt/images/58577084.png)

Diegiame **fail2ban**:

**yast2 -i fail2ban**

Dabar turime sukurti sisteminius pasileidimo linkus ir paleisti fail2ban:

**chkconfig --add fail2ban  
/etc/init.d/fail2ban start**

Visus fail2ban konfiguracinius failus galesite rasti **/etc/fail2ban** .

2\. Konfiguruojame **fail2ban**

Pagal nutylėjimą sukurtas konfiguracinis failas guli **/etc/fail2ban/jail.conf **ji panagrinėje suprasite, kad nieko sudetingo ir nesuprantamo ten nėra.

Truputis paaiškinimu apie komandinius pavadinimus

**bantime** - laikas kuriam ip adresas bus uždraustas

**ignoreip** - ip adresas kuri ignoruoja fail2ban ir nededa i deny listą

**maxretry** - kiekis bandymu po kuriu bus dedamas draudimas

**logath** - kelias iki tekstinio failo kuriame bus saugomi visi fail2ban logai

**filter** - priklauso **/etc/fail2ban/filter.d**

**action** - priklauso **/etc/fail2ban/action.d**

Tagi dabar jums tereikia nusistatyt savo ip i ignoreip ir susikonfiguruoti apsauga pagal savo serverį.

Visus ban rasite **/var/log/fail2blog.log** arba **iptables -L** . Visus komentarus ar pastebėjimus rašykite į forumą arba [webmaster@opensuse.lt](mailto:webmaster@opensuse.lt)
