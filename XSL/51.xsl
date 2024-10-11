<?xml version="1.0"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

<xsl:template match="/">
  <html>
  <body>

   <table border="2" width="50%">
     <xsl:for-each select="portfolio/stock">
       <tr>
         <td>
           <i><xsl:value-of select=
           "symbol"/></i>
         </td>
       <td>
          <xsl:value-of select="name"/>
        </td>
       <td>
          <xsl:value-of select="price"/>
       </td>
        </tr>
      </xsl:for-each>
    </table>
  </body>
  </html>
  </xsl:template>
</xsl:stylesheet>
