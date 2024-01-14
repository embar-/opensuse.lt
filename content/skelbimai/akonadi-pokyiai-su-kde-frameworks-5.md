---
title: "Akonadi pokyčiai su KDE Frameworks 5"
description: ""
tags: [  ]
date: "2016-01-09"
lastmod: "2017-07-31"
---
__Akonadi__ sistema – serveris ir klientai – skirta talpinti, indeksuoti ir nuskaityti asmeninę informaciją. _Akonadi_ nuo _KDE 4_ laikų naudojama _KDE_ asmeninės informacijos tvarkytuvėje (angl. _Personal Information Manager, PIM_) _Kontact_ (apima el. pašto programą _KMail_, _KOrganizer_ kalendorių, _KAddressBook_...), naujienų kanalų skaitymo programoje _Akregator_, kai kuriuose _KDE Plasma_ valdikliuose (angl. _widget_), pavyzdžiui, darbalaukio užrašų lapeliuose, kalendorinių įvykių pateikimui ir netgi _KDE 4_ alternatyviame _Lancelot_ programų paleidiklyje.

__Akonadi__ susilaukdavo ir tebesusilaukia priekaištų dėl lėtumo ir didelio RAM kiekio eikvojimo. Pavyzdžiui, netgi šviežiai įdiegtoje sistemoje su _KDE Plasma 5.5_ aplinka pareikalauja apie 200 MiB RAM, o vėliau pilnėjant duombazei kiekis nemažėja...

2015 m. rugpjūtį išleista __Akonadi__ versija _KDE Frameworks 5_ ir _Qt 5_ pagrindu, tačiau ligi šiol (2015 m. sausio) neturi stabilios API. Nuo _KDE 4_ laikų iki 2016 m. pirmųjų dienų __Akonadi__ sulaukė pakeitimų:

*   _Akonadi_ klientai su serveriu bendrauja ne tekstiniu protokolu, o dvejetainiu; tai leidžia gerokai sutaupyti laiko, nes nebereikia užklausų perkoduoti į tekstinį pavidalą, o po to vėl koduoti į dvejetainį.
*   _Akonadi_ serveris apie pokyčius klientams praneša nebe per _DBus_, o dvejetainiu protokolu.
*   _Akonadi_ serveris nebeturi viešojo API; _Akonadi_ serveris pasiekiamas tik per _KDE Akonadi_ klientų bibliotekas.
*   Sugrįžta _KJots_ pastabų programėlė.

Daugiau informacijos [Danielio Vratilio tinklaraštyje](http://www.dvratil.cz/2016/01/kde-pim-still-alive-and-rocking/) (anglų k.). Apie _Akonadi_ minima taip pat ir Keno Vermeto naujoje _KDE Plasma 5.5_ [apžvalgoje](http://www.phoronix.com/scan.php?page=article&item=kde-2016-review) (anglų k.).
