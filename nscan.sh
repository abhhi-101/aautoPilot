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


~/aautoPilot/nuclei/cmd/nuclei/nuclei -c 200 -silent -l ~/projects/$domain/domains/probed.txt -t ~/aautoPilot/nuclei-templates/cves -o cves
~/aautoPilot/nuclei/cmd/nuclei/nuclei -c 200 -silent -l ~/projects/$domain/domains/probed.txt -t ~/aautoPilot/nuclei-templates/dns -o dns
~/aautoPilot/nuclei/cmd/nuclei/nuclei -c 200 -silent -l ~/projects/$domain/domains/probed.txt -t ~/aautoPilot/nuclei-templates/generic-detections -o generic-detection
~/aautoPilot/nuclei/cmd/nuclei/nuclei -c 200 -silent -l ~/projects/$domain/domains/probed.txt -t ~/aautoPilot/nuclei-templates/panels -o panels	
~/aautoPilot/nuclei/cmd/nuclei/nuclei -c 200 -silent -l ~/projects/$domain/domains/probed.txt -t ~/aautoPilot/nuclei-templates/subdomain-takeover	 -o subdomain-takeover
~/aautoPilot/nuclei/cmd/nuclei/nuclei -c 200 -silent -l ~/projects/$domain/domains/probed.txt -t ~/aautoPilot/nuclei-templates/tokens -o tokens
~/aautoPilot/nuclei/cmd/nuclei/nuclei -c 200 -silent -l ~/projects/$domain/domains/probed.txt -t ~/aautoPilot/nuclei-templates/workflows	 -o workflows
~/aautoPilot/nuclei/cmd/nuclei/nuclei -c 200 -silent -l ~/projects/$domain/domains/probed.txt -t ~/aautoPilot/nuclei-templates/default-credentials -o default-credentials
~/aautoPilot/nuclei/cmd/nuclei/nuclei -c 200 -silent -l ~/projects/$domain/domains/probed.txt -t ~/aautoPilot/nuclei-templates/files -o files
~/aautoPilot/nuclei/cmd/nuclei/nuclei -c 200 -silent -l ~/projects/$domain/domains/probed.txt -t ~/aautoPilot/nuclei-templates/security-misconfiguration -o security-misconfiguration
~/aautoPilot/nuclei/cmd/nuclei/nuclei -c 200 -silent -l ~/projects/$domain/domains/probed.txt -t ~/aautoPilot/nuclei-templates/payloads -o payloads
~/aautoPilot/nuclei/cmd/nuclei/nuclei -c 200 -silent -l ~/projects/$domain/domains/probed.txt -t ~/aautoPilot/nuclei-templates/technologies -o technologies	
~/aautoPilot/nuclei/cmd/nuclei/nuclei -c 200 -silent -l ~/projects/$domain/domains/probed.txt -t ~/aautoPilot/nuclei-templates/vulnerabilities -o vulnerabilities

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























