#!/bin/env bash

sudo apt-get update
sudo apt-get install golang
sudo apt-get install git

echo "*****Requirements*****"
echo "##########Installing shuffledns##########"
git clone https://github.com/projectdiscovery/shuffledns.git
cd shuffledns/cmd/shuffledns
sudo go build main.go
mv main shuffledns
cd
cd ~/code-a-thon/
echo "##########Installing httpx##########"
git clone https://github.com/projectdiscovery/httpx.git
cd httpx/cmd/httpx
sudo go build httpx.go
cd
cd ~/code-a-thon/
echo "##########Installing subfinder##########"

git clone https://github.com/projectdiscovery/subfinder.git
cd subfinder/cmd/subfinder/
sudo go build main.go
mv main subfinder
cd
cd ~/code-a-thon/
echo "##########Installing aquatone##########"

sudo wget https://github.com/michenriksen/aquatone/releases/download/v1.7.0/aquatone_linux_amd64_1.7.0.zip
unzip aquatone_linux_amd64_1.7.0.zip
cd
cd ~/code-a-thon/
echo "##########Installing nuclei##########"

git clone https://github.com/projectdiscovery/nuclei.git
cd nuclei/cmd/nuclei
sudo go build main.go
mv main.go nuclei
cd
cd ~/code-a-thon/
echo "##########Installing nuclei-templates##########"

git clone https://github.com/projectdiscovery/nuclei-templates.git
cd
cd ~/code-a-thon/
echo "##########Installing naabu##########"

git clone https://github.com/projectdiscovery/naabu.git
cd naabu/cmd/naabu
sudo go build main.go
mv main naabu
cd
cd ~/code-a-thon/

