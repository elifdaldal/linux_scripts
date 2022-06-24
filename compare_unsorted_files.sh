#!/bin/bash
# bash compare_unsorted_files.sh train.txt bad_examples.txt train_clean.txt
printf "\nCOMMON ROW COUNT\n"
LC_COLLATE=C wc -l < <(comm -12 <(sort $1) <(sort $2))

printf "\nBEFORE\n"
wc -l $1
wc -l $2

LC_COLLATE=C shuf <(comm -23 <(sort $1) <(sort $2)) > $3

printf "\nAFTER\n"
wc -l $3
