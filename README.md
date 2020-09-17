 abhhi[code-a-thon]
 ----------------------------------
This is my code for Automation in Hacking for code-a-thon GHRaisoni
### How to install

1. ``git clone https://github.com/birdawade11/code-a-thon.git``
1. ``cd code-a-thon``
1. run ``bash requirements.sh``

### How to Use
1. ``cd code-a-thon``
1. ``bash abhhi.sh target.txt``
### what in target.txt
1. google.com  --> names of target root domains
2. yahoo.com   --> mutiple targets at a time

### how it works
abhhi.sh takes 1 root domain from target.txt and :
1. find all the subdomain and save it in ~/project/target.com/senum directory
2. then it scan all the subdoamins for vulnerability and saves it in scan directory
3. then it will take the screen shots for home page of all subdomain found so you can priorities which subdomain to test for vuln first
4. lastly it will finds the open ports from all the hosts found :)

### Author
abhhi

### Credit 
all the public repo, project discovery & kali
