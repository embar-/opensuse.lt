---
title: "Pastebėjote klaidą programinėje įrangoje?"
description: ""
tags: [  ]
date: "2015-12-14"
lastmod: "2017-09-05"
---
Programinėje įrangoje (programose, darbalaukiuose, operacinėse sistemose...) kartais pasitaiko nesklandumų (kitaip dar vadinamais klaidomis, riktais; angliškas atitikmuo – _bug_, kurio įprasta reikšmė yra _vabalas_). Pastebėję klaidą programinėje įrangoje – **netylėkite – praneškite apie tai programuotojams**. Programuotojai neturi galimių išbandyti viską itin kruopščiai iki smulkmenų kiekvienoje įmanomoje sistemos konfigūracijoje. Tik kai pranešite, jie sužinos, kad apskritai jūsų aptikta klaida apskritai pasitaiko, ir, jei pateiksite pakankamai išsamios informacijos, ją bus galima ištaisyti!

Kur pranešti apie klaidas? Tai priklauso nuo to, su kuo susijusi klaida. Pavyzdžiui:

*   [https://bugzilla.opensuse.org](https://bugzilla.opensuse.org) – su openSUSE susijusių nesklandumų registravimui;
*   [https://bugs.kde.org](https://bugs.kde.org) – KDE nesklandumų registravimui;
*   [https://bugzilla.gnome.org](https://bugzilla.gnome.org) – GNOME nesklandumų registravimui;
*   [https://bugs.documentfoundation.org](https://bugs.documentfoundation.org/enter_bug.cgi?product=LibreOffice;bug_status=UNCONFIRMED;version=?) – LibreOffice raštinės programų rinkinio;
*   [https://bugzilla.mozilla.org](https://bugzilla.mozilla.org) – įvairių Mozilla programų;
*   [https://bugzilla.kernel.org](https://bugzilla.kernel.org) – Linux branduolio...

Jei dvejojate, kam pranešti apie klaidą, praneškite apie tai openSUSE nesklandumų registravimo sistemoje.

Paprastai patariama:

1.  Paieškoti, ar jau yra pranešta apie tokį nesklandumą; gali būti, kad jis netgi ištaisytas kurioje nors naujesnėje programinės įrangos versijoje.
2.  Je dari nepranešta apie klaidą, tuo pranešti (angl. „File a bug“), nereiškiant emocijų ir glaustai nurodydant

*   kokia tai problema,
*   kokioje versijoje pasitaiko,
*   kaip dažnai ji pasitaiko (pvz., visada atliekant tam tikrą veiksmą, ar tik kartais),
*   ar galite ją atkartoti ir, jei taip, kokius žingsnius turėtų atlikti kitas žmogus, kad atkartotų klaidą.

Priklausomai nuo klaidos, jūsų gali paprašyti įkelti papildomas rinkmenas, pavyzdžiui:

*   YaST žurnalus (yast2logs) – šiuos galite paruošti įkėlimui įėję į YaST ir paspaudę _Lyg2+F8_ (angl. _Shift+F8_);
*   derinimo ar pranešimo apie lūžimą ataskaitą.

Kai kurios (pvz., KDE aplinkos) programos gali pačios automatiškai pasiūlyti jums pranešti apie klaidą ir pati surinks reikiamą informaciją. Pranešimas apie nulūžimą programuotojams bus naudingesnis, jei lūžimo informacija bus išsami. Tam reikia įdiegti atitinkamus \*-debuginfo paketus. KDE lūžimo informacijai gauti reikalingi paketai įdiegiami pranešimo lange nuspaudus „Įdiegti stebėjimo elementus“. Jei tokių paketų sistema neranda, tuomet pabandykite įtraukti papildomų derinimo (angl. _debug_) saugyklų; po to vėl bandykite spausti minėtąjį mygtuką. Gali būti, kad vis viena pagalbinė _DrKonqi_ programėlė automatiškai neįdiegs visų prieinamų naudingų \*-debuginfo paketų. Tai, kokių paketų trūksta, užuominą galite rasti ties lūžimo informacijos eilutėmis su dviem klaustukais („??“). Trūkstamus paketus įdiekite rankiniu būdu. Kaip tai vyksta, galite pažiūrėti filmuke vienos KDE Plasma 5.5.0 klaidos atveju:

{{< youtube XNAf3UU8yI8 >}}

Lūžimo informaciją taip pat galite gauti naudodamiesi **gdb**.

1a. Naujai paleidžiamoms programoms įvykdykite (vietoj PROGRAMA įrašykite programos vardą):

gdb PROGRAMA 2>&1 | tee ~/gdb-PROGRAMA.txt  (gdb) handle SIG33 pass nostop noprint (gdb) set pagination 0 (gdb) run 

1b. Jei jau buvo programa paleista anksčiau, pirmiausia sužinokite jos PID ir nurodykite jį _gdb_ programai:

pidof # sužinosite programos PID  
gdb 2>&1 | tee gdb-.txt (gdb) handle SIG33 pass nostop noprint (gdb) set pagination 0 (gdb) attach PID # vietoj PID įrašykite tos progamos PID (skaičių)  
(gdb) continue 

2\. Pasileidus programai, atlikite veiksmus, kurie nulaužtų programą. Jei programa pakimba, bet nenulūžta, spauskite _Vald+C_ (angl. _Ctrl+C_).

3\. Po to:

(gdb) backtrace full  
(gdb) info registers  
(gdb) x/16i $pc  
(gdb) thread apply all backtrace  
(gdb) quit 

**Naudinga informacija anglų kalba:**

https://en.opensuse.org/openSUSE:Submitting\_bug\_reports

Informacijos apie _gdb_ šaltinis: [https://wiki.ubuntu.com/Backtrace](https://wiki.ubuntu.com/Backtrace)
