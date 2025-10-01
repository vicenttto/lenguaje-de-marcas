<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template match="/">
        <html>
            <body>
                <h1>Catálogo de cervezas</h1>
                <table border="1">
                    <tr bgcolor="lightcoral">
                        <th style="text-align:left">Nombre</th>
                        <th style="text-align:left">Grados</th>
                        <th style="text-align:left">Tipo</th>
                    </tr>
                    <xsl:for-each select="catalogo/cerveza">
                        <xsl:if test="grados &gt; 5">
                            <tr>
                                <td>
                                    <xsl:value-of select="nombre"></xsl:value-of>
                                </td>
                                <td>
                                    <xsl:value-of select="grados" />
                                </td>
                                <td>
                                    <xsl:value-of select="tipo" />
                                </td>
                            </tr>
                        </xsl:if>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>