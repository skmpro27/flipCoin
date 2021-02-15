
#! /bin/bash -x

i=0
countH=0
countT=0
diff=0
while [ $countH -lt 21 -a $countT -lt 21 -o $diff -lt 2 -a $diff -gt -2 ]
do
	coin=$(( RANDOM%2 ))
	if [ $coin -eq 1 ]
	then
		countH=$(( countH+1 ))
	else
		countT=$(( countT+1 ))
	fi
	i=$(( i+1 ))
	diff=$(( countH-countT ))
done

echo "Heads won" $countH "times"
echo "Tails won" $countT "times"
echo

if [ $countH -gt $countT ]
then
	echo "Heads won by" $diff "times"
else
	echo "Tails won by" $(( -1*diff )) "times"
fi
