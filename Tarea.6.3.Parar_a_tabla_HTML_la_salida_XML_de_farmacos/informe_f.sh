#!/bin/bash

# Verificar que se ha proporcionado un parámetro
if [ -z "$1" ]; then
  echo "Debe proporcionar el número de fabricante como parámetro."
  exit 1
fi

# Asignar el parámetro a una variable
fabricante=$1

# Transformar el archivo XML utilizando el archivo XSL
resultado=$(xsltproc farmaco.xsl farmaco.xml > farmaco.html)

# Filtrar los resultados para mostrar solo los fármacos del fabricante indicado
echo "$resultado" | awk -v f="$fabricante" -F '\t' '{ if ($10 == f) print }'
