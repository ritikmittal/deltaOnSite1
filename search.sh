#!/usr/bin/env bash

file=$1

query=$2
if [[ $query =~ 'roll' ]] ; then
   context='roll:'
   expression=${query:5}
elif [[ $query =~ 'phon' ]] ; then
   context='phoneno:'
   expression=${query:8}
elif [[ $query =~ 'email' ]] ; then
   context='email:'
   expression=${query:6}
elif [[ $query =~ 'year' ]] ; then
   context='year:'
   expression=${query:5}
elif [[ $query =~ 'branch' ]] ; then
   context='branch:'
   expression=${query:6}
elif [[ $query =~ 'name' ]]; then
   context='name:'
   expression=${query:5}
fi

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
   elif [[ $context == 'name:' ]] && [[ $name == $expression* ]]; then
      echo "$rollno $name   $phoneno $email   $year"
   fi
done < $file
