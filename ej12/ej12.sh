#!/bin/bash

echo "ingrese ciudad"
read ciudad
base="https://maps.googleapis.com/maps/api/geocode/json?address="

curl $base$ciudad > ciudad.json

cat ciudad.json | grep "lat"
#wget $base$ciudad 
#wget https://maps.googleapis.com/maps/api/geocode/json?address=trelew > ciudad.json