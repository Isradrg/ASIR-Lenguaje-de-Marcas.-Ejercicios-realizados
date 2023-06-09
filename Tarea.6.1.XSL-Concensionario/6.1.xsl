<!-- Tabla con todos los coches y sus datos -->
<xsl:template match="/">
  <html>
    <head>
      <title>Concesionarios y coches</title>
    </head>
    <body>
      <h1>Coches</h1>
      <table border="1">
        <tr>
          <th>Modelo</th>
          <th>Marca</th>
          <th>Potencia</th>
          <th>Puertas</th>
          <th>Precio</th>
          <th>CO2</th>
          <th>Consumo</th>
          <th>Vel. Máxima</th>
          <th>Concesionario</th>
        </tr>
        <xsl:for-each select="//coche">
          <tr>
            <td><xsl:value-of select="modelo"/></td>
            <td><xsl:value-of select="marca"/></td>
            <td><xsl:value-of select="potencia"/></td>
            <td><xsl:value-of select="puertas"/></td>
            <td><xsl:value-of select="precio"/></td>
            <td><xsl:value-of select="co2"/></td>
            <td><xsl:value-of select="consumo"/></td>
            <td><xsl:value-of select="velmax"/></td>
            <td><xsl:value-of select="../nombre"/></td>
          </tr>
        </xsl:for-each>
      </table>
    </body>
  </html>
</xsl:template>
