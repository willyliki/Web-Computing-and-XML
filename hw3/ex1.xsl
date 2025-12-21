<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:template match="/">
    <xsl:apply-templates select="產品搜尋"/>
  </xsl:template>

  <xsl:template match="產品搜尋">
    <style>
      table { border-collapse: collapse; width: 100%; }
      th, td { border: 1px solid black; padding: 8px; text-align: left; }
      th { background-color: #f2f2f2; }
    </style>
    <table>
      <tr>
        <th>品名</th>
        <th>定價</th>
        <th>說明頁</th>
      </tr>
      <xsl:for-each select="產品">
        <xsl:sort select="品名" data-type="text" order="ascending"/>
        <tr>
          <td><xsl:value-of select="品名"/></td>
          <td><xsl:value-of select="定價"/></td>
          <td>
            <a target="_blank">
              <xsl:attribute name="href">
                <xsl:value-of select="說明頁/@網址"/>
              </xsl:attribute>
              <xsl:value-of select="說明頁"/>
            </a>
          </td>
        </tr>
      </xsl:for-each>
    </table>
  </xsl:template>
</xsl:stylesheet>