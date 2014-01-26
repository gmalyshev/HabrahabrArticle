<?xml version="1.0" ?> 
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0"
  xmlns:fo="http://www.w3.org/1999/XSL/Format">

  <xsl:template name="header.content">
    <xsl:variable name="titleabbrev" select="(//book/bookinfo/subtitle)[1]"/>
    
    <fo:block-container absolute-position="fixed" top="0cm" left="1cm" right="0cm">
      <fo:block text-align="left" margin-top="0cm">
        <fo:external-graphic src="url('../styles/images/logo.png')"/>
      </fo:block>
    </fo:block-container>
    
    <fo:block-container absolute-position="fixed" top="0.9cm" left="8cm" right="0cm">
      <fo:block text-align="left" margin-top="0cm" color="gray"
        font-family="{$title.fontset}" font-size="10pt" font-weight="bold">
        <xsl:value-of select="$titleabbrev"/>
      </fo:block>
    </fo:block-container>
    
  </xsl:template>

</xsl:stylesheet>
