#!/bin/env bash

su 
apt-get update
apt-get install golang
apt-get install git

git clone https://github.com/projectdiscovery/shuffledns.git
cd shuffledns/cmd/shuffledns
go build main.go
mv main shuffledns
cd

git clone https://github.com/projectdiscovery/httpx.git
cd httpx/cmd/httpx
go build httpx.go
cd

git clone https://github.com/projectdiscovery/subfinder.git
cd subfinder/cmd/subfinder/
go build main.go
mv main subfinder

wget https://github.com/michenriksen/aquatone/releases/download/v1.7.0/aquatone_linux_amd64_1.7.0.zip
unzip aquatone_linux_amd64_1.7.0.zip

git clone https://github.com/projectdiscovery/nuclei.git
cd nuclei/v2/cmd/nuclei
go build main.go
mv main.go nuclei

git clone https://github.com/projectdiscovery/nuclei-templates.git

git clone https://github.com/projectdiscovery/naabu.git
cd naabu/cmd/naabu
go build main.go
mv main naabu

