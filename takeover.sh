#!/bin/bash

#\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
#   =============   =======    =========    =======
#       =====      ===   ===   ====   ===  ===   ===
#       =====      ===   ===   =========   ===   ===
#       =====      =========   ====        =========
#   =========      ===   ===   ====        ===   ===
#////////////////////////////////////////////////////////


echo "Digite o domain"
echo "Exemplo ( site.com.br )"
echo " "
read domain
echo "----------------------------"

echo " "
echo "Informe sua lista"
echo "Exemplo: ( lista.txt )"
read lista
echo "----------------------------"

for cname in $(cat $lista);do
host -t  cname  $cname.$domain | grep "alias for"
done
# jªpª
