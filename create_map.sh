#!bin/bash

#sh file.sh num si prefix template

if [ "$#" -ne 4 ]
then
        echo "Invalid arguements"
        echo "Please use the below syntax to run the script:"
        echo "sh createmap.sh <no. of vms to create> <starting index> <prefix> <template>"
        exit 1
fi
echo "" > /etc/salt/vmap

echo "$4:" > /etc/salt/vmap

count=0

while [ $count -lt $1 ]
do
        count=`expr $count + 1`
        i=`expr $2 + $count`
        echo " - $3-$i" >> /etc/salt/vmap
done

cat /etc/salt/vmap