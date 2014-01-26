<?xml version='1.0'?>
<!DOCTYPE xsl:stylesheet [
<!ENTITY lowercase "'abcdefghijklmnopqrstuvwxyz'">
<!ENTITY uppercase "'ABCDEFGHIJKLMNOPQRSTUVWXYZ'">
 ]>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:fo="http://www.w3.org/1999/XSL/Format" xmlns:xlink="http://www.w3.org/1999/xlink"
  xmlns:stext="http://nwalsh.com/xslt/ext/com.nwalsh.saxon.TextFactory"
  xmlns:xtext="com.nwalsh.xalan.Text" xmlns:lxslt="http://xml.apache.org/xslt"
  exclude-result-prefixes="xlink stext xtext lxslt" extension-element-prefixes="stext xtext"
  version="1.0">

  <!-- ********************************************************************
     $Id: graphics.xsl 8786 2010-07-28 17:26:46Z mzjn $
     ********************************************************************

     This file is part of the XSL DocBook Stylesheet distribution.
     See ../README or http://docbook.sf.net/release/xsl/current/ for
     copyright and other information.

     Contributors:
     Colin Paul Adams, <colin@colina.demon.co.uk>
     Paul Grosso, <pgrosso@arbortext.com>

     ******************************************************************** -->


  <!-- ==================================================================== -->

  <xsl:template match="graphic">
    <xsl:choose>
      <xsl:when test="parent::inlineequation">
        <xsl:call-template name="process.image"/>
      </xsl:when>
      <xsl:otherwise>
        <fo:block>

          <xsl:attribute name="text-align">
            <xsl:choose>
              <xsl:when test="@align != ''">
                <xsl:value-of select="@align"/>
              </xsl:when>
              <xsl:otherwise>center</xsl:otherwise>
            </xsl:choose>
          </xsl:attribute>

          <xsl:call-template name="process.image"/>
        </fo:block>
      </xsl:otherwise>
    </xsl:choose>
  </xsl:template>


</xsl:stylesheet>
