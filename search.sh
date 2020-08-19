#!/usr/bin/env bash

file=$1

context=$2
expression=$3
while read rollno name phoneno email year; do
   if [[ $context == 'roll:' ]] && [[ $rollno == $expression* ]] ; then
      echo "$rollno $name   $phoneno $email   $year"
   elif [[ $context == 'phno:' ]] && [[ $phoneno == $expression* ]] ; then
      echo "$rollno $name   $phoneno $email   $year"
   elif [[ $context == 'mail:' ]] && [[ $email == $expression* ]] ; then
      echo "$rollno $name   $phoneno $email   $year"
   elif [[ $context == 'year:' ]] && [[ $year == $expression* ]] ; then
      echo "$rollno $name   $phoneno $email   $year"
   fi
done < $file
