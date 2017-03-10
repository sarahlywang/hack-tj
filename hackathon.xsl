<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output method="html" indent="yes"/>

  <xsl:variable name="participants"
    select="document(/list/entry/@fileName)//participant" />

  <xsl:template match="/">
    <h2>Participants</h2>
    <table border="1" cellSpacing="0" cellPadding="5" >
      <tr bgcolor="#9acd32">
          <th>Name</th>
          <th>Favorite Cereal</th>
          <th>Fun Fact</th>
      </tr>
      <xsl:for-each select="$participants">
        <tr>
          <td><xsl:value-of select="name"/></td>
          <td><xsl:value-of select="favoriteCereal"/></td>
          <td><xsl:value-of select="funFact"/></td>
        </tr>
      </xsl:for-each>
    </table>
  </xsl:template>

</xsl:stylesheet>
