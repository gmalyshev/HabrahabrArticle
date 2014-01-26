<?xml version="1.0" ?> 
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0"
  xmlns:fo="http://www.w3.org/1999/XSL/Format">

  <xsl:template name="book.titlepage.recto">
    <!--  название компании-->
    <fo:block-container absolute-position="fixed" top="1cm" left="6cm" right="6cm">
      <fo:block hyphenate="false" text-align="center" font-family="{$title.fontset}" font-size="11pt"
        font-weight="bold">
        <xsl:value-of select="//bookinfo/corpauthor/node()"/>
      </fo:block>
    </fo:block-container>
	
	<!-- Картинка для книги-->
	 <fo:block margin-top="0.5cm" text-align="center">
          <fo:external-graphic src="url('../styles/images/title.png')"/>
    </fo:block>

    <!-- Заголовок -->
    <fo:block margin-top="5cm" text-align="center" hyphenate="false" font-family="{$title.fontset}"
      font-size="12pt" font-weight="bold">
      <xsl:apply-templates select="//bookinfo/title/node()"/>
    </fo:block>

    <!-- Подзаголовок -->
    <fo:block margin-top="4cm" text-align="center" hyphenate="false" font-family="{$title.fontset}"
      font-size="11pt" font-weight="bold">
      <xsl:apply-templates select="//bookinfo/subtitle/node()"/>
    </fo:block>

    <fo:block-container absolute-position="fixed" top="28cm" left="2cm" right="2cm">
      <fo:block text-align="center" font-family="{$title.fontset}" font-size="11pt"
        font-weight="bold">
        <!--        Город-->
        <xsl:value-of select="//bookinfo/address/city"/>
        <xsl:value-of select="', '"/>
        <!--        Год-->
        <xsl:value-of select="//bookinfo/pubdate"/>
      </fo:block>
    </fo:block-container>

  </xsl:template>

  <xsl:template name="book.titlepage.verso" />
  <xsl:template name="book.titlepage.before.verso" />

</xsl:stylesheet>
