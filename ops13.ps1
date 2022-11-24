#Script: Ops 201 Class 13 Ops Challenge Solution
#Author: Cameron Griffin
#Date of latest revision: 11-23-2022
#Purpose: A Powershell that includes whois dig host nslookup

#A lot of the material came from: https://adamtheautomator.com/powershell-functions/
#Along with credit to Scott V. for examples

#Define varibles 
yes_arg="y"

# #Function to lookup domain name
# function DomainName {
#     whois $webfile > domain.txt
# }

#Pulls lookup domain namewebsite records
function DigName {
    dig $webfile >> domain.txt
    whois $webfile > domain.txt
    host $webfile >> domain.txt
    nslookup $webfile >> domain.txt
}

#While loop that reads out the function
