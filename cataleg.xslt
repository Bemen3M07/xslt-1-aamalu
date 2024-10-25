<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
<html> 
<body>
  <h2>My CD Collection</h2>
  <table border="1">
    <tr bgcolor="red">
      <th style="text-align:left">Title</th>
      <th style="text-align:left">Artist</th>
       <th style="text-align:left">Country</th>
         <th style="text-align:left">Price</th>
           <th style="text-align:left">Punto</th>
    </tr>
   <xsl:for-each select="catalog/cd">
   <xsl:choose>
  <xsl:when test="price &gt; 10">
   <!--<xsl:if test="price &gt; 10"> -->
        <!--<xsl:sort select="price"/> -->
     <!-- <xsl:for-each select="catalog/cd[country='USA']"> --> 
    <tr>
      <td><xsl:value-of select="title"/></td>
      <td><xsl:value-of select="artist"/></td>
       <td><xsl:value-of select="country"/></td>
        <td><xsl:value-of select="price"/></td>
          <td>&#128994;</td>
    </tr>
</xsl:when>
 <xsl:otherwise>
      <!--</xsl:if> --> 
        <!--<xsl:if test="price &lt; 10"> --> 
        <!--<xsl:sort select="price"/> -->
     <!-- <xsl:for-each select="catalog/cd[country='USA']"> --> 
    <tr>
      <td><xsl:value-of select="title"/></td>
      <td><xsl:value-of select="artist"/></td>
       <td><xsl:value-of select="country"/></td>
        <td><xsl:value-of select="price"/></td>
          <td>&#128308;</td>
    </tr>
      </xsl:otherwise>
</xsl:choose>
      <!--</xsl:if> -->  
    </xsl:for-each>
  </table>
</body>
</html>
</xsl:template>
</xsl:stylesheet>

