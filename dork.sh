#!/bin/bash
echo""
echo "CADASTRE O TOKEN DO GIT E COLOQUE DENTRO DA PASTA TF/TOKENFILE"
echo""
echo "1 = Procurar por org com lista medium.txt"
echo "2 = Procurar por org com lista alldorksv3"
echo "3 = Procurar por site"

read -n1 -p 'Opção: ' OPCAO

case $OPCAO in 

1) #org
echo ""
echo -n "COLOQUE A ORG -->: ";read org
python3 GitDorker.py -tf tf/TOKENSFILE -d Dorks/medium_dorks.txt  -org $org
;;


2) #org1

echo""
echo -n "COLOQUE A ORG -->: ";read org1
python3 GitDorker.py -tf tf/TOKENSFILE -d Dorks/alldorksv3  -org $org1
;;

3) #site
echo""
echo -n "COLOQUE O SITE -->: ";read site
python3 GitDorker.py -tf tf/TOKENSFILE  -q $site -p -ri -d Dorks/medium_dorks.txt
;;
*)
echo""
echo"insira o numero correto"

esac
