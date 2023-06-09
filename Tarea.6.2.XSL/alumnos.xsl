<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
xmlns:html="http://www.w3.org/1999/xhtml">

<xsl:template match="/">
  <html>
  <head>
    <title>Alumnos</title>
  </head>
  <body>
    <h1>Lista de alumnos</h1>
    <table border="1">
      <tr bgcolor="#9acd32">
        <th>Nombre</th>
        <th>Apellido 1</th>
        <th>Apellido 2</th>
      </tr>
      <xsl:apply-templates select="resultset/row"/>
    </table>
  </body>
  </html>
</xsl:template>

<xsl:template match="row">
  <tr>
    <xsl:apply-templates select="field"/>
  </tr>
</xsl:template>

<xsl:template match="field">
  <td>
    <xsl:value-of select="."/>
  </td>
</xsl:template>

</xsl:stylesheet>
