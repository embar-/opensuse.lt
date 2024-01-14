---
title: "NTFS išorinių diskų prijungimas KDE 4.6 aplinkai"
description: ""
tags: [  ]
date: "2011-07-18"
lastmod: "2017-09-17"
---
_Error ...org.freedesktop.UDisks.Error. Failed: Requested filesystem type is neither well-known nor in /proc/filesystems nor in /etc/filesystems_

Tokia klaida pasitaiko šviežiai įdiegtoje openSUSE sistemoje su KDE 4.6 aplinka bandant prijungti ntfs disk_ą_. (Tokios bėdos neturi GNOME aplinkos Nautilus programa)  
Į terminalo programos langą nukopijuokite:

  
**su -c "echo 'ntfs' >> /etc/filesystems"**

  
Nuspauskite _įvesties klavišą (Enter)_ ir įveskite administratoriaus slaptažodį veiksmo patvirtinimui. Tai tereiktų  
padaryti viena kartą.
