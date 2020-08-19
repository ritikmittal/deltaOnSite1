#!/usr/bin/env bash

# take file1 -> $1 file2 -> $2 file3 -> $3 address as input;
file1=$1
file2=$2
file3=$3
# file1 has name, email, rollno
# file2 has rollno, branch
# file3 har email, phoneno, year

function addToFile {
   #read from file 3
   while read email phoneno year; do
      if [ $email == $4 ] ; then
         echo "$1 $2 $3 $4 $phoneno $year" >> output.txt
         break;
      fi
   done < $file3
}

function write_phone {
   while read rollno branch; do
      #statements
      if [ $rollno == $3 ] ; then
         addToFile $rollno $1 $branch $2
         break;
      fi
   done < $file2
}

while read name email rollno ; do
   write_phone $name $email $rollno
done < $file1
