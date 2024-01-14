---
title: "Skype 4.2 ir 4.3 versijos"
description: ""
tags: [  ]
date: "2014-07-13"
lastmod: "2017-09-17"
draft: true
---
2014 m. birželį pasirodžiusi [Skype 4.3](http://blogs.skype.com/2014/06/18/skype-4-3-for-linux/) versija palaiko tik PulseAudio garso sistemą.

2013 m. gegužę pasirodžiusi [Skype 4.2](http://blogs.skype.com/2013/05/20/skype-for-linux-4-2/) versija (RPM diegimui [čia](https://www.dropbox.com/s/rqdbyy3glnbh2xq/skype-4.2.0.13-suse.i586.rpm)) buvo paskutinė, palaikiusi ir ALSA garso sistemą.Tačiau tam, kad pastaroji versija veiktų sklandžiai, kai kuriose sistemose reikia Skype paleisti su parametrais:

MALLOC\_CHECK\_=0 PULSE\_LATENCY\_MSEC=60 skype  
 

Arba, kad nereiktų kaskart paleidinėti komandinėje eilutėje (pvz., Konsole, Terminal programoje), vieną kartą naudotojo root teisėmis įvykdykite:

mv /usr/bin/skype /usr/bin/skype-orig ;  
echo '# !/bin/bash   
MALLOC\_CHECK\_=0 PULSE\_LATENCY\_MSEC=80 skype-orig   
' > /usr/bin/skype ;  
chmod +x /usr/bin/skype ;

Komandinėje eilutėje prisijungti administratoriaus root teisėmis galima įvykdžius komandą **su**

Sprendimas rastas čia:

[http://community.skype.com/t5/Linux/Skype-creashes-on-login-OpenSuse-13-1/td-p/2337617](http://community.skype.com/t5/Linux/Skype-creashes-on-login-OpenSuse-13-1/td-p/2337617)
