---
title: "Programinis MIDI garso sintezavimas su TiMidity"
description: ""
tags: [  ]
date: "2017-06-30"
lastmod: "2017-07-01"
author:  "embar"
---
Daug dabartinių garso plokščių nesugeba sintezuoti MIDI garso. _TiMidity_ tarnyba leidžia sukurti virtualų sintezatorių ir jį naudoti muzikos programose, pvz., natų redagavimo programose [Rosegarden](http://software.opensuse.org/package/rosegarden), [TuxGuitar](http://software.opensuse.org/package/tuxguitar), gana naujoje [Minuet](http://software.opensuse.org/package/minuet) klausos lavinimo programoje. Beje _TiMidity_ dar galima naudoti kaip biblioteką MIDI konvertavimui į WAV, tiesiog kaip komandinės eilutės arba grafinę programą MIDI grojimui.

1.  Reikia **įdiegti** [**timidity**](http://software.opensuse.org/package/timidity) paketą.  
      
    
2.  Nebūtina, bet labai rekomenduojama įdiegti kokią nors **SF2 _(SoundFont)_** rinkmeną tam, kad girdėtumėte kokybiškesnį garsą.  
    Numatytuoju atveju kartu su _timidity_ kartu įdiegiamas **[fluid-soundfont-gm](http://software.opensuse.org/package/fluid-soundfont-gm)** paketas, pateikiantis maždaug 140 MiB dydžio _FluidR3\_GM.sf2_. Tačiau TiMidity nėra pririšta prie šio konkretaus _fluid-soundfont-gm_ paketo, t. y. sistema leidžia jo neįdiegti. Dar oficialiose _openSUSE_ saugyklose esantis _snd\_sf2_ paketas pateikia šimtus kartų mažesnę (vos maždaug 300 KiB dydžio) _Vintage\_Dreams\_Waves\_v2.sf2_. Numatytuoju atveju openSUSE sistemoje šios SF2 rinkmenos įdiegiamos _/usr/share/sounds/sf2/_ kataloge. Beje, šios SF2 rinkmenos tinka ir kitiems MIDI sintezatoriams, pvz., _FluidSynth_. Taigi, jei turite SF2, tuomet administratoriaus (_root_) teisėmis pakeiskite _/usr/share/timidity/timidity.cfg_ rinkmeną, jos gale prirašydami naują eilutę, nurodančią, kurią SF2 rinkmeną naudoti, pavyzdžiui:
    
    soundfont /usr/share/sounds/sf2/Vintage\_Dreams\_Waves\_v2.sf2
    
    Vis tik jei renkatės numatytąją _FluidR3\_GM.sf2_, verčiau vietoj to tiesiog atkomentuokite vieną paskutiniųjų eilučių (t.y. joje nutrinant pirmąjį #), kad būtų naudojama su šia SF2 susieta sudėtingesnė konfigūracija:
    
    source fluidr3\_gm.cfg
    
3.  **Naudotojui vienam kartui paleisti** tarnybą, kad ši veiktų iki darbalaukio aplinkos seanso pabaigos, komandinėje eilutėje (konsolės/terminalo programoje) įvykdykite:  
    
    timidity -iA -Os &
    
    Matysite, kad sukuriami nauji ALSA MIDI prievadai, pavyzdžiui: _Opening sequencer port: 128:0 128:1 128:2 128:3_
4.  **Patikrinti**, ar veikia _TiMidity_ tarnyba, galite įvykdę
    
    aplaymidi muzika.mid --port 128:0
    
5.  Teoriškai _TiMidity_ tarnybą galima paleisti ne tik kaip naudotojo tarnybą, bet ir kaip paslaugą/tarnybą visai sistemai. Tačiau **paleisti _TiMidity_ paslaugos visai sistemai daugumoje atvejų nepavyks**, nes pastaruoju metu _Linux_ sistemose (įskaitant _openSUSE_) dažniausiai naudojama _PulseAudio_ garso sistema konfliktuoja dėl išteklių su _TiMidity_, tad neįmanoma paleisti abiejų kartu administratoriaus teisėmis. Jei nenaudotumėte _PulseAudio_ garso sistemos (o tarkim naudotumėte _ALSA_ garso sistemą kaip pagrindinę), tuomet tam, kad tarnyba pasileistų automatiškai iš naujo paleidus kompiuterį, pakaktų įgalinti ir paleisti _TiMidity_ kaip paslaugą per _YaST > (Sistema) > Paslaugų tvarkytuvę_ arba komandinėje eilutėje  
      
    
6.  Vis tik, jei norite, kad nereikėtų kaskart rankiniu būdu paleidinėti komandos, galite nurodyti sistemai, kad ji **automatiškai būtų įvykdoma** pasileidžiant jūsų darbalaukio aplinkai. Pavyzdžiui, galite _KDE Dolphin_ programoje nueiti į _/home/naudotojas/.config/autostart/_ katalogą (_.config_ yra slepiamasis!), nuspausti dešinį pelės klavišą, pasirinkti _sukurti naują > nuorodą į programą_. Analogišką nuorodą į programą (_programa.desktop_ rinkmeną) galite sukurti su bet kuria tekstų rengykle, dokumente įrašydami vos dvi eilutes:
    
    \[Desktop Entry\]  
    Exec=timidity -iA -Os &
    
    Nepamirškite padaryti nuorodos vykdomąja. Beje, _KDE Plasma_ aplinkoje matyti bei konfigūruoti automatiškai paleidžiamas programas galite per meniu _Nuostatos > Sistemos nuostatos > (Darbo erdvė) > Paleidimas ir išjungimas > Autostartas_.

Visa tai sutvarkyti galite ir komandinėje eilutėje:

sudo zypper in timidity fluid-soundfont-gm  
sudo sed "s/#source fluidr3\_gm.cfg/source fluidr3\_gm.cfg/" -i /usr/share/timidity/timidity.cfg  
echo "\[Desktop Entry\]  
Exec=timidity -iA -Os &  
" > ~/.config/autostart/timidity\_tarnyba.desktop  
chmod +x ~/.config/autostart/timidity\_tarnyba.desktop

Remtasi:

[https://wiki.archlinux.org/index.php/timidity](https://wiki.archlinux.org/index.php/timidity)
