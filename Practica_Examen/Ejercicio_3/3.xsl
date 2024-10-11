<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:output method="html" />

  <xsl:template match="/">
    <html>
      <body>
        <h2>Vivero</h2>
        <table border="1">
          <tr bgcolor="#d980f9">
            <th>Nombre Científico</th>
            <th>Nombre Vulgar</th>
            <th>Origen</th>
            <th>Riego</th>
            <th>Poda</th>
            <th>Luz</th>
            <th>Abono</th>
            <th>Color de Flor</th>
            <th>Raíz</th>
            <th>Hoja</th>
          </tr>
          <xsl:for-each select="vivero/ejemplar">
            <tr>
              <td><xsl:value-of select="nombre_cientifico" /></td>
              <td><xsl:value-of select="nombre_vulgar" /></td>
              <td><xsl:value-of select="origen" /></td>
              <td><xsl:value-of select="cuidados/riego" /></td>
              <td><xsl:value-of select="cuidados/poda" /></td>
              <td><xsl:value-of select="cuidados/luz" /></td>
              <td><xsl:value-of select="cuidados/abono" /></td>
              <td><xsl:value-of select="morfologia/color_flor" /></td>
              <td><xsl:value-of select="morfologia/raiz" /></td>
              <td><xsl:value-of select="morfologia/hoja" /></td>
            </tr>
          </xsl:for-each>
        </table>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>
