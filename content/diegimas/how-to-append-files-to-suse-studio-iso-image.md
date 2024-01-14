---
title: "Papildomų failų įtraukimas į ISO, sukurtą SUSE Studio svetainėje"
description: ""
tags: [  ]
date: "2015-01-06"
lastmod: "2017-06-30"
---
Parsisiųskite SUSE Studio ISO. Įsidiekite fuse ir fuseiso paketus. Apsirašykime kintamuosius:

ISO\_senas="$HOME/Linux-senas.iso"  
ISO\_naujas="$HOME/Linux-naujas.iso"  
Aplankas="$HOME/iso\_naujas\_turinys"  
Disko\_pavadinimas="Atnaujintas diskas"

Pasiruošiame redaguoti ISO turinį:

mkdir -p "$HOME/.iso\_orig"  
fuseiso "${ISO\_senas}"  
cd "$HOME/.iso\_orig/"  
isolinux\_path="$(ls boot/\*/loader/isolinux.bin)"   
catalog\_file="${isolinux\_path%isolinux.bin}boot.cat"  
MBR\_id="$(ls boot/0x\*)"  
mkdir -p "$Aplankas"  
cp "$HOME/.iso\_orig/\*" "$Aplankas"  
cd "$Aplankas"  
fusermount -u "$HOME/.iso\_orig"

Redaguokite turinį katalogo, kurį nurodėte kintamajame „Aplankas“.

Pavyzdžiui, diskas Windows sistemoje gali turėti nuosavą logotipą, o bandant diską atverti būtų atveriamas HTML dokumentas. Tada kataloge, kurį nurodėte kintamajame „Aplankas“, galite įdėti 16x16, 32x32 arba 48x48 dydžio logotipas.ico paveiksliuką formatu ir Apie.html failą. Dabar sukurkite Autorun.inf failą, kurio turinys būtų:

\[autorun\]  
shellexecute=Apie.html  
icon=logotipas.ico  
label=Disko pavadinimas

Kai pridėsite norimus failus, naują ISO sukursite įvykdę:

mkisofs -R -J -v -A "${MBR\_id}" -b "${isolinux\_path}" -c "${catalog\_file}" \\  
 -no-emul-boot -boot-load-size 4 -boot-info-table \\  
 -V "${Disko\_pavadinimas}" -o "${ISO\_naujas}" "${Aplankas}"
