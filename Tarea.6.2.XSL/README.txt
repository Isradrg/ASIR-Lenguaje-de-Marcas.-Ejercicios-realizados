Para generar el archivo xml ejecutar:

-- XML de alumnos --
mysql -h [HOST] -u usuario -p [NOMBRE BASE DATOS] --xml -e "select nombre,apellido1,apellido2 from alumno" > alumnos.xml

-- XML de profesor --
mysql -h [HOST] -u usuario -p [NOMBRE BASE DATOS] --xml -e "select nombre,apellido1 from profesor" > profesores.xml

-- XML de matriculas --
mysql -h [HOST] -u usuario -p [NOMBRE BASE DATOS] --xml -e "select * from matricula" > matriculas.xml

-- El archivo matriculas.xml no está completo, ha sido recortado. --

Crear archivo .html
xsltproc alumnos.xsl alumnos.xml > alumnos.html
xsltproc matriculas.xsl matriculas.xml > matriculas.html
xsltproc profesores.xsl profesores.xml > profesores.html
