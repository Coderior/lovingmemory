#! /bin/sh

cd assets/images/
for n in *
do
OldName=$n
NewName=`echo $n | tr -cd 'A-Za-z0-9_-.'`
echo $NewName
mv "$OldName" "$NewName"
done
