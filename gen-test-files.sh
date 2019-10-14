#!/bin/sh
mkdir ./test-files

rm ./test-files/*

touch ./test-files/"[][][][]l"
touch ./test-files/"(abc123)"
touch ./test-files/"     a  a df a aa     a   "
touch ./test-files/"  abc123 .owo  "
