#!/bin/env bash

domain=$1
mkdir -p ~/projects/$domain/scan/nuclei
probed="~/projects/$domain/domains/probed.txt"
scan="~/projects/$domain/scan/nuclei"



echo "----------------------------------------------------------"
echo "##################                    ####################"
echo "################        Runninng         ##################"
echo "################        *nuclei*         ##################"
echo "##################       ------        ####################"
echo "----------------------------------------------------------"


~/code-a-thon/nuclei/cmd/nuclei/nuclei -c 200 -silent -l ~/projects/$domain/domains/probed.txt -t ~/code-a-thon/nuclei-templates/cves -o cves
~/code-a-thon/nuclei/cmd/nuclei/nuclei -c 200 -silent -l ~/projects/$domain/domains/probed.txt -t ~/code-a-thon/nuclei-templates/dns -o dns
~/code-a-thon/nuclei/cmd/nuclei/nuclei -c 200 -silent -l ~/projects/$domain/domains/probed.txt -t ~/code-a-thon/nuclei-templates/generic-detections -o generic-detection
~/code-a-thon/nuclei/cmd/nuclei/nuclei -c 200 -silent -l ~/projects/$domain/domains/probed.txt -t ~/code-a-thon/nuclei-templates/panels -o panels	
~/code-a-thon/nuclei/cmd/nuclei/nuclei -c 200 -silent -l ~/projects/$domain/domains/probed.txt -t ~/code-a-thon/nuclei-templates/subdomain-takeover	 -o subdomain-takeover
~/code-a-thon/nuclei/cmd/nuclei/nuclei -c 200 -silent -l ~/projects/$domain/domains/probed.txt -t ~/code-a-thon/nuclei-templates/tokens -o tokens
~/code-a-thon/nuclei/cmd/nuclei/nuclei -c 200 -silent -l ~/projects/$domain/domains/probed.txt -t ~/code-a-thon/nuclei-templates/workflows	 -o workflows
~/code-a-thon/nuclei/cmd/nuclei/nuclei -c 200 -silent -l ~/projects/$domain/domains/probed.txt -t ~/code-a-thon/nuclei-templates/default-credentials -o default-credentials
~/code-a-thon/nuclei/cmd/nuclei/nuclei -c 200 -silent -l ~/projects/$domain/domains/probed.txt -t ~/code-a-thon/nuclei-templates/files -o files
~/code-a-thon/nuclei/cmd/nuclei/nuclei -c 200 -silent -l ~/projects/$domain/domains/probed.txt -t ~/code-a-thon/nuclei-templates/security-misconfiguration -o security-misconfiguration
~/code-a-thon/nuclei/cmd/nuclei/nuclei -c 200 -silent -l ~/projects/$domain/domains/probed.txt -t ~/code-a-thon/nuclei-templates/payloads -o payloads
~/code-a-thon/nuclei/cmd/nuclei/nuclei -c 200 -silent -l ~/projects/$domain/domains/probed.txt -t ~/code-a-thon/nuclei-templates/technologies -o technologies	
~/code-a-thon/nuclei/cmd/nuclei/nuclei -c 200 -silent -l ~/projects/$domain/domains/probed.txt -t ~/code-a-thon/nuclei-templates/vulnerabilities -o vulnerabilities

mv cves $scan/cve
mv dns $scan/dns
mv generic-detection $scan/generic-detection
mv panels $scan/panels
mv subdomain-takeover $scan/subdomain-takeover
mv tokens $scan/tokens
mv workflows $scan/workflows
mv default-credentials $scan/default-credentials
mv files $scan/files
mv security-misconfiguration $scan/security-misconfiguratione
mv payloads $scan/payloads
mv cves $scan/cve
mv technologies $scan/technologies


echo "----------------------------------------------------------"
echo "################## Done with scann ########################"
echo "----------------------------------------------------------"























