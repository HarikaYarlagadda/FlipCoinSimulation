#! /bin/bash -x
tailcount=0
headcount=0
while (( $headcount != 21 && $tailcount != 21 ))
do
coin=$(( RANDOM%2 ))
if (( $coin == 0 ))
then
	echo "tails"
	(( tailcount++ ))
else
	echo "heads"
	(( headcount++ ))
fi
done
echo "no of times tails won is" $tailcount
echo "no of times heads won is" $headcount
if [ $headcount -gt $tailcount ]
then
	echo " head won by"=$(( $headcount-$tailcount ))
elif [$headcount -lt $tailcount ]
then
	echo "tail won by "=$(( $tailcount-$headcount ))
else
	echo "tie between heads and tails"
fi
