<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <body>
                <h1>Catálogo de cervezas premium</h1>
                <table border="2">
                    <tr bgcolor="lightblue">
                        <th style="text-align:left">Nombre</th>
                        <th style="text-align:left">Empresa</th>
                    </tr>
                    <xsl:for-each select="catalogo/cerveza">
                        <xsl:sort select="nombre" order="descending"/>
                        <tr>
                            <td>
                                <xsl:value-of select="nombre"></xsl:value-of>
                            </td>
                             <td>
                                <xsl:value-of select="empresa" />
                            </td>
                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>