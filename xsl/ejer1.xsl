<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <body>
                <h1>Catálogo de coches</h1>
                <table border="1">
                    <tr bgcolor="lightcoral">
                        <th style="text-align:left">Codigo</th>
                        <th style="text-align:left">Marca</th>
                        <th style="text-align:left">Modelo</th>
                        <th style="text-align:left">Matricula</th>
                        <th style="text-align:left">Potencia</th>
                        <th style="text-align:left">Plazas</th>
                        <th style="text-align:left">Puertas</th>

                    </tr>
                    <xsl:for-each select="concesionario/coche">

                        <tr>
                            <td>
                                <xsl:value-of select="codigo"></xsl:value-of>
                            </td>
                            <td>
                                <xsl:value-of select="marca" />
                            </td>
                            <td>
                                <xsl:value-of select="modelo" />
                            </td>
                            <td>
                                <xsl:value-of select="matricula"></xsl:value-of>
                            </td>
                            <td>
                                <xsl:value-of select="potencia"></xsl:value-of>
                            </td>
                            <td>
                                <xsl:value-of select="plazas"></xsl:value-of>
                            </td>
                            <td>
                                <xsl:value-of select="puertas"></xsl:value-of>
                            </td>
                        </tr>

                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>