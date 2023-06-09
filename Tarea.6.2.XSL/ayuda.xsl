<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output method="html" />

  <xsl:template match="/">
    <html>
      <head>
        <title>Lista de productos</title>
      </head>
      <body>
        <h1>Lista de productos</h1>
        <table>
          <tr>
            <th>ID</th>
            <th>Nombre</th>
            <th>Precio</th>
            <th>Stock</th>
          </tr>
          <xsl:for-each select="resultset/row">
            <tr>
              <td>
                <xsl:value-of select="field[@name='id']" />
              </td>
              <td>
                <xsl:value-of select="field[@name='nombre']" />
              </td>
              <td>
                <xsl:value-of select="field[@name='precio']" />
              </td>
              <td>
                <xsl:value-of select="field[@name='stock']" />
              </td>
            </tr>
          </xsl:for-each>
        </table>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>