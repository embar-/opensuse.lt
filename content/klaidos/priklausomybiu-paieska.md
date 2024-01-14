---
title: "Priklausomybių paieška programoms, kurių priklausomybės nežinomos"
description: ""
tags: [  ]
date: "2019-06-30"
lastmod: "2019-06-30"
author:  "embar"
---
Kartais pasitaiko programų, kurios nepateikia aiškių priklausomybių, ypač jei programa įdiegta ne tvarkingu RPM paketu. Užuot bandymų būdu po vieną gliaudę klaidose randamas užuominas apie trūkstamą dar vieną priklausomybę, galime rasti jas visas iš karto analizuojant bibliotekas (SO rinkmenas), kurios pateikiamos su programa.

1.  Apsibrėžiame programos katalogą kaip kintamąjį. Kaip tokios problematiškos programos pavyzdys gali būti pasenusi MATLAB ar [MATLAB Compiler Runtime](https://www.mathworks.com/products/compiler/matlab-runtime.html) versija, tad toliau pavyzdys analizuojant /usr/local/MATLAB/ kataloge esančias programas (pakeiskite šį kelią į savo programos katalogą):  
    
    TIKRINAMAS\_KATALOGAS="/usr/local/MATLAB/"
    
2.  Išanalizuojame su programa pateiktas bibliotekas ir randame jų priklausomybes:
    
    find "${TIKRINAMAS\_KATALOGAS}" -type f -name '\*.so\*' -exec readelf -d {} \\; | sed -n 's/.\*Shared library:\\ \\\[\\(.\*\\)\\\].\*/\\1/p' | sort -u > priklausomybės\_visos.txt
    
3.  Atsirenkame priklausomybes, kurias pateikia pati programa:
    
    find "${TIKRINAMAS\_KATALOGAS}" -type f -name '\*.so\*' -printf "%f\\n" | sort -u > priklausomybės\_pateiktos.txt
    
4.  Atsirenkame priklausomybes, kurių pati programa nepateikia:
    
    diff priklausomybės\_pateiktos.txt priklausomybės\_visos.txt | grep '> ' | cut -c3- > priklausomybės\_nepateiktos.txt
    
5.  Surandame sistemoje esančias bibliotekas.
    *   Jei programa yra 64 bitų, tuomet įvykdome:  
        
        find /lib64 -name '\*.so\*' -printf "%f\\n" | sort -u > sistemos\_bibliotekos.txt  
        find /usr/lib64 -name '\*.so\*' -printf "%f\\n" | sort -u >> sistemos\_bibliotekos.txt  
        find /usr/local/lib64 -name '\*.so\*' -printf "%f\\n" | sort -u >> sistemos\_bibliotekos.txt  
        sort -u sistemos\_bibliotekos.txt > sistemos\_bibliotekos\_visos.txt
        
    *   Jei programa yra 32 bitų, tuomet įvykdome:
        
        find /lib -name '\*.so\*' -printf "%f\\n" | sort -u > sistemos\_bibliotekos.txt  
        find /usr/lib -name '\*.so\*' -printf "%f\\n" | sort -u >> sistemos\_bibliotekos.txt  
        find /usr/local/lib -name '\*.so\*' -printf "%f\\n" | sort -u >> sistemos\_bibliotekos.txt  
        sort -u sistemos\_bibliotekos.txt > sistemos\_bibliotekos\_visos.txt
        
6.  Atsirenkame priklausomybes, kurių nepateikia nei programa, nei dabartinė sistema:
    
    diff sistemos\_bibliotekos\_visos.txt priklausomybės\_nepateiktos.txt | grep '> ' | cut -c3- > priklausomybės\_trūkstamos.txt
    
7.  Randame RPM paketus, kurie pateikia trūkstamas bibliotekas (ne visoms bibliotekoms gali būti RPM):
    *   Jei programa yra 64 bitų, tuomet įvykdome:
        
        cat priklausomybės\_trūkstamos.txt | sed "s/$/\\(\\)\\(64bit\\)/" | xargs -n 1 rpm -q --whatprovides > RPM\_pateikiantys.txt
        
    *   Jei programa yra 32 bitų, tuomet įvykdome:
        
        cat priklausomybės\_trūkstamos.txt | xargs -n 1 rpm -q --whatprovides > RPM\_pateikiantys.txt
        
8.  Galime įdiegti bibliotekas, kurioms radome RPM paketus:
    
    grep -v "no package provides" RPM\_pateikiantys.txt | sort -u | sed -e :a -e '$!N; s/\\n/ /; ta' | xargs sudo zypper in
    

Net jei ne visoms bibliotekoms pavyksta rasti RPM paketus, programa vis tiek gali veikti. Galite palyginti rezultatus dviejose operacinėse sistemose: senoje, kurioje programa veikė be jokių pranešimų apie trūkstamas priklausomybes, ir naujoje, kurioje jau numatytuoju atveju gali nebebūti diegiamos kai kurios bibliotekos.

Tokiu būdu pavyko rasti, kad senai programai, naudojančiai 32 bitų „MATLAB Compiler Runtime R2012a“, naujoje openSUSE Leap 15.1 sistemoje dar trūko libncurses5-32bit, libICE6-32bit, libSM6-32bit, libXt6-32bit, libXmu6-32bit bibliotekų (priklausomybių buvo ir daugiau). Be jų, paleidžiant matydavosi pranešimai „_An Error has occurred while trying to initialize the MCR. The error is: Fatal error loading library <...>: nepavyko atverti bendrojo objekto failo: Toks failas ar aplankas neegzistuoja_“ arba:  
_Unable to initialize com.mathworks.mwswing.MJStartupForDesktop_  
_Unable to initialize com.mathworks.mwswing.MJStartup_  
_Unable to initialize com.mathworks.toolstrip.plaf.TSLookAndFeel_  
_Warning: Initializing Handle Graphics failed in matlabrc._  
_This indicates a potentially serious problem in your MATLAB setup,_  
_which should be resolved as soon as possible. Error detected was:_  
_MATLAB:Java:GenericException_

Aprašytas sprendimas remiasi kodu iš:  
 [https://www.mathworks.com/matlabcentral/answers/358052-is-there-a-list-of-matlab-runtime-dependencies](https://www.mathworks.com/matlabcentral/answers/358052-is-there-a-list-of-matlab-runtime-dependencies)
