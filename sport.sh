#!/bin/env bash

domain=$1
path="~/projects/$domain"
mkdir -p ~/projects/$domain/sport


echo "----------------------------------------------------------"
echo "##################                    ####################"
echo "################       Running          ##################"
echo "################        naabu           ##################"
echo "##################     ---- ----      ####################"
echo "----------------------------------------------------------"

findPorts(){

~/code-a-thon/naabu/cmd/naabu/naabu -silent -iL ~/projects/$domain/domains/domain.txt -o ~/projects/$domain/sports/ports.txt

}
findPorts

echo "----------------------------------------------------------"
echo "################## Done with PORTS #######################"
echo "----------------------------------------------------------"

