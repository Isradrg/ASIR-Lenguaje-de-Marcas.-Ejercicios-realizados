<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
xmlns:ex="http://www.example.com/profesor"
exclude-result-prefixes="ex">
	<xsl:output method="html" encoding="UTF-8"/>

	<xsl:template match="/">
		<html>
			<head>
				<title>Profesores</title>
			</head>
			<body>
				<table border="1">
					<tr>
						<th>Nombre</th>
						<th>Apellido1</th>
						<th>Apellido2</th>
					</tr>
					<xsl:for-each select="ex:resultset/ex:row">
						<tr>
							<td>
								<xsl:value-of select="ex:field[@name='nombre']"/>
							</td>
							<td>
								<xsl:value-of select="ex:field[@name='apellido1']"/>
							</td>
							<td>
								<xsl:value-of select="ex:field[@name='apellido2']"/>
							</td>
						</tr>
					</xsl:for-each>
				</table>
			</body>
		</html>
	</xsl:template>
</xsl:stylesheet>
