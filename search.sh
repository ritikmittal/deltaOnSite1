#!/usr/bin/env bash

file=$1

context=$2
expression=$3
while read rollno name branch email phoneno year; do
   if [[ $context == 'roll:' ]] && [[ $rollno == $expression* ]] ; then
      echo "$rollno $name   $phoneno $email   $year"
   elif [[ $context == 'phoneno:' ]] && [[ $phoneno == $expression* ]] ; then
      echo "$rollno $name   $phoneno $email   $year"
   elif [[ $context == 'email:' ]] && [[ $email == $expression* ]] ; then
      echo "$rollno $name   $phoneno $email   $year"
   elif [[ $context == 'year:' ]] && [[ $year == $expression* ]] ; then
      echo "$rollno $name   $phoneno $email   $year"
   elif [[ $context == 'branch:' ]] && [[ $branch == $expression* ]] ; then
      echo "$rollno $name   $phoneno $email   $year"
   fi
done < $file
