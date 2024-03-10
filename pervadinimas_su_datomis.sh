# !/bin/bash
# 
# Pervavdinti MD pagal metaduomenis į YYYY-mm-dd_naujas-pavadnimas.md
#
# Pavyzdžiui:
# ./pamokos/ivairus/livecdliveusb-maai-vietos-diske-97783638.md -> 
# ./pamokos/ivairus/2015-12-06_livecd-liveusb-mažai-vietos-diske.md
#
# Kaip argumentą pateikti santykinį kelią iki MD, „content“ katalogo atžvilgiu
#
# Visus MD galima pervadinti įvykdžius:
# cd content; find . -name "*.md" -type f -follow -exec sh ../pervadinimas_su_datomis.sh '{}' \; ; cd ..

# Šį scenarijų reikia paleisti būnant „content“ aplanke
current_dir="$(pwd)"
if [ "${current_dir##*/}" != "content" ] ; then
   echo "Galite dirbti tik iš content katalogo!"
   exit 1
fi

base_name=$(basename "$1")
DIR="$(dirname "$1")"
DIR_md="$DIR"
if [ "${DIR_md:0:1}" == "." ]; then
	DIR_md=${DIR_md:1}
elif [ "${DIR_md:0:1}" == "/" ]; then
	echo "Nurodykite santykinį kelią, o ne absoliutų"
	exit 2
else
	DIR_md="/${DIR_md}"
fi

if [ "$base_name" != "_index.md" ] ; then

	# Išsitrauti informaciją pervadinimui
	data=`grep -P "^date:" $1 | grep -Po "[0-9\-]+"` ;
	pavadinimas0=`grep -P "^title: " $1 | sed -e 's/title: \"//' -e 's/\"$//' ` ;
	
	# Naujas pavadinimas su data priekyje
	pavadinimas1=`echo "$pavadinimas0" | \
		tr '[:upper:]' '[:lower:]' | tr 'Š' 'š' | \
		tr -d '\`"„“:!*+?(),.' | tr ' \\\/–=' '-' | tr -s '-' `; 
    pavadinimas2=`echo "${data}_${pavadinimas1}.md" | sed "s/-.md$/.md/g" `;
	neleistinas=`echo "$pavadinimas2" | grep -Pv "^[A-Za-z0-9ąčęėįšųūžĄČĘĖĮŠŲŪŽ\-_.,()]+$"`
	
	# Pranešti, jei liko netikėtų simbolių
	if [ ! -z "$neleistinas" ] ; then
		echo "Pataisykite ${0} taip, kad apdorotų netikėtus simbolius šiame pavadinime:"   
		echo "$1"
		echo "$neleistinas"
		echo ""
		exit 3
	fi
	
	# Jei naujas pavadinimas atitinka senąjį - nieko nedaryti
	if [ "$base_name" == "$pavadinimas2" ]; then
		exit 0
	fi
	
	
	# Pervadinti kituose MD dokumentuose, pvz.,
	# iš ({{< ref "/opensuse-įvykiai/opensuse-jump-su-sukompiliuotais-paketais-is-suse-linux-enterprise-pasirodys-kaip-opensuse-leap-15-3" >}})
	# į  ({{< ref "/opensuse-įvykiai/2020-10-22_opensuse-jump-su-sukompiliuotais-paketais-iš-suse-linux-enterprise-pasirodys-kaip-opensuse-leap-15.3}" >}})
	
	# Testavimui
	# echo '({{< ref "/opensuse-įvykiai/opensuse-jump-su-sukompiliuotais-paketais-is-suse-linux-enterprise-pasirodys-kaip-opensuse-leap-15-3" >}})' | \
	#	sed "s#{{< ref \"${DIR_md}/${base_name%.md}\" >}}#{{< ref \"${DIR_md}/${pavadinimas2%.md}\" >}}#g"
	
	find . -name "*.md" -type f -follow -exec \
		sed "s#{{< ref \"${DIR_md}/${base_name%.md}\" >}}#{{< ref \"${DIR_md}/${pavadinimas2%.md}\" >}}#g" \
		-i '{}' \;
	
	# Perkelti
	mv "$1" "$DIR/$pavadinimas2"
	echo "$1 -> $DIR/$pavadinimas2"
		

fi


exit 0
