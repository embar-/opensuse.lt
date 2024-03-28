---
title: "„Master PDF Editor“ PDF dokumentų su XFA formomis atvėrimui"
description: ""
tags: [  ]
date: "2017-08-04"
lastmod: "2017-08-04"
author:  "embar"
---
Kai kurie PDF dokumentai savyje turi pildymo formas. Nors, tarkim, _Okular_ ir _Evince_ programos dalį PDF dokumentų su formomis atveria, tačiau XML formų architektūros (XFA) atviro kodo programos Linux sistemoms nepalaiko. Pastebėtina, kad XFA neturi oficialių specifikacijų, tad vienintelė jas pilnai palaikanti programa yra _Adobe Reader_. Deja, paskutinė Linux sistemoms skirta [Adobe Reader 9.5.5](ftp://ftp.adobe.com/pub/adobe/reader/unix/9.x/9.5.5/enu/) versija (2013 metų) jau paseno ir, nors dar veikia _openSUSE Leap 42.3_ sistemose, tačiau _openSUSE Tumbleweed_ sistemose jau nebeveikia.

[**Master PDF Editor**](https://code-industry.net/free-pdf-editor/) yra šiuolaikiška programa (paskutinė 4.2.70 versija pasirodė kiek daugiau nei prieš savaitę) taip pat sėkmingai atveria PDF dokumentus su XFA formomis. Iš programos kūrėjų svetainės [https://code-industry.net/free-pdf-editor/](https://code-industry.net/free-pdf-editor/) galite nemokamai parsisiųsti RPM paketus, kurie tinka diegti ne tik į _RedHat_ ar _CentOS_, bet ir į _openSUSE_ sistemas; ten taip pat rasite DEB ir TAR.GZ paketus kitiems _Linux_ platinamiesiems paketams. Beje, kūrėjai dar siūlo ir mokamą programos versiją su daugiau funkcijų.

Žemiau pateiktas pavyzdys, kaip _Okular_ ir _Master PDF Editor_ programose atvaizduojamas vidurinysis [cmp\_xfa\_form\_poland\_filled.pdf](http://gitlab.itextsupport.com/itext7/samples/raw/master/src/test/resources/sandbox/acroforms/cmp_xfa_form_poland_filled.pdf) pavyzdinis PDF (tinkamai atveria tiek _Master PDF Editor 4.2.79_, tiek _Adobe Reader 9.5.5_, bet ne _Okular 1.1.2 ar_ _Evince 3.20.1_).

[![](/images/stories/PDF-XFA_palyginimas-mini.png "Okular ir Master PDF Editor palyginimas: PDF su XFA formomis atvėrimas")](/images/stories/PDF-XFA_palyginimas.png)

Galite patys palyginti, kaip skirtingose programose atvaizduojami kiti pavyzdiniai PDF dokumentai su formomis iš [http://developers.itextpdf.com/ja/node/3028](http://developers.itextpdf.com/ja/node/3028): [cmp\_remove\_xfa.pdf](http://gitlab.itextsupport.com/itext7/samples/raw/master/src/test/resources/sandbox/acroforms/cmp_remove_xfa.pdf) (atveria tiek _Okular 1.1.2_, tiek _Evince 3.20.1_, tiek _Master PDF Editor 4.2.79_, tiek _Adobe Reader 9.5.5_), [cmp\_purchase\_order\_filled.pdf](http://gitlab.itextsupport.com/itext7/samples/raw/master/src/test/resources/sandbox/acroforms/cmp_purchase_order_filled.pdf) (iš minėtų keturių programų atveria tik _Adobe Reader_).

Informacijos šaltiniai:

[https://lists.opensuse.org/opensuse-factory/2017-08/msg00145.html](https://lists.opensuse.org/opensuse-factory/2017-08/msg00145.html)

[https://en.wikipedia.org/wiki/XFA](https://en.wikipedia.org/wiki/XFA)
