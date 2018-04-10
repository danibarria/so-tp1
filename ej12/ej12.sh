#!/bin/bash

echo "ingrese ciudad"
read ciudad
base="https://maps.googleapis.com/maps/api/geocode/json?key=AIzaSyA3memeBiMaEPPLY7zAp4TzA2rqcLo0C1w&new_forward_geocoder=true&address="

curl $base$ciudad > ciudad.json
if [ $? ]
then
    echo "latitud"
    cat ciudad.json | grep "lat" -m 1
    echo "longitud"
    cat ciudad.json | grep "lng" -m 1
else
    echo "instala curl"
fi


#wget $base$ciudad 
#wget https://maps.googleapis.com/maps/api/geocode/json?address=trelew > ciudad.json