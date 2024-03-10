---
title: "Visos RPM paketų saugyklos parsisiuntimas"
description: ""
tags: [  ]
date: "2017-08-02"
lastmod: "2017-09-05"
author:  "embar"
---
Kartais nuotolinės saugyklos pasiekiamos tik HTTP protokolu, tad nors ir matote paskiras rinkmenas, tačiau būtų vargas saugyklos aprašo rinkmenas ir paketus susirinkti po vieną. O kai kuriais atvejais netgi bandant pasiekti saugyklą HTTP protokolu matote netikrą pranešimą, kad saugyklos nėra, tačiau saugykla matoma būna paketų tvarkytuvei (pavyzdžiui, taip vienu laikotarpiu anksčiau buvo su NVIDIA tvarkyklių saugykla openSUSE Leap sistemoms). Jei norite susikurti vietinę saugyklą parsisiųsdami visus nuotolinėje saugykloje esančius paketus, galite įvykdyti:

\# !/bin/bash  
\# RPM saugyklos parsisiuntimas  
  
\# Apibrėžti kintamuosius  
\# Saugyklos URL adresas. Kaip pavyzdys įrašyta NVIDIA saugykla, jūs pakeiskite į savo  
URL="http://download.nvidia.com/opensuse/leap/42.3"  
\# Vieta, kur įrašyti saugyklą. Dabar veikiamajame kataloge kurtų pakatalogį „saugykla“  
DIR="$(pwd)/saugykla"  
  
\# Jei saugykla jau kartą parsiųsta, tuomet parsisiųsti naujus meta duomenis  
if \[ -d "${DIR}/repodata" \] ; then  
 echo "Ištrinam seną repodata"  
 rm -f -r "${DIR}/repodata/"  
fi  
mkdir -p "${DIR}/repodata" || true  
wget -nv ${URL}/repodata/repomd.xml.key -O "${DIR}/repodata/repomd.xml.key"  
wget -nv ${URL}/repodata/repomd.xml.asc -O "${DIR}/repodata/repomd.xml.asc"  
wget -nv ${URL}/repodata/repomd.xml -O "${DIR}/repodata/repomd.xml"  
  
\# Meta duomenų analizė ir paketų parsisiuntimas  
for XML\_GZ in \`grep -Po "repodata/.\*xml.gz" "${DIR}/repodata/repomd.xml"\` ; do  
 if \[ ! -f "${DIR}/${XML\_GZ}" \] ; then  
 wget -nv -x ${URL}/${XML\_GZ} -O "${DIR}/${XML\_GZ}" ;   
 fi  
 if \[ ! -z "$(echo "${XML\_GZ}" | grep "primary.xml.gz")" \] ; then  
 for RPM in \`zcat "${DIR}/${XML\_GZ}" | grep "location href=" | sed "s/ /\_/g"\` ; do  
 RPM="${RPM%\\"\*}"  
 RPM="${RPM#\*\\"}"  
 if \[ ! -d "${DIR}/${RPM%/\*}" \] ; then  
 mkdir -p "${DIR}/${RPM%/\*}" ;  
 fi  
 if \[ ! -f "${DIR}/${RPM}" \] ; then  
 wget -nv -x "${URL}/${RPM}" -O "${DIR}/${RPM}" ;  
 fi  
 done  
 fi  
done

Šį scenarijų galite nusikopijuoti į paprastą tekstų rengyklę, išsisaugoti tarkim pavadinimu _saugyklos\_parsiuntimas.sh_, šią scenarijaus rinkmeną padaryti vykdomąja ir vėliau naudoti saugyklos atnaujinimui šią rinkmeną paleidžiant kaip programą, užuot kas kart vedant komandas konsolėje. Pakartotinai vykdant programėlę, seni meta duomenys pašalinami ir parsiunčiami nauji, o RPM paketai parsiunčiami tik tuo atveju, jei jie dar nėra parsiųsti; senų RPM paketų šis scenarijus nešalina.

Jei norite, kad naują vietinę saugyklą matytų/naudotų jūsų _openSUSE_ sistemos paketų tvarkytuvės, įtraukite ją per _YaST > Saugyklos_ arba įvykdydami komandą:

zypper ar --refresh "/kelias/iki/saugyklos/" "saugyklos pavadinimas"
