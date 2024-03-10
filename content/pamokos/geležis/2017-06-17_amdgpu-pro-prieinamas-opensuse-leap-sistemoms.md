---
title: "AMDGPU-PRO prieinamas openSUSE Leap sistemoms"
description: ""
tags: [  ]
date: "2017-06-17"
lastmod: "2017-06-29"
---
Nors _AMDGPU-PRO_ tvarkyklės dar nebuvo prieinamos _openSUSE_ sistemoms pasirodant _Leap 42.2_ versijai, jos tapo prieinamos vėliau. _AMDGPU-PRO_ tvarkyklės palaiko _AMD HD 7000/8000 serijų, Radeon R5/R7/R9/RX, Radeon Pro_ ir naujesnes vaizdo plokštes, t. y. pasirodžiusias maždaug nuo 2012 metų. Nors kol kas šios tvarkyklės nėra prieinamos nuotolinės saugyklos pavidalu, tvarkykles supakuotos RPM paketų saugyklos pavidalu galite parsisiųsti iš [http://support.amd.com/en-us/kb-articles/Pages/AMDGPU-PRO-Driver-for-Linux-Release-Notes.aspx](http://support.amd.com/en-us/kb-articles/Pages/AMDGPU-PRO-Driver-for-Linux-Release-Notes.aspx) puslapio. Kadangi _openSUSE Leap 42.2_ pagrindas atitinka _SUSE Linux Enterprise 12 SP2_, ieškokite nuorodų su „SLED/SLES 12 SP2“. Šiai dienai (2017-06-17) siūloma parsiųsti „AMDGPU-Pro Driver Version 17.10 for SLED/SLES 12 SP2“. Parsisiuntę TAR.XZ archyvą toliau galite vadovautis [http://support.amd.com/en-us/kb-articles/Pages/How-To-Install-Uninstall-AMDGPU-PRO-driver-on-a-SLED-SLES-12-SP-2-Based-System.aspx](http://support.amd.com/en-us/kb-articles/Pages/How-To-Install-Uninstall-AMDGPU-PRO-driver-on-a-SLED-SLES-12-SP-2-Based-System.aspx) pateiktomis komandinės eilutės instrukcijomis arba galite viską atlikti grafinėje aplinkoje:

*   išpakuokite archyvą bet kurioje savo kompiuterio vietoje (tarkim, /tmp kataloge);
*   prisidėkite kaip vietinę saugyklą  
    *   eidami per _YaST → (Programinė įranga) → Saugyklos_;
    *   spausdami „Pridėti“;
    *   pasirinkdami „vietinio katalogo“ saugyklos tipą;
    *   kitame lange nurodydami kelią iki saugyklos (pvz. „/tmp/amdgpu-pro-17.10-429170“) bei pavadinimą (pvz., „AMD“), parinktis „RPM pilnas katalogas“ turi likti nepažymėta (ji skirta katalogams, kuriuose sudėti paskiri RPM paketai);
    *   užverdami saugyklų tvarkytuvę patvirtindami pakeitimus;
*   eikite _YaST → (Programinė įranga) → Programinės įrangos tvarkytuvė_;
*   susiraskite ir įsidiegti _amdgpu-pro_ paketą.
*   jei matote pranešimą, kad trūksta _dkms_ paketo, pridėkite [Packman](https://en.opensuse.org/Additional_package_repositories#Packman) saugyklą arba ieškokite _dkms_ paketo per [http://software.opensuse.org/package/dkms](http://software.opensuse.org/package/dkms) .

Beje, senesnėms openSUSE versijoms (iki _openSUSE Leap 42.1_ imtinai) buvo prieinamos senesnės kartos nuosavybinės _AMD fglrx/Catalyst_ tvarkyklės, tačiau jų nebepalaiko pati _AMD_; šios senos _AMD fglrx/Catalyst_ tvarkyklės tiko _AMD/ATi Radeon HD 5000_ ir naujesnėms vaizdo plokštėms, t. y. pasirodžiusioms maždaug nuo 2009 metų.

Nors senesnėms vaizdo plokštėms jų gamintojai nebeteikia tvarkyklių, Linukso branduolys turėtų gerai jas palaikyti netgi nediegiant nieko papildomai (_radeon_ tvarkyklė iš standartinio _xf86-video-ati_ paketo turėtų būti naudojama automatiškai).
