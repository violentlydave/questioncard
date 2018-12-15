#!/bin/bash
#
# Possibly Naughty Bank Routing list:
#
# Collection of bank routing info for possibly questionable types of cards/banks -- namely "prepaid" credit cards
# that are used in scams often.
#
# - Why is this formatted like this?  In case I find a need to automate importing this later, of course!
# - Ranking is just "guesstimated" importance/likelyhood of fraudulent use, so end user can decide what to block.
#
# ** DO NOT TAKE THIS TO MEAN ANY OF THESE BANKS ARE QUESTIONABLE, NOR ANYONE USING THESE CARDS!
#    They are simply used in conjunction with fraud (both online and on the phone), so should possibly be reviewed
#    closer!  This is primarily for scanning incoming emails for potential scams.
#
# Sat Dec 15 09:08:27 EST 2018

#ROUTE#BankName#RouteNumber#Ranking#Notes
#
#ROUTE#Bancorp Bank#031101169#MEDIUM#Paypal Prepaid cards use Bancorp routing - https://www.paypal-community.com/t5/Products-and-Services/How-do-I-find-the-account-number-and-routing-number-for-paypal/td-p/610180
#ROUTE#GreenDot#124303120#HIGH#GreenDot - found in phish - 
#ROUTE#MetaBank#124085244#HIGH#NetSpend cards use Metabank Routing, 12 real locations - https://www.usbanklocations.com/routing-number-073972181.html
#ROUTE#MetaBank#273070278#HIGH#NetSpend cards use Metabank Routing, 12 real locations - https://www.usbanklocations.com/routing-number-073972181.html
#ROUTE#MetaBank#273970116#HIGH#NetSpend cards use Metabank Routing, 12 real locations - https://www.usbanklocations.com/routing-number-073972181.html
#ROUTE#MetaBank#291471024#HIGH#NetSpend cards use Metabank Routing, 12 real locations - https://www.usbanklocations.com/routing-number-073972181.html
#ROUTE#MetaBank#073972181#HIGH#NetSpend cards use Metabank Routing, found by creating account, 12 real locations - https://www.usbanklocations.com/routing-number-073972181.html
#ROUTE#MetaBank#084003997#HIGH#NetSpend cards use Metabank Routing, 12 real locations - https://www.usbanklocations.com/routing-number-073972181.html

IFS=$'\n'

echo "This program doesn't do anything yet, really."

for bank in `grep ROUTE $0 | egrep -v -e 'RouteNumber'`; do
	echo "Bank: $(echo $bank | cut -d \# -f 3) - Routing Number: $(echo $bank | cut -d \# -f 4) - Ranking: $(echo $bank | cut -d \# -f 5)"
done
