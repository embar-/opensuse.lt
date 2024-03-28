---
title: "KDE 4 LTS aplinkos diegimas į openSUSE Leap 42.1"
description: ""
tags: [  ]
date: "2015-11-22"
lastmod: "2017-06-30"
---
Nors openSUSE Leap 42.1 oficialiai nebepalaiko KDE 4 aplinkos, tačiau ją vis viena galima įsidiegti iš pagrindinių saugyklų. Jei norite pilnaverčio darbalaukio, bet nesate patyręs naudotojas, tuomet paprasčiausia būtų pirmiausia įsidiegti openSUSE su KDE Plasma 5 darbalaukiu, o po to kai kuriuos paketus pakeisti į KDE 4. Programinės įrangos tvarkytuvėje įdiekite **kdebase4**\* paketus, svarbiausi iš jų: **kdebase4-session**, **kdebase4-workspace**, **kdebase4-runtime**, taip pat **kde-l10n-lt** lietuvinimo paketą. Jums diegimo programa praneš, kad šie paketai konfliktuoja su jau įdiegtais _plasma5\*_ (ir _plasma-nm5_\*) paketais, todėl pastaruosius paketus pašalinkite.

Vietoj plasma-nm5 įdiekite KDE4 tinklo (NetworkManager) valdiklį [plasma-nm](https://software.opensuse.org/ymp/home:wolfi323:branches:KDE:Frameworks5/openSUSE_Leap_42.1/plasma-nm.ymp?base=openSUSE%3ALeap%3A42.1&query=plasma-nm) iš [home:wolfi323](http://download.opensuse.org/repositories/home:/wolfi323:/branches:/KDE:/Frameworks5/openSUSE_Leap_42.1) saugyklos.

Be to patartina pasikeisti prisijungimų tvarkytuvę į **KDM** ir joje išjungti automatinį naudotojo įkėlimą. Tai galite padaryti per _YaST > (Sistema) > /etc/sysconfig redaktorių_ eidami _Desktop > Display manager_ ir priskirdami naujas kintamųjų reikšmes:  
DISPLAYMANAGER="kdm"  
DISPLAYMANAGER\_AUTOLOGIN=""

Pereikite į konsolę spausdami Vald+Alt+F1 klavišų kombinaciją, ties _login_ įveskite _root_, įveskite kompiuterio administratoriaus slaptažodį ir įvykdykite:

rm -f -r /tmp/\*  
rm -f -r /var/tmp/\*  
reboot

Pateiktos _rm_ komandos išvalys visus laikinus duomenis, įskaitant KDE Plasma 5 podėlio duomenis. Jei to nepadarytume, paleidę KDE 4 darbalaukį matytume tik vientisą baltą spalvą. Kompiuteriui pasileidus iš naujo, įveskite naudotojo vardą ir slaptažodį, iš naujo pasirinkite savo darbalaukio aplinką. (Jei norite, dabar jau galėsite sugrąžinti ankstesnę DISPLAYMANAGER\_AUTOLOGIN reikšmę (arba įvesti kito naudotojo vardą).)

Vis tik tokia KDE 4 aplinka bus persmelkta KDE Plasma 5. Be to, nuosavo tinklo valdymo valdiklio nebus; galite arba naudoti GNOME programėlę nm-applet (_NetworkManager-gnome_ paketas), arba bandyti įdiegti _plasma-nm_ iš openSUSE 13.2 saugyklų; arba per _YaST > tinklo nuostatas_ pasirinkti kitokį tinklo valdymo būdą nei _NetworkManager_. Vis tik, jei norite grynos KDE 4 LTS aplinkos, naudokite openSUSE 13.2.

Filmukas, kaip šie darbai vyksta openSUSE Leap 42.1 sistemoje:

{{< youtube wnwi\_5dlTB4 >}}
