#!/bin/bash

DIR=/usr/class/cs143/examples/*
# files=( "$(pwd)/good.cl" "$(pwd)/bad.cl" "$(pwd)/program_class_feature.cl" )
files=( "$(pwd)/problem.cl" "$(pwd)/program_class_feature.cl" )

# for file in $DIR
# do
#   files=( "${files[@]}" $file)
# done


for file in "${files[@]}"
do
  res_out="out.res"
  ref_out="out.ref"
  rm -f res_out
  rm -f ref_out
  /usr/class/cs143/bin/lexer $file | /usr/class/cs143/bin/parser > $ref_out
  cd .. && ./myparser $file > test/$res_out
  cd test
  if diff $res_out $ref_out; then
    echo "Using parser with $file fits the reference solution"
  else
    echo "Using parser with $file fails."
  fi
done
