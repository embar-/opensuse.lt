---
title: "Skype programoje garsas iškraipytas, paaukštintas"
description: ""
tags: [  ]
date: "2019-01-02"
lastmod: "2019-01-01"
author:  "embar"
---
Kai kuriuose kompiuteriuose pasitaiko, kad _Skype_ pokalbių programą garsas būna iškraipytas, paaukštintas, tarsi peliukų šnekėjimas. Porą tokių atvejų pavyko išspręsti sukonfigūruojant _PulseAudio_ garso sistemą taip, kad einantį mono signalą grotų kaip ne kaip stereo garsą, o vėl paverstų į mono (angl. _remix/remap to mono_).

1.  Pirmiausia reikia sužinoti tikslų garso kanalo pavadinamą. Komandinėje eilutėje (t.y. terminalo/konsolės programoje) įvykdykite:
    
    pacmd list-sources | grep 'name:.\*input'
    
    Pavyzdžiui, galite gauti tokį užrašą:  
    
    name: <alsa\_input.pci-0000\_00\_1b.0.analog-stereo>
    
    Mums reikalingas pavadinimas yra tarp < ir > ženklų: _alsa\_input.pci-0000\_00\_1b.0.analog-stereo_. Jūsų kompiuteryje tas pavadinimas būtų kitoks.
    
2.  PulseAudio konfigūracinės rinkmenos _/etc/pulse/default.pa_ gale įterpkite eilutes (tačiau vietoj pasviru šriftu nurodyto pavadinimo nurodykite savąjį pavadinimą):
    
    \### Remap to mono  
    load-module module-remap-source master=_alsa\_input.pci-0000\_00\_1b.0.analog-stereo_ master\_channel\_map=front-left,front-right channels=2 channel\_map=mono,mono
    
3.  Iš naujo paleiskite _PulseAudio_ garso sistemą įvykdydami:
    
    pulseaudio -k
    
4.  Jei kartais nėra garso visai, gali būti, kad nebuvo uždarytos programos, kurios naudojo garsą. Bandykite iš naujo paleisti _PulseAudio_ įvykdydami:
    
    pulseaudio --start
