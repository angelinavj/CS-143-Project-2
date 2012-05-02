#!/bin/bash

DIR=/usr/class/cs143/examples/*

#files=( "$(pwd)/let.cl" "$(pwd)/problem.cl" "$(pwd)/assign_dispatch.cl" "$(pwd)/expression_test_2.cl" "$(pwd)/good.cl" "$(pwd)/error_class.cl" "$(pwd)/error_class_stupid.cl" "$(pwd)/bad.cl" )

files=(
"$(pwd)/error_feature_attr.cl" "$(pwd)/error_feature_method.cl"
)

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
