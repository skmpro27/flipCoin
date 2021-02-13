
#! /bin/bash -x

i=0
countH=0
countT=0
while [ $countH -lt 21 -a $countT -lt 21 ]
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
echo
if [ $countH -eq $countT ]
then
	echo "It's a Tie"
elif [ $countH -gt $countT ]
then
	echo "Heads won by" $(( countH-countT )) "times"
else
	echo "Tails won by" $(( countT-countH )) "times"
fi
