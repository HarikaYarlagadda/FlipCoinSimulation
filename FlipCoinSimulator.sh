#! /bin/bash -x
tailcount=0
headcount=0
for (( i=0 ; i<30 ; i++ ))
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
