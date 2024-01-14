---
title: "Sistemos skambučio išjungimas"
description: ""
tags: [  ]
date: "2011-01-21"
lastmod: "2017-06-29"
---
Kartais erzina Linux pypsėjimas spaudžiant klavišą „Naikinti“ (⌫), išjungiant ar iš naujo paleidžiant kompiuterį. Yra keletas būdų išjungti sistemos skambutį, tačiau jų poveikis yra skirtingas.

**1.** Galima išjungti skambutį atskiroms grafinių programų grupėms:

a) KDE 4.5 programos nepypsės išjungus skambutį per meniu _Sistemos nustatymai > Programų ir sistemos pranešimai > Sistemos skambutis_.

b) GNOME2 programos turėtų nebepypsėti įėjus į GNOME konfigūracijos redaktorių (per meniu _Sistema > Konfigūravimas_ arba įvykdžius gconf-editor) ir nuėmus varnelę nuo _/apps/metacity/general/audible\_bell_.

c) Apskritai X serverio programas turėtų pritildyti **xset -b** komanda (bet regis nepaveikia GNOME2 programų).

**2.** Konsolės pyptelėjimus galima išjungti konkretaus naudotojo sesijoms sukuriant to naudotojo aplanke **.inputrc** rinkmeną su tekstu **set bell-style none** arba terminale to naudotojo teisėmis įvykdžius:

**echo "set bell-style none" >> ~/.inputrc**

Jei tą patį norite nurodyti visai sistemai, tuomet administratoriaus (root) teisėmis _/etc/inputrc_ rinkmenoje pridėkite eilutę **set bell-style none**

**3.** Kitas variantas – bandyti visuotinai uždrausti pcspkr.ko branduolio modulį. Tam administratoriaus teisėmis pirma jį sustabdykime:

**rmmod -v pcspkr**

Ir neleiskime jo įkelti vėl iš naujo paleidus Linux sistemą:

**echo "blacklist pcspkr" >> /etc/modprobe.d/blacklist.conf**

**4.** Vald+Alt+Naikinti klavišais priverstinai sustabdomas X serveris, iš naujo paleidžiamas ar išjungiamas kompiuteris nebepyptelės, jei bus nutildytas (angl. _mute_) garso kanalas, kurio pavadinime yra žodis _„beep“_ (tiesiog garso sumažinimas iki 0% gali nepadėti). Nutildyti galite bet kuria savo garso valdymo programėle, pvz, Kmix, alsamixergui.

Komandinėje eilutėje garsą galėtų išjungti komanda

**amixer cset name='Beep Playback Switch' off**

(koks jūsų kanalo pavadinimas sužinotumėte įvykdę **amixer controls**)

![išjungiamo kompiuterio pyptelėjimų išjungimas su Kmix](/images/stories/nutilk.png)
