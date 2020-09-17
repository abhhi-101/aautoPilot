#!/bin/env bash
#24/7

domain=$1 #domain_name_here
mkdir -p ~/projects/$domain/domains
resolver="~/code-a-thon/resolver.txt" 
domains="~/projects/$domain/domains"
mkdir -p ~/projects/$domain/domains/sublister.txt
mkdir -p ~/projects/$domain/domains/subfinder.txt
mkdir -p ~/projects/$domain/domains/certspotter.txt
mkdir -p ~/projects/$domain/domains/amass.txt



echo "----------------------------------------------------------"
echo "##################                    ####################"
echo "################        Finding         ##################"
echo "################       -SubDomain-      ##################"
echo "##################     ---- ----      ####################"
echo "----------------------------------------------------------"

subdomain_enum(){

sublist3r -d $domain -t 50 -p 80,443 -n | awk '/ - / {print$1}' > $domains/sublister.txt
~/code-a-thon/subfinder/cmd/subfinder/subfinder -d $domain  -max-time 2 -nC -nW  > $domains/subfinder.txt
curl -s https://certspotter.com/api/v0/certs\?domain\=$domain | jq '.[].dns_names[]' | sed 's/\"//g' | sed 's/\*\.//g' | sort -u | grep $domain  > $domains/certspotter.txt
timeout 3m amass enum --passive -silent -d $domain > $domains/amass.txt
cat $domains/*.txt | sort | uniq > $domains/all.txt
rm -r $domains/sublister.txt
rm -r $domains/subfinder.txt
rm -r $domains/certspotter.txt
rm -r $domains/amass.txt

~/code-a-thon/shuffledns/cmd/shuffledns/shuffledns -list $domains/all.txt -r $resolver -massdns $massdns > $domains/domain.txt
~/code-a-thon/httpx/cmd/httpx/httpx -silent -websocket -l $domains/domain.txt >> $domains/probed.txt



}
subdomain_enum $1


echo "----------------------------------------------------------"
echo "################## Done with subs ########################"
echo "----------------------------------------------------------"


