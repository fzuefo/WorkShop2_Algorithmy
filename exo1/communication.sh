#!/bin/bash

exe1="$1"
exe2="$2"
exe3="$3"

tab1="tab.txt"
tab2="tab2.txt"
tab3=""


ComputeResFromTab() {
    path="$1"
    output="$2"

    ligne3=$(sed -n '3p' "$path")
    valeurs3=$(echo "$ligne3" | cut -d';' -f2-)
    IFS=';' read -r -a tableau3 <<< "$valeurs3"

    IFS=',' read -r -a tabVal <<< "$output"

    res=0
    for val in "${tabVal[@]}"; do
	index=$((val - 1))	
	res=$((res + tableau3[index]))
    done

    echo "$res"
}

ComputeTempFromTab() {
    path="$1"
    output="$2"
    
    ligne3a=$(sed -n '3p' "$path")
    valeurs3a=$(echo "$ligne3a" | cut -d';' -f2-)
    IFS=';' read -r -a tableau3a <<< "$valeurs3a"

    ligne4a=$(sed -n '4p' "$path")
    valeurs4a=$(echo "$ligne4a" | cut -d';' -f2-)
    IFS=';' read -r -a tableau4a <<< "$valeurs4a"


    IFS=',' read -r -a tabVala <<< "$output"

    tmp=0
    for vale in "${tabVala[@]}"; do
	indexx=$((vale))  
	tmp=$((tmp + tableau4a[indexx]))
    done
    
    echo "$tmp"
}




#output=$($exe1 $tab1)

#ress=$(ComputeResFromTab "$tab1" "$output")

#echo finish
#echo "$ress"


############STEP 1#############
echo "Let try, this !"

pv=100

output=$($exe1 $tab1 $pv)

ress=$(ComputeResFromTab "$tab1" "$output")

if [ "$ress" -eq "$pv" ]; then
    echo "Super c'est exactement ce qu'il me fallait !"
else
    echo "Vraiment dommage, le résultat n'est pas satisfaisant, tu n'es pas très FOR !"
    sleep 1.3
    for i in $(seq 1 3); do
        sleep 0.7
        echo -n "HA "
    done
    sleep 1
    echo ""
    echo "c'était du sarcasme"
    exit
fi

pv=99

output=$($exe1 $tab1 $pv)

ress=$(ComputeResFromTab "$tab1" "$output")

if [ "$ress" -eq "$pv" ]; then
    echo "Génial il marche même quand la cible à des pv faibles."
else
    echo "Vraiment dommage, ce n'est pas grave, l'être humain n'est pas parfait..."
    exit
fi


echo ""
echo "Bon, sur une partie ça à l'air de bien marcher."
echo "Okai, laisse-moi le temps de faire plusieurs parties. Je reviens vers toi si j'ai un problème."


sleep 1
for i in $(seq 1 13); do
    sleep 0.1
    echo -n " . "
done



############STEP 2#############
if [ -z "$2" ]; then
    echo ""
    echo -e "\e[3mCalcul de la donnée\e[0m"
    echo -n "["
    for i in $(seq 1 22); do
	sleep 0.3
	echo -n "#"
    done

    for i in $(seq 1 5); do
	sleep 0.6
	echo -n "#"
    done

    for i in $(seq 1 2); do
	sleep 1.4
	echo -n "#"
    done

    for i in $(seq 1 10); do
	sleep 0.05
	echo -n "#"
    done
    echo -n "]"
    echo ""
    echo ""
    echo "Bon ton programme fonctionne mais je puis t'assurer"
    echo "que je ne fais pas le maximum de dégât que je pourrais faire. Après analyse voilà le problème."
    echo "Chaque lancé de sort prend un certain temps. Cela est variable d'un sort à l'autre, il fraudrait donc le prendre en compte."
    echo ""
    echo "Il faudrait que tu changes ton algorithme."
    
    echo -e "Voila, j'ai créé une nouvelle table \e[3mtab2.txt\e[0m et je t'ai rajouté une nouvelle ligne représentant le temps d'incantation."
    echo ""
    echo "C'est toi l'expert, je te laisse me trouver une solution !"
    
    echo "Continue de m'envoyer le premier programme en premier argument"
    echo "J'aimerais pouvoir continuer de les comparer."
    exit
else
    echo ""
    echo "Je vois que tu es allé vite ! Vérifions cela "



    pv=100
    max=100
    output=$($exe1 $tab2 $pv)
    
#    pair=($(ComputeResFromTab "$tab2" "$output"))
#    temp=($(ComputeTempFromTab "$tab2" "$output"))

 #   echo "output"
  #  echo "test ${ress}, ${temp}"

    


    
#    if [ "$ress" -eq "$pv" ] && [ "$temp" -lt "$max" ] && [ "$temp" -gt "$min" ]; then
#	echo -e "\e[1;37mTest Succes\e[0m"
 #   else
#	echo -e "\e[1;41mEchec: la suite que tu me donne ne fournis pas assé de dega ou pas assévite\e[0m"
#	echo "Get: ${ress} dmg and ${temp}"

#	exit
#    fi
 
    echo "J'ai changé ma liste de sort, on va voir si tout marche"
    echo "problem de script demandé a l'intervenant"

      #pv=40
    #max=10
    #output=$($exe1 $tab2 $pv)
    
##    pair=($(ComputeResTempFromTab "$tab2" "$output"))

   # ress=${pair[0]}
   # temp=${pair[1]}
    #echo "test ${ress}, ${temp}"
    
    #if [ "$ress" -eq "$pv" ] && [ "$temp" -lt "$max" ] && [ "$temp" -gt "$min" ]; then
#	echo -e "\e[1;37mTest Succes\e[0m"
#	echo "Génial ton programme gère déjà les limites de temps !"
 #   else
#	echo "Cela ne va pas, je n'ai même pas le temps de faire un sort."
#	echo "On va rajouter une limite de temps à 10 seconds."
 #	echo ""
#	echo "Pour la mise a jour fournis"
#	exit	
 #   fi
 
fi

############STEP 3#############
   echo "Il y a une enorme iSSUe avec le resutlat que tu me donne sur 80%"
    echo "des parties je n'est pas eu le temp de faire l'entièreté des sorts"
 
