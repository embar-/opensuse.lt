---
title: "Po daugkartinio kompiuterio užmigdymo nebepavyksta prisijungti prie Wi-Fi?"
description: ""
tags: [  ]
date: "2019-03-01"
lastmod: "2019-03-01"
author:  "embar"
---
![](/images/stories/DHCP%20failed%20to%20start.png)

Po to, kai daugybę kartų kompiuterį užmigdau (užuot išjungęs) su įjungtu belaidžiu ryšiu, pasitaiko (nors ir labai retais atvejais), kad pabudusi _openSUSE Leap 42.3_ sistema nebegali prisijungti prie belaidžio interneto (Wi-Fi) tinklo. Tuo metu KDE darbalaukyje galima matyti pranešimą „DHCP failed to start“.

Vėl prisijungti prie belaidžio tinklo galėsite po to, kai komandinėje eilutėje įvykdysite:

sudo systemctl restart NetworkManager
