Este script espera dos argumentos: el nombre del archivo XML de entrada y el número de fabricante que deseas filtrar. Luego, utiliza la herramienta xsltproc para aplicar un archivo de transformación XSLT (filter.xsl) al archivo de entrada.

./filter.sh input_file.xml 276 > output_file.xml

Este comando filtra los fármacos del fabricante con número 276 en el archivo de entrada input_file.xml y redirige la salida al archivo output_file.xml. El archivo output_file.xml contendrá solo los fármacos del fabricante seleccionado.

