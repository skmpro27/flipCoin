
#! /bin/bash -x

coin=$(( RANDOM%2 ))
if [ $coin -eq 1 ]
then
	echo "Heads won"
else
	echo "Tails won"
fi
