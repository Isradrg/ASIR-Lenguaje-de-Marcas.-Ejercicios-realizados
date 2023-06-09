#!/bin/bash

if [ $# -ne 2 ]; then
  echo "Usage: $0 input_file fabricante_number"
  exit 1
fi

input_file=$1
fabricante=$2

xsltproc --stringparam fabricante $fabricante filter.xsl $input_file
