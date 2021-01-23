#! /bin/sh

cd assets/images/
for n in *
do
  OldName=$n
  NewName=`echo $n | tr -cd 'A-Za-z0-9._-'`
  if [ "$OldName" != "$NewName" ]; then
    echo $NewName
    mv "$OldName" "$NewName"
  fi
done
