---
title: "openSUSE vertimas: YaST, LCN"
description: ""
tags: [  ]
date: "2011-08-31"
lastmod: "2017-06-29"
draft: true
---


openSUSE (YaST, LCN, WebYaST) vertimui naudojamos .po rinkmenos. Jas galite versti naudodamiesi [Lokalize](index.php?option=com_content&view=article&id=76:vertimas-su-lokalize-12&catid=20:programos&Itemid=2) programa.


**1\. Pasiruošimas**

Norėdami versti YaST ir kai kuriuos kitus openSUSE sistemoje matomus pranešimus įsitikinkite, ar įdiegtas _subversion_ paketas. Jei abejojate, įvykdykite:

**sudo zypper in gettext-tools subversion**  

gettext-tools pravers ateityje kompiliuojant vertimą. Vertimui reikalingas .po rinkmenas rasite [čia](https://svn.opensuse.org/svn/opensuse-i18n). Tik lietuvių kalbai reikalingąsias parsisiųsite terminale įvykdę:

**mkdir -p ~/openSUSE/vertimas/******kamienas/****

**cd** **~/openSUSE/vertimas/kamienas/**

**mkdir -p yast**

**cd yast  
**

**svn co https://svn.opensuse.org/svn/opensuse-i18n/trunk/yast/lt/po**

**cd ..**

**mkdir -p lcn**

**cd lcn**

**svn co https://svn.opensuse.org/svn/opensuse-i18n/trunk/lcn/lt/po**

**cd ..**

Jei norite versti ne kamieną (angl. trunk), kuris skirtas tebevystomai versijai, o jau išleistai versijai, pvz., 13.2, tuomet įvykdykite:

**mkdir -p ~/openSUSE/vertimas/******13.2/****

**cd** **~/openSUSE/vertimas/13.2/**

**mkdir -p yast**

**cd yast  
**

**svn co https://svn.opensuse.org/svn/opensuse-i18n/branches/openSUSE-13\_2-Branch/yast/lt/po**

**cd ..**

**mkdir -p lcn**

**cd lcn**

**svn co https://svn.opensuse.org/svn/opensuse-i18n/branches/openSUSE-13\_2-Branch/lcn/lt/po**

**cd ..**

**2\. Vertimas**

Vertimui tinka [Lokalize]({{< ref "/pamokos/vertimas-lokalizavimas/2011-08-19_vertimas-su-lokalize-12" >}}) programa. Parsisiųstąsias po rinkmenas įkelsite į naują projektą eidami _Projekas → Naujo projekto vediklis → Versti dokumentą_ ir _pasirinkę aplanką_, į kurį parsiuntėte po rinkmenas, pvz., _~/openSUSE/vertimas/kamienas/_. Nuspaudę F7 ir mygtuką _„Peržvelgti projekto failus“_, sukursite vertimo atmintį, padedančią, kai yra jau buvo išverstų panašių pranešimų. Ji taip turi aiškinamojo žodyno funkciją, tad galite eiti _Projektas → Konfigūruoti projektą → Bendri_ ir nurodyti kelią iki parsisiųsto jau sukurto [en-lt.tbx](/Dokumentai/en-lt.tbx) žodyno arba kurti nuosavą aiškinamąjį žodyną.

openSUSE vertimo komandos šūkis: „geriau jokio vertimo nei blogas vertimas“. Todėl versti stenkitės ne pažodžiui, o pagal prasmę; vertimus karts nuo karto sukompiliuokite ir išbandykite, kaip jie atrodo jūsų kompiuteryje; stenkitės versti tai, ką patys naudojate.

Susidursite su tokiais ženkliukais ir reiškiniais:

**&** nurodo, kad po jo sekanti raidė bus prieigos klavišas, pvz., _&adresai_ atrodys kaip _adresai_, o programoje nuspaudus _Alt+A_, bus aktyvuotas su tuo įrašu susijęs elementas. Tiesa, būna, kad jis reiškia tiesiog „ir“. Su GTK/GNOME susijusiose .po rinkmenose tokią funkciją atlieka **_\__** simbolis.

**\\n** žymi naujos eilutės pradžią. Vertime privalo būti tiek pat **\\n** kiek ir originale.

Dar labai panašus į _\\n_ yra **\\t**, žymintis tabuliaciją. **\\t** svarbesnis komandinės eilutės pranešimuose (bet tokių openSUSĖJE ypač mažai yra, pvz., _zypper.lt.po_). Beje, juose labai svarbus ir tarpas. Nuo jų priklauso teksto lygiuotė.

**%s, %i, %d, %ul, %1, %2** ir panašūs reiškiniai su **%** simboliu atitinka kintamųjų reikšmes. Rečiau openSUSĖJE sutiksite tam dar naudojamą **$**, pvz., **%1$s, %3$lu** (_libstorage.lt.po_). Kartais **%** turintį vieną pranešimą prašo išversti kelis kartus. Tuomet, jei yra trys kortelės, pirmasis vertimas naudojamas kai %x atitinka 1, 21, 31, 41 ir t. t., antrasis - 2-9, 22-29, 32-39 ir t. t., trečiasis - 10-20, 30, 40 ir t. t.; taip buvo 11.3 ir ankstesnėse openSUSE versijose. Nuo openSUSE 11.4 versijos, sekant KDE lietuvinimo komandos pavyzdžiu ( http://kde.akl.lt ), tvarka pasikeitė ir matysite keturias korteles: pirmasis pranešimas atitiks 1, antrasis - 21, 31..., trečiasis - x2-x9, ketvirtasis - 10-20, x0.

Dažniausiai nereikia versti tarp **<** ir **/>** esančio teksto. Beveik visada tai yra HTML kalba.

**3\. Vertimo sintaksės tikrinimas**

Įvykdykite **msgfmt -c _vertimo.lt.po_**. Viską patikrinsite įvykdę:

**for i in ~/openSUSE/vertimas/\*/\*/po/\*.po ; do msgfmt -c $i ; done**

Beje, nekreipkite dėmesio į klaidas apie _update-desktop-files-conflicts.lt.po_ rinkmeną, nepaisykite _PO file header missing or..._, _dublicate message deffinition, header field \`Project-Id-Version' should start..._ pranešimų.

**4\. Vietinio vertimo kompiliavimas**

Žemiau pateiktas kodas yast ir lcn vertimo kompiliavimui (be webyast) ir sukompiliuotųjų _.mo_ rinkmenų nukopijavimui į reikiamus katalogus:

**#! /bin/bash  
#  
\# Ši programėlė sukompiliuoja ir įdiegia  
\# vietines YaST ir LCN vertimo rinkmenas.  
  
\# Nurodome, kur ieškoti \*.lt.po rinkmenų:  
KELIAS\_YAST="$HOME/****openSUSE/vertimas****/kamienas/yast/po/"  
KELIAS\_LCN="$HOME/****openSUSE/vertimas****/kamienas/lcn/po/"  
  
\# Jei dar nėra įdiegtas, įdiegiame „gettext-tools“ paketą:  
\[ -f "\`rpm -q --list gettext-tools | grep msgfmt\`" \] || {  
 xdg-su -c "yast2 -i gettext-tools" ; }  
\# Jei neįdiegtas „gettext-tools“ paketas, neverta tęsti  
\# \[ -f "\`rpm -q --list gettext-tools | grep msgfmt\`" \] || { exit 1 ; }  
  
cd "$KELIAS\_YAST"  
\# Sukompiliuojame YaST vertimą:  
for rinkmenaPo in ./\*.lt.po; do   
 rinkmenaMo="$(echo $rinkmenaPo | sed "s/lt.po$//")mo" ;  
 msgfmt -c $rinkmenaPo -o $rinkmenaMo ;  
done  
\# Jei nėra, sukuriamas YaST2 lietuviškų vertimų aplankas:  
\[ -d /usr/share/YaST2/locale/lt/LC\_MESSAGES/ \] || {  
 xdg-su -c "mkdir -p /usr/share/YaST2/locale/lt/LC\_MESSAGES/" ; }  
\# Perkeliame YaST vertimus:  
xdg-su -c "mv -f \*.mo /usr/share/YaST2/locale/lt/LC\_MESSAGES/"  
  
\# Tą patį atliekame su LCN vertimais  
cd "$KELIAS\_LCN"  
\# Sukompiliuojame LCN vertimą:  
for rinkmenaPo in ./\*.lt.po; do   
 rinkmenaMo="$(echo $rinkmenaPo | sed "s/lt.po$//")mo" ;  
 msgfmt -c $rinkmenaPo -o $rinkmenaMo ;  
done  
  
\# Iš update-desktop\* paruošiame vieną PO rinkmeną ...  
for rinkmenaPo in update-desktop-files\*.lt.po; do  
 msgattrib -o - --no-obsolete $rinkmenaPo | awk '/^msgctxt/ {  
body = 1  
ctxt=gensub(/msgctxt \\"(.+)\\"/, "\\\\1", "g")  
\# Escape "&" in file name  
#print "\*\*\*\*\* " ctxt  
gsub(/&/, "\\\\\\\\&", ctxt)  
#print "\*\*\*\*\* " ctxt  
next  
}  
/^msgid/ && body == 1 {  
sub(/msgid \\"/, "&" ctxt ": ")  
print  
next  
}  
{print}  
' > darbalaukis.lt.po.naujas  
 msgfmt -c darbalaukis.lt.po.naujas -o darbalaukis.lt.mo;  
 msgunfmt --no-wrap darbalaukis.lt.mo | \\  
 grep -v '^"\[A-Z\]\[^ \]\*: ' | grep '\[^\\\]\[\\\]n"' && exit 1  
 rm darbalaukis.lt.mo  
 if test -f darbalaukis.lt.po; then  
 msgcat -o darbalaukis.lt.po --use-first darbalaukis.lt.po darbalaukis.lt.po.naujas  
 rm darbalaukis.lt.po.naujas  
 else  
 mv darbalaukis.lt.po.naujas darbalaukis.lt.po  
 fi  
done  
\# Tą rinkmeną sukompiliuojame  
msgfmt -c --verbose -o desktop\_translations.mo darbalaukis.lt.po  
rm darbalaukis.lt.po  
rm update-desktop\*.mo  
  
\# Jei nėra, sukuriamas vertimo atnaujinimų aplankas:  
\[ -d /usr/share/locale-langpack/lt/LC\_MESSAGES/ \] || {  
 xdg-su -c "mkdir -p /usr/share/locale-langpack/lt/LC\_MESSAGES/" ; }  
  
\# Perkeliame LCN vertimus:  
xdg-su -c "mv -f \*.mo /usr/share/locale-langpack/lt/LC\_MESSAGES/"  
  
echo "Baigta."  
  
\# exit 0**  

Šį kodą patariama nukopijuoti ir išsaugoti tekstinėje rinkmenoje, pvz., vertimo\_atnaujinimas.sh, ir suteikti leidimus vykdymui arba tiesiog paleisti:  
**sh vertimo\_atnaujinimas.sh**

Būna, kad įvykdžius tokią komandą, prapuola YaST paleidyklės modulio vertimas. Galbūt turite idėjų, kaip to išvengti?

**5\. Vertimų įkėlimas**

Geriausias būdas – tapti openSUSE vertimų komandos nariu: prisijungti prie [opensuse-translation@opensuse.org](mailto:opensuse-translation@opensuse.org) pašto grupės ir joje pranešti apie savo ketinimą. Naujesnę ir detalesnę informaciją rasite [čia](http://en.opensuse.org/openSUSE:Localization_guide).

Arba vertimą siųskite adresu, kurį rasite [čia](http://en.opensuse.org/OpenSUSE_Localization_Teams).

Daugiau informacijos:

[http://i18n.opensuse.org/](http://i18n.opensuse.org/)

[http://developer.berlios.de/svn/?group\_id=11406](http://developer.berlios.de/svn/?group_id=11406)
