<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:param name="fabricante" />

  <xsl:template match="/">
    <html>
      <body>
        <h2>Fármacos del fabricante <xsl:value-of select="$fabricante" />:</h2>
        <ul>
          <xsl:apply-templates select="//row[field[@name='Fabricante']=$fabricante]" />
        </ul>
      </body>
    </html>
  </xsl:template>

  <xsl:template match="row">
    <li>
      <strong>Código: </strong>
      <xsl:value-of select="field[@name='Codigo']" />
      <br />
      <strong>Nombre: </strong>
      <xsl:value-of select="field[@name='Nombre']" />
      <br />
      <strong>Concentración: </strong>
      <xsl:value-of select="field[@name='Concentracion']" />
      <br />
      <strong>Formato: </strong>
      <xsl:value-of select="field[@name='Formato']" />
      <br />
      <strong>Presentación: </strong>
      <xsl:value-of select="field[@name='Presentacion']" />
      <br />
      <strong>Precio: </strong>
      <xsl:value-of select="field[@name='Precio']" />
      <br />
    </li>
  </xsl:template>

</xsl:stylesheet>