#!/bin/env bash

domain=$1

probed="~/projects/$domain/domains/probed.txt"
scan="~/projects/$domain/scan"

mkdir -p $scan/nuclie

echo "----------------------------------------------------------"
echo "##################                    ####################"
echo "################        Runninng         ##################"
echo "################        *nuclei*         ##################"
echo "##################       ------        ####################"
echo "----------------------------------------------------------"


~/code-a-thon/nuclei/cmd/nuclei/nuclei -c 200 -silent -l ~/projects/$domain/domains/probed.txt -t ~/code-a-thon/nuclei-templates/cves -o $scan/nuclie/cves
~/code-a-thon/nuclei/cmd/nuclei/nuclei -c 200 -silent -l ~/projects/$domain/domains/probed.txt -t ~/code-a-thon/nuclei-templates/dns -o $scan/nuclie/dns
~/code-a-thon/nuclei/cmd/nuclei/nuclei -c 200 -silent -l ~/projects/$domain/domains/probed.txt -t ~/code-a-thon/nuclei-templates/generic-detections -o $scan/nuclie/generic-detections		
~/code-a-thon/nuclei/cmd/nuclei/nuclei -c 200 -silent -l ~/projects/$domain/domains/probed.txt -t ~/code-a-thon/nuclei-templates/panels -o $scan/nuclie/panels	
~/code-a-thon/nuclei/cmd/nuclei/nuclei -c 200 -silent -l ~/projects/$domain/domains/probed.txt -t ~/code-a-thon/nuclei-templates/subdomain-takeover	 -o $scan/nuclie/subdomain-takeover
~/code-a-thon/nuclei/cmd/nuclei/nuclei -c 200 -silent -l ~/projects/$domain/domains/probed.txt -t ~/code-a-thon/nuclei-templates/tokens -o $scan/nuclie/tokens
~/code-a-thon/nuclei/cmd/nuclei/nuclei -c 200 -silent -l ~/projects/$domain/domains/probed.txt -t ~/code-a-thon/nuclei-templates/workflows	 -o $scan/nuclie/workflows
~/code-a-thon/nuclei/cmd/nuclei/nuclei -c 200 -silent -l ~/projects/$domain/domains/probed.txt -t ~/code-a-thon/nuclei-templates/default-credentials -o $scan/nuclie/default-credentials
~/code-a-thon/nuclei/cmd/nuclei/nuclei -c 200 -silent -l ~/projects/$domain/domains/probed.txt -t ~/code-a-thon/nuclei-templates/files -o $scan/nuclie/files
~/code-a-thon/nuclei/cmd/nuclei/nuclei -c 200 -silent -l ~/projects/$domain/domains/probed.txt -t ~/code-a-thon/nuclei-templates/security-misconfiguration -o $scan/nuclie/security-misconfiguration
~/code-a-thon/nuclei/cmd/nuclei/nuclei -c 200 -silent -l ~/projects/$domain/domains/probed.txt -t ~/code-a-thon/nuclei-templates/payloads -o $scan/nuclie/payloads
~/code-a-thon/nuclei/cmd/nuclei/nuclei -c 200 -silent -l ~/projects/$domain/domains/probed.txt -t ~/code-a-thon/nuclei-templates/technologies -o $scan/nuclie/technologies	
~/code-a-thon/nuclei/cmd/nuclei/nuclei -c 200 -silent -l ~/projects/$domain/domains/probed.txt -t ~/code-a-thon/nuclei-templates/vulnerabilities -o $scan/nuclie/vulnerabilities


echo "----------------------------------------------------------"
echo "################## Done with scann ########################"
echo "----------------------------------------------------------"























