<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <body>
                <h2>Biblioteca de Libros</h2>
                <table border="1">
                    <tr bgcolor="#d980f9">
                        <th>Título</th>
                        <th>Autor</th>
                        <th>Fecha de Nacimiento del Autor</th>
                        <th>Año de Publicación</th>
                    </tr>
                    <xsl:for-each select="biblioteca/libro">
                        <tr>
                            <td><xsl:value-of select="titulo"/></td>
                            <td><xsl:value-of select="autor"/></td>
                            <td><xsl:value-of select="autor/@fechaNacimiento"/></td>
                            <td><xsl:value-of select="fechaPublicacion/@anio"/></td>
                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
