<!-- Tabla con todos los concesionarios y sus datos -->
<xsl:template match="/">
  <html>
    <head>
      <title>Concesionarios y coches</title>
    </head>
    <body>
      <h1>Concesionarios</h1>
      <table border="1">
        <tr>
          <th>Concesionario</th>
          <th>Ciudad</th>
        </tr>
        <xsl:for-each select="//concesionario">
          <tr>
            <td><xsl:value-of select="nombre"/></td>
            <td><xsl:value-of select="ciudad"/></td>
          </tr>
        </xsl:for-each>
      </table>
    </body>
  </html>
</xsl:template>
