#!/bin/awk
BEGIN{ SE=0 ; ME=0 } 
{if (NR>3) {SE+=$2 ; ME+=$3 } } 
END{print SE, ME, SE/ME}
