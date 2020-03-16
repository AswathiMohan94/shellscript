#!/bin/bash -x
echo "fortytwofeet = "$((42*12))
length=`echo - | awk '{print '60'*'3.28'}'`
width=`echo - | awk '{print '40'*'3.28'}'`
area=`echo - | awk '{print '$length'*'$width'}'`
echo "area in meters = " $area
acre=`echo - | awk '{print '$area'/'$4046.8564224'}'`
result=`echo - | awk '{print '$acre'*'25'}'`
echo "area of 25 acres in meter = "$result
