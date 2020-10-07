#!/bin/bash

#\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
#   =============   =======    =========    =======
#       =====      ===   ===   ====   ===  ===   ===
#       =====      ===   ===   =========   ===   ===
#       =====      =========   ====        =========
#   =========      ===   ===   ====        ===   ===
#////////////////////////////////////////////////////////

echo " ______________________________________________"
echo "|                                              |"
echo "|----------- Ferramenta de WebRecon -----------|"
echo "|----------------------------------------------|"
echo "|  					       |"
echo "| 1 - Diretorios | 2 - Arquivos | 3 - Paginas  |"
echo "|______________________________________________|"
echo " "
echo "Digite a função(1,2,3):"
read funcao



case $funcao in
"1")


echo " "
echo "Digite o site( http://site.com.br ):"
read site
echo " "
echo "Informe a lista( lista.txt):"
read lista


for fileweb in $(cat $lista);do
fufor=$(curl -s -H "User-Agent: GoogleSearch" -o /dev/null -w "%{http_code}" $site/$fileweb/)
if [ funfor == 200 ]
then
echo "Diretorio  encontrado $site/$fileweb/"
fi
done


#----------------------- FUNCAO 2 ----------------------
;;
"2")


echo " "
echo "Digite o site( http://site.com.br ):"
read site
echo " "
echo "Informe a lista( lista.txt):"
read lista
echo " "
echo "Informe a extensão"
read exte

for fileweb in $(cat $lista);do
funfor=$(curl -s -H "User-Agent: GoogleSearch"  -o /dev/null -w "%{http_code}" $site/$fileweb.$ext)

if [ funfor == 200 ]
then
echo " Arquivo encontrado $site/$fileweb.$ext"
fi
done



#----------------------- FUNCAO 3 ---------------------------
;;
"3")


echo " "
echo "Digite o site( http://site.com.br ):"
read site
echo " " 
echo "Informe a lista( lista.txt):"
read lista
echo " "
echo "Informe a extensão"
read exte 

for fileweb in $(cat $lista);do
funfor=$(curl -s -H "User-Agent: GoogleSearch" -o /dev/null -w "%{http_code}" $site/$fileweb)
if [ funfor == 200 ]
then
echo "Pagina  encontrado $site/$fileweb"
fi
done 

;;
esac
# jªpª

