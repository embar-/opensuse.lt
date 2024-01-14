---
title: "StarDict/GoldenDict žodynų kūrimas su „StarDict-Editor“"
description: ""
tags: [  ]
date: "2011-09-17"
lastmod: "2017-08-07"
---
StarDict žodynų redaktorius (stardict-editor) yra [stardict-tools](http://software.opensuse.org/search?q=stardict-tools&lang=lt) pakete, kuriame yra ir įvairių žodynų konvertavimo įrankių.

Su StarDict žodynų redaktoriumi galite tekstinėje (_.tab_ ar _.babylon_) rinkmenoje esantį žodžių rinkinį paversti StarDict (ir GoldenDict) programai tinkamu žodynu. Toliau pateikti _tab_ (paprastas) ir _babylon_ (sudėtingesnis) rinkmenų aprašai.

![](/images/stories/stardict-editor.png)

**TAB rinkmenoje** vienam žodžiui/terminui skiriama viena eilutė. Žodis ir jo vertimas (aprašas) atskiriami tabuliacija. Jei vertimą (aprašą) reikia išskaidyti į kelias eilutes, naudokite **\\n**; jei reikia **\\** simbolio, naudokite **\\\\**. Pavyzdys:

a 1\\n2\\n3  
b 4\\\\5\\n6  
c 789

**Babylon rinkmenoje** yra galimybė naudoti paprastas HTML gaires, nurodyti informaciją apie žodyną, tą patį vertimą (aprašą) priskirti keliems žodžiams (terminams), naudoti nuorodas į kitus žodžius. Vienoje eilutėje rašomas žodis ir, jei reikia, jo formos, atskirtos **|** simboliu. Sekančioje eilutėje pateikiamas to žodžio vertimas (aprašas). Po aprašo paliekama tuščia eilutė. Jei aprašą reikia pateikti keliose eilutėse, naudokite **<BR>**.  
Pavyzdys (rinkmenos turinio pradžioje turi būti viena tuščia eilutė, o gale – dvi tuščios eilutės!):

  
#stripmethod=keep  
#sametypesequence=h  
#bookname=Pavadinimas  
#date=2011  
#email=elp@st.as  
#website=svetaine.lt  
#author=Autorius  
#description=Aprašas  
  
obelis  
Medis, kurio vedami vaisiai yra obuoliai.  
  
obuolys|obuoliai  
Obuolio apibūdinimas.  
  
obuolinis|obuolinė  
<B>pusjuodis</B> <I>pasviręs</I> <BR> būdvardis, žr. <a href="bword://obuolys">obuolio</A> apibūdinimą.  
  
  

Sukūrę tokio tipo _tab_ ar _babylon_ rinkmeną, ją susiraskite spausdami „Browse“, pasirinkite tos rinkmenos tipą, sukompiliuokite į StarDict žodyną spausdami „Build“. Kad naują žodyną matytų StarDict/GoldenDict programa, siūloma jį perkelti į _/home/NAUDOTOJAS/.stardict/dic/žodynas/_ ar _/usr/share/stardict/dic/žodynas/_ aplanką.
