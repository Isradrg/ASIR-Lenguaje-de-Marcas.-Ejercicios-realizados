<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:template match="/">
    <html>
      <head>
        <title>Resultset</title>
      </head>
      <body>
        <table border="1">
          <tr bgcolor="#9acd32">
            <th>Código</th>
            <th>Nombre</th>
            <th>Concentración</th>
            <th>Formato</th>
            <th>Presentación</th>
            <th>Fracciones</th>
            <th>Fecha de Registro</th>
            <th>N° de Registro Sanitario</th>
            <th>Fabricante</th>
            <th>Precio</th>
            <th>Stock</th>
            <th>IVA</th>
          </tr>
          <xsl:apply-templates select="resultset/row" />
        </table>
      </body>
    </html>
  </xsl:template>

  <xsl:template match="row">
    <tr>
      <xsl:apply-templates select="field" />
    </tr>
  </xsl:template>

  <xsl:template match="field">
    <td>
      <xsl:value-of select="." />
    </td>
  </xsl:template>

</xsl:stylesheet>