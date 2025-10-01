<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template match="/">
        <html>
            <body>
                <h1>Catálogo de cervezas</h1>
                <table border="5" bgcolor="lightcoral" >
                    <tr bgcolor="#9acd32" border ="10" style="font-family: Arial; color: blue">
                        <th style="text-align:center">Nombre</th>
                        <th style="text-align:center">Empresa</th>
                        <th style="text-align:center">Grados</th>
                        <th style="text-align:center">Tipo</th>
                        <th style="text-align:center">Precio</th>
                    </tr>
                    <xsl:for-each select="catalogo/cerveza">
                        <tr>
                            <td>
                                <xsl:value-of select="nombre" />
                            </td>
                            <td>
                                <xsl:value-of select="empresa" />
                            </td>
                            <td>
                                <xsl:value-of select="grados" />
                            </td>
                            <td>
                                <xsl:value-of select="tipo" />
                            </td>
                            <td>
                                <xsl:value-of select="precio" />
                            </td>
                        </tr>
                    </xsl:for-each>
                </table>
                
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>