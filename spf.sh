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
echo "---------------------------"


host -t txt $domain | grep "-all"

# jªpª
