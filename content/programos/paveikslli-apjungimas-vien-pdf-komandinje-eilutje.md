---
title: "Paveikslėlių apjungimas į vieną PDF komandinėje eilutėje."
description: ""
tags: [  ]
date: "2011-08-09"
lastmod: "2017-06-29"
---
Tarkime viename aplanke yra keletas paveikslėlių, kurių pavadinimai baigiasi „.jpeg“.  
Juos sujungsime į vieną PDF terminale įvykdę komandą:

**cd _"/home/NAUDOTOJAS/Paveikslėlių/Aplankas_"  
convert -define pdf:use-trimbox=true _\*.jpeg išvestis_.pdf**
