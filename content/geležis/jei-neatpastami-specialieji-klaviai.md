---
title: "Jei neatpažįstami specialieji klavišai"
description: ""
tags: [  ]
date: "2011-07-18"
lastmod: "2017-08-07"
---
**A.** Kai kuriems specialiesiems klavišams gali tekti savarankiškai priskirti tam tikras funkcijas konkrečioje  
programoje (pvz., VLC, Kmix) arba per darbalaukio aplinkos (pvz., KDE) konfigūraciją.

**B.** Paprastai įvairiausi specialieji klavišai atpažįstami, tačiau gali pasitaikyti išimčių. Todėl praneškite apie  
klaidą į _Bugzillą_, jei _openSUSE 11.x_ sistemoje nuspaudus _Vald(Ctrl)+Alt+F10_ ir spaudžiojant tam tikrą klavišą  
(arba _/var/log/messages_ žurnale) matote kažką panašaus į žemiau pateiktas eilutes:

_atkbd serio0: Unknown key pressed (translated set 2, code 0x88 on isa0060/serio0).  
atkbd serio0: Use 'setkeycodes e008 ' to make it known.  
atkbd serio0: Unknown key released (translated set 2, code 0x88 on isa0060/serio0).  
atkbd serio0: Use 'setkeycodes e008 ' to make it known._

(Pastaba: po _Vald+Alt+F10_ nuspaudimo į _openSUSE 11.x_ grafinę sąsają grįšite nuspaudę _Vald+Alt+F7_).

Norėdami, kad sistema pažintų šiuos klavišus, administratoriaus _root_ teisėmis įvykdykite komandą:

**setkeycodes KLAVIŠAS KODAS**

Čia **KLAVIŠAS** yra klaidos pranešime matytas klavišas, o **KODAS** yra jo atliekamos funkcijos kodas iš  
_/usr/share/X11/xkb/keycodes/evdev_ arba įvykdę **xmodmap -pke**. Reikia rašyti funkcijos kodą, kuris yra už //  
simbolių, o ne prieš juos. Jei jo prie komentarų nėra, rašyk tą, kuris yra, tik atimk 8. **Pvz.,** _e008_ klavišui  
_KEY\_MEDIA_ funkciją suteikia tokia komanda:

**su -c "setkeycodes e008 226"**

Tačiau setkeycodes komanda padės tik iki sekančio kompiuterio įjungimo. Jei nori, kad visada paleidžiant  
openSUSE 11.x sistemą būtų nustatomi tie klavišai:

• Root teisėmis įvykdyk

**crontab -e**

• Paspausk **a** raidę ir įrašyk, pavyzdžiui:

**SHELL=/bin/sh  
@reboot setkeycodes e008 226  
@reboot setkeycodes e00e 148**

(pastarasis kodas tiko _HP Pavillion dv6000_ nešiojamajam kompiuteriui, turinčiam du prisilietimui  
jautrius specialius „QuickPlay“ mygtukus).  
• Paspausk _Grįžti(Escape)_ klavišą, po to suvesk **:wq** (pirma dvitaškį) ir nuspausk _Įvesti(Enter)_ klavišą.  
Viskas, ką parašei už _@reboot_, operacinės sistemos paleidimo metu bus įvykdoma vieną kartą.

**Patikrinti,** su kuria funkcija susietas klavišas, galima bet kokio naudotojo teisėmis įvykdžius **xev**.  
Tačiau gali būti ir taip, kad nei tarp sistemos pranešimų (kuriuos matei nuspaudęs _Vald+Alt+F10_), nei įvykdęs  
xev nieko nematei. Tada tikriausiai tavo klavišas buvo priskirtas blogam funkcijos kodui. Įsitikinti gali  
administratoriaus teisėmis komandinėje eilutėje įvykdęs:  
**showkey**  
Programėlė parašys funkcijos kodą (neatėmus 8), vos tik paspausi klavišą; showkey automatiškai baigs darbą,  
jei 10 sekundžių nieko nebus paspausta.  
Norint sutvarkyti tokį klavišą, kuriam priskirta bloga funkcija (vadinamasis _keycode_), pirma turi išsiaiškinti jo  
kodą (vadinamąjį _scancode_). Tam konsolėje super naudotojo (_root_) teisėmis įvykdyk:  
**getkeycodes**  
Dabar išvestoje lentelėje susirask tą kodą, kurį matei įvykdęs **showkey**.  
Pirmasis už dvitaškio esantis skaičius sutampa su prieš dvitaškį esančiu kodu, o tolesni atitinka vis didesnius  
šešioliktainius kodus. Pavyzdžiui eilutėje **e008: 226 236 152 212 226 0 389 0** pirmasis 226 atitinka e008 (jei anksčiau  
jam priskyrėme _XF86AudioMedia/KEY\_MEDIA_ funkciją _126_ (o ne 126+8=134)), 152 atitiks e00a, 389 atitiks  
e00e. O dabar, žinant klavišą, vėl galima pasinaudoti **setkeycodes** komanda.
