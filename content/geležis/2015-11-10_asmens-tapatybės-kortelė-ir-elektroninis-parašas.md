---
title: "Asmens tapatybės kortelė ir elektroninis parašas"
description: ""
tags: [  ]
date: "2015-11-10"
lastmod: "2017-08-17"
---
Nuo 2009 m. pradžios Lietuvos Respublikos piliečiams yra išduodamos lustinės asmens tapatybės kortelės, kurios greta savo įprastinės paskirties gali būti naudojamos kaip elektroninio parašo kūrimo priemonė. Norint naudoti asmens tapatybės kortelę ar valstybės tarnautojo pažymėjimą elektroninių dokumentų pasirašymui elektroniniu parašu, visų pirma, reikia įsigyti kortelės skaitytuvą su CCID palaikymu. Linux palaikomų įrenginių ieškokite, pavyzdžiui: [bendroje informacijoje](https://wiki.debian.org/Smartcards), PCSC palaikomų [pagrindiniame](https://pcsclite.alioth.debian.org/ccid/supported.html) ir [papildomame](https://pcsclite.alioth.debian.org/ccid/shouldwork.html) sąraše...

[![](https://lietukas.lt/img/1-click-install-lt.png)](https://lietukas.lt/ymp/gauti.php?ymp=pcsc-nsc_vrm_lt) mygtuką spustelėję paruošite openSUSE Linux sistemą naudotis tapatybės kortele, kuri išduota tiek iki 2012 m. liepos 4 d., tiek ir po šios datos. Šiuo paketu įdiegiate liudijimus (CRT rinkmenas iš [VRM svetainės](http://www.nsc.vrm.lt/downloads.htm)), antros versijos ccs RPM paketą ([CryptoCard Suite 2.00](http://www.cryptotech.com.pl/Produkty/CryptoCard_Suite_Pobieranie,content.html) yra naujesnė _CryptoTech_ kompanijos pasiūlyta versija nei siūloma 1.50 versija iš [VRM svetainės](http://www.nsc.vrm.lt/downloads.htm)), PCSC (bei OpenSC) paketus skaitytuvams, kelis papildomus paketus konfigūracijai atlikti. Pabaigus diegti, iš naujo paleiskite darbalaukio aplinką (arba tiesiog iš naujo paleiskite kompiuterį). Po to galėsite praktiškai iš bet kurios interneto naršyklės (įskaitant _Mozilla Firefox, Chromium, Chrome, SeaMonkey_) prisijungti su savo tapatybės kortele prie [SoDros](https://login2.sodra.lt/sodra-login/send.form?id=&type=signature), [Registrų centro](https://www.ipasas.lt/index.php?app=savitarna), [Elektroninių valdžios vartų](https://www.epaslaugos.lt/portal/nlogin), [Swedbank](https://ib.swedbank.lt/)... Tiesa, kai kurios mažiau populiarios naršyklės panašu, kad nepalaiko šios funkcijos (pvz., _Konqueror_).

Papildymas: nuo 2017 metų kovo prisijungti prie SODROS ir kitų valstybinių įstaigų svetainių galėsite tik papildomai įsidiegę **signa-browser-ext** RPM paketą iš [SignaBrowserExt\_Linux.zip](https://www.mitsoft.lt/sites/mitsoft/files/SignaBrowserExt_Linux.zip) archyvo. Poreikis naudoti šį paketą iš dalies susijęs su tuo, kad šiuolaikinės naršyklės jau nustojo palaikyti NPAPI tipo papildinius (įskaitant JAVA). Daugiau informacijos straipsnelyje [Asmens tapatybės kortelė ir elektroninis parašas: naršyklėje su JAVA (atnaujinta)]({{< ref "/geležis/2017-06-17_asmens-tapatybės-kortelė-ir-elektroninis-parašas-naršyklėje-su-java-atnaujinta" >}}).

Beje, iki 2012 m. liepos 4 d. išduotoms tapatybės kortelėms su _Gemalto MultiApp ID Core Technology_ (greičiausiai [Gemalto IDGo 300](http://www.gemalto.com/Products/classic_client/index.html)) sistema VRM nebepateikia [Classic Client](http://support.gemalto.com/index.php?id=where_can_i_dl_classic_client) programinės įrangos Linux sistemoms. Tačiau vienoje lietuviškoje svetainėje pavyko rasti [PDF](http://www.upc.smm.lt/ugdymas/vidurinis/rekomendacijos/failai/it/e-parasas/Elektroninis_parasas.pdf) dokumentą, kuriame išliko nuoroda į anksčiau platintą [_Gem Safe 5_ (_Middleware for Gemalto Sealys Multi App ID Classic Client 5_) versiją Linux sistemoms](http://dokumentai.lt/atk/Gamsafe_toolbox/ClassicClient_Linux_518_03.zip). Tai yra _libclassicclient_ RPM paketas, kurio pagrindinė biblioteka yra _/usr/lib/ClassicClient/libgclib.so_ (lygiai kaip ir [šiame](http://ca.zzzs.si/wp-content/uploads/downloads/2010/03/Classic_Client_Linux_User_Guide.pdf), [šiame](http://adnotech.adwin.fr/public/Classic_Client_Linux_User_Guide.pdf) ir [šiame](http://www.linuks.lt/blog/ru/index.php/2010-08-25-linux-omnikey-smart-card-pki-1021-usb-gemalto) šaltinyje). Internete pavyko rasti, kad naujesnę šios bibliotekos versiją pateikia [LuxTrust Middleware](https://www.luxtrust.lu/fr/article/671) RPM paketai, sukurti specialiai openSUSE [32](https://www.luxtrust.lu/downloads/middleware/LuxTrust_Middleware_opensuse13.1_32bit_7.0.0-b03.rpm) ir [64](https://www.luxtrust.lu/downloads/middleware/LuxTrust_Middleware_opensuse13.1_64bit_7.0.0-b03.rpm) bitų versijoms (tame pačiame puslapyje rasite Fedora ir Debian paketus). Panašu, kad _Gemalto_ kortelių, kaip ir _CryptoTech_, įranga suderinama su PCSC. Vis tik neturiu _Gemalto_ tapatybės kortelės, tad negaliu patikrinti...

Toliau pateiksiu aprašus, kaip reiktų tvarkytis, jei diegtumėte paketus ir konfigūruotumėte savarankiškai (t.y. jei nesinaudotumėte „Diegti tuoj pat“ nuoroda).

Jei diegtumėte vien tik pliką ccs paketą, tuomet nepaisykite įspėjimo, kad trūksta _pcsc-lite-libs_ paketo, kadangi openSUSE sistemoje jo turinį pateikia kiti paketai (_pscs-lite, libpcsclite1_).

![](/images/stories/kripto_ccs.png)

Norėdami patys įtraukti _CryptoCard Suite_ į **_Mozilla Firefox_**, **_SeaMonkey_** naršykles, įeikite į nuostatas, pasirinkite kortelę „Kitkas“, „Liudijimai“, „Saugumo priemonės“, paspauskite „Įkelti“, moduliui suteikite unikalų vardą ir nurodykite _/usr/lib/ccs/libccpkip11.so_ biblioteką naujoms (_CryptoTech_) tapatybės kortelėms (arba _/usr/lib/ClassicClient/libgclib.so_ senoms _(Gemalto)_ tapatybės kortelės).

![](/images/stories/krypto_ff_0.png)

![](/images/stories/krypto_ff_1.png)

![](/images/stories/krypto_ff_2.png)

Įdomu, kad pakako įdiegti vien tik _ccs_ ir _PCSC_ (pirmiausia _pcsc-lite, pcsc-ccid_) paketus tam, kad galėčiau prisijungti prie _Sodros._

![](/images/stories/krypto_sodra1.png)

![](/images/stories/krypto_sodra2.png)

![](/images/stories/krypto_sodra3.png)

![](/images/stories/krypto_sodra4.png)

Skirtingose naršyklėse naudojama kiek skirtinga sistema, tačiau yra galimybė nurodyti naršyklėms naudotis ta pačia NSS duomenų baze ir tokiu būdu sukonfigūruoti daugumą programų iš karto. Tam reikia _modutil_ programos iš _mozilla-nss-tools_ paketo. Norėdami savo naudotojo programoms priskirti naująjį priedą, įvykdytume:

modutil -dbdir sql:$HOME/.pki/nssdb/ -add "CryptoCard PCSC 11" -libfile /usr/lib/ccs/libccpkip11.so -force;   
modutil -dbdir sql:$HOME/.pki/nssdb/ -enable "CryptoCard PCSC 11" -force ;

Tam, kad įvairios programos iš tikrųjų naudotų šią duomenų bazę, įvykdome (poveikis bus tik naudotojui iš naujo prisijungus darbalaukio aplinkoje, išskyrus _Chromium/Chrome_ naršykles, kurios numatytuoju atveju šią duombazę ir naudoja):

echo "export NSS\_SHARED\_DB\_PATH=$HOME/.pki/nssdb" >> $HOME/.bashrc ;  
echo "export NSS\_USE\_SHARED\_DB=1" >> $HOME/.bashrc ;

Yra galimybė visiems kompiuterio naudotojams nurodyti vieną ir tą pačią _/etc/pki/nssdb/_ SQL duomenų bazę, tačiau tam reikia administratoriaus teisių, o prieš tai dar reiktų įdiegti _mozilla-nss-sysinit_ RPM paketą. Tada vykdytume:

modutil -dbdir sql:/etc/pki/nssdb/ -add "CryptoCard PCSC 11 modulis root" -libfile /usr/lib/ccs/libccpkip11.so -force  
modutil modutil -dbdir sql:/etc/pki/nssdb/ -enable "CryptoCard PCSC 11 modulis root" -force  
echo "export NSS\_USE\_SHARED\_DB=1" >> /etc/profile

Dėmesio! Rinkitės tik vieną iš dviejų alternatyvų (arba _$HOME/.pki/nssdb/_, arba _/etc/pki/nssdb/_), o jei renkatės antrąją – tuomet NSS\_SHARED\_DB\_PATH kintamojo neeksportuokite, nes _/etc/pki/nssdb/_ reikšmė yra numatytoji.

Vis tik jungimuisi prie _Swedbank_ tiek nepakanka:

![](/images/stories/krypto_swed0.png)

būtinai reikėjo įtraukti liudijimus iš [VRM](http://www.nsc.vrm.lt/downloads.htm), tuomet veikia tvarkingai. Jei naudojate Firefox naršyklę, tuomet tiesiog VRM puslapyje spustelėkite ties kiekviena CRT nuoroda, sudėkite norimas varneles ir importuokite.

Įmanoma importuoti CRT į tą pačią progarmoms bendrą SQL duombazę (pvz., _$HOME/.pki/nssdb/_ arba _/etc/pki/nssdb/_) naudojant _certutil_ programėlę iš minėto _mozilla-nss-tools_ paketo, pvz.:

certutil -d sql:$HOME/.pki/nssdb -t TC,TC,TC -A -i LIUDIJIMAS.CRT -n LIUDIJIMO\_PAVADINIMAS ;

Susitvarkius, šitaip gali atrodyti prisijungimas _Chromium_ naršyklėje:

![](/images/stories/krypto_swed1.png)

![](/images/stories/krypto_swed2.png)

O taip atrodė _FireFox_ naršyklėje:

![](/images/stories/krypto_swed1_.png)

![](/images/stories/krypto_swed2_.png)

Jungiantis prie [Elektroninių valdžios vartų](https://www.epaslaugos.lt/portal/nlogin):

![](/images/stories/krypto_evv1.png)

![](/images/stories/krypto_evv2_.png)

Tokia konfigūracija yra svarbus žingsnis link pasiruošimo pasirašinėti dokumentus netgi LibreOffice programoje. LibreOffice programoje eikite per meniu _Priemonės → Parinktys_; susiraskite kortelę „Saugumas“; nuspauskite mygtuką „Liudijimas...“.

![](/images/stories/krypto_libreoffice_1.png)

Pažiūrėkite, ar LibreOffice aptiko NSS (pvz., Firefox) liudijimų katalogą (pavyzdžiui, _/home/naudotojas/.mozilla/firefox/abcd1234.default_); jei katalogų nėra, pridėkite rankiniu būdu. Jei aptikti keli katalogai, pasirinkite, kurią konfigūraciją norite naudoti. Patvirtinkite pasirinkimą ir užverkite parinkčių langus.

![](/images/stories/krypto_libreoffice_3.png)

Atverkite kokį nors dokumentą arba sukurkite naują. Eikite meniu _Failas → Skaitmeniniai parašai_ (ar _Failas → Savybės_ ir spauskite mygtuką „Elektroninis parašas“). Spauskite mygtuką „Pasirašyti dokumentą“.

![](/images/stories/krypto_libreoffice_8.png)

Įveskite savo tapatybės kortelės PIN kodą.

![](/images/stories/krypto_libreoffice_9.png)

Pasirinkite liudijimą ir spauskite „Gerai“:

![](/images/stories/krypto_libreoffice_7.png)

Jei dabar ką nors dokumente pakeisite, tuomet prieš išsaugant jį pasirodys perspėjimas:

![](/images/stories/krypto_libreoffice_11.png)

Jei dabar eisite per meniu _Failas → Savybės_, tuomet matysite, kad dokumentas yra pasirašytas:

![](/images/stories/krypto_libreoffice_10.png)

Lietuvos Respublikos Vidaus reikalų ministerijos [svetainėje](http://www.nsc.vrm.lt/default.htm) rasite oficialias [instrukcijas](http://www.nsc.vrm.lt/guides.htm) ir tam reikalingas [rinkmenas](http://www.nsc.vrm.lt/downloads.htm).
