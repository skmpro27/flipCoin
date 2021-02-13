
#! /bin/bash -x

i=0
countH=0
countT=0
while [ $i -lt 10 ]
do
	coin=$(( RANDOM%2 ))
	if [ $coin -eq 1 ]
	then
		countH=$(( countH+1 ))
	else
		countT=$(( countT+1 ))
	fi
	i=$(( i+1 ))
done

echo "Heads won" $countH "times"
echo "Tails won" $countT "times"
