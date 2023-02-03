#! /bin/bash


if [ ! -z $1 ]
then
awk -f Try1home.sh <$1 >account_new.csv
fi
