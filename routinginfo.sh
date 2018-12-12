#!/bin/bash
#
# Possibly Naughty Routing list:
#
# Collection of bank routing info for possibly questionable types of cards/banks -- namely "prepaid" creditcards
# 	that are used in scams often.
#
# Why is this formatted like this?  In case I find a need to automate importing this later, of course!
#
# ** DO NOT TAKE THIS TO MEAN ANY OF THESE BANKS ARE QUESTIONABLE, NOR ANYONE USING THESE CARDS!
#    They are simply used in conjunction with fraud (both online and on the phone), so should possibly be reviewed
#    closer!  This is primarily for scanning incoming emails for potential scams.


#ROUTE#BankName#RouteNumber#Notes
#
#ROUTE#MetaBank#124085244#NetSpend cards use Metabank Routing, 12 real locations - https://www.usbanklocations.com/routing-number-073972181.html
#ROUTE#MetaBank#273070278#NetSpend cards use Metabank Routing, 12 real locations - https://www.usbanklocations.com/routing-number-073972181.html
#ROUTE#MetaBank#273970116#NetSpend cards use Metabank Routing, 12 real locations - https://www.usbanklocations.com/routing-number-073972181.html
#ROUTE#MetaBank#291471024#NetSpend cards use Metabank Routing, 12 real locations - https://www.usbanklocations.com/routing-number-073972181.html
#ROUTE#MetaBank#073972181#NetSpend cards use Metabank Routing, found by creating account, 12 real locations - https://www.usbanklocations.com/routing-number-073972181.html
#ROUTE#MetaBank#084003997#NetSpend cards use Metabank Routing, 12 real locations - https://www.usbanklocations.com/routing-number-073972181.html
#ROUTE#GreenDot#124303120#GreenDot - found in phish - 

IFS=$'\n'

echo "This program doesn't do anything yet, really."

for bank in `grep ROUTE $0 | egrep -v -e 'RouteNumber'`; do
	echo "Bank: $(echo $bank | cut -d \# -f 3) - Routing Number: $(echo $bank | cut -d \# -f 4)"
done
