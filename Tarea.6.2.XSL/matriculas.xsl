<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:template match="/">
    <html>
      <head>
        <title>Notas de matrícula</title>
      </head>
      <body>
        <table>
          <tr>
            <th>cod_mat</th>
            <th>cod_asig</th>
            <th>nre</th>
            <th>anyo</th>
            <th>cod_curso</th>
            <th>nota</th>
          </tr>
          <xsl:for-each select="resultset/row">
            <tr>
              <td><xsl:value-of select="field[@name='cod_mat']"/></td>
              <td><xsl:value-of select="field[@name='cod_asig']"/></td>
              <td><xsl:value-of select="field[@name='nre']"/></td>
              <td><xsl:value-of select="field[@name='anyo']"/></td>
              <td><xsl:value-of select="field[@name='cod_curso']"/></td>
              <td><xsl:value-of select="field[@name='nota']"/></td>
            </tr>
          </xsl:for-each>
        </table>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>
