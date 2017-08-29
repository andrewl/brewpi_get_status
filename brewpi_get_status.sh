#!/bin/bash

LOGFILE=/home/brewpi/logs/stdout.txt

DATE=$(grep "BeerTemp" $LOGFILE | tail -n 1 | cut -d " " -f 1-4)
BEER_TEMP=$(grep "BeerTemp" $LOGFILE | tail -n 1 | cut -d ":" -f 4 | cut -d "," -f 1)
FRIDGE_TEMP=$(grep "BeerTemp" $LOGFILE | tail -n 1 | cut -d ":" -f 7 | cut -d "," -f 1)

echo "$DATE Beer Temp $BEER_TEMP Fridge Temp $FRIDGE_TEMP"
