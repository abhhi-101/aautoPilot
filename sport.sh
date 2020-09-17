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

~/code-a-thon/naabu/cmd/naabu/naabu -silent -hL $path/domains/domain.txt -o $path/sports/ports.txt

}
findPorts

echo "----------------------------------------------------------"
echo "################## Done with PORTS #######################"
echo "----------------------------------------------------------"

