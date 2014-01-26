<?xml version="1.0" ?> 
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0"
  xmlns:fo="http://www.w3.org/1999/XSL/Format">
    
	<!--  -->
	
	<!-- Настройка локализации. Влияет на текст, который формируется автоматически - такой как Глава, Книга и т.п -->
	<xsl:param name="l10n.gentext.default.language" select="'ru'"/>

	<!-- Настройки параметров страниц документа -->   

	<!-- Указываем формат листа бумаги -->
	<xsl:param name="paper.type" select="'A4'"/>
	
    <xsl:param name= "page.margin.top">0.6in</xsl:param>  

	<!-- Печать с двух сторон листа или нет-->
	<xsl:param name="double.sided" select="0"/>

	<!-- Использовать перенос строк. -->

	<!-- Сами правила переноса настраиваются в fo процессоре-->
	<xsl:param name="hyphenate">true</xsl:param> 

	<!-- Настройка шрифтов. Необходимо убедится что данный шрифт подключен к вашему fo процессору. -->
	<!--  Шрифт, который будет использоваться для формирования документа -->
	<xsl:param name="body.font.family" select="'Times New Roman, Arial'"/>

	<!-- Размер шрифта для основного текста. -->
	<xsl:param name="body.font.master">12</xsl:param>

	<!-- Шрифт monospace, который будет использован для формирования блоков <programlisting> <screen> и т.п -->
	<xsl:param name="monospace.font.family">Arial</xsl:param>

	<!-- Шрифт для заголовков -->
	<xsl:param name="title.font.family">Times New Roman</xsl:param>

	<!-- Шрифт для символов-->
	<xsl:param name="symbol.font.family">Symbol</xsl:param> 

	<!-- Настройка формирования оглавления  -->

	<!-- Структура оглавления -->
	<xsl:param name="generate.toc">
/appendix toc,title
article/appendix  nop
/article  toc,title
book      toc,title,figure,table,example,equation
/chapter  toc,title
part      toc,title
/preface  toc,title
reference toc,title
/sect1    toc
/sect2    toc
/sect3    toc
/sect4    toc
/sect5    toc
/section  toc
set       toc,title
	</xsl:param>

	<!-- Глубина вложений секций которая отобразится в оглавлении-->
	<xsl:param name="toc.section.depth">2</xsl:param>

	
  <!--Автонумерация глав-->
  <xsl:param name="chapter.autolabel" select="'1'"/>
  <xsl:param name="section.autolabel" select="'1'"/>
  <xsl:param name="section.label.includes.component.label" select="1"/>
  
   <!--формат нумерации-->
  <xsl:template name="initial.page.number">auto</xsl:template>
  <xsl:template name="page.number.format">1</xsl:template>

	<!--Формат заголовков разделов-->
	<xsl:attribute-set name="section.title.level1.properties">
		<xsl:attribute name="font-size">
			<xsl:value-of select="$body.font.master"/>
			<xsl:text>pt</xsl:text>
		</xsl:attribute>
	</xsl:attribute-set>
	<xsl:attribute-set name="section.title.level2.properties">
		<xsl:attribute name="font-size">
			<xsl:value-of select="$body.font.master"/>
			<xsl:text>pt</xsl:text>
		</xsl:attribute>
	</xsl:attribute-set>
	<xsl:attribute-set name="section.title.level3.properties">
		<xsl:attribute name="font-size">
			<xsl:value-of select="$body.font.master"/>
			<xsl:text>pt</xsl:text>
		</xsl:attribute>
	</xsl:attribute-set>
	<xsl:attribute-set name="section.title.level4.properties">
		<xsl:attribute name="font-size">
			<xsl:value-of select="$body.font.master"/>
			<xsl:text>pt</xsl:text>
		</xsl:attribute>
	</xsl:attribute-set>
	<xsl:attribute-set name="section.title.level5.properties">
		<xsl:attribute name="font-size">
			<xsl:value-of select="$body.font.master"/>
			<xsl:text>pt</xsl:text>
		</xsl:attribute>
	</xsl:attribute-set>
	<xsl:attribute-set name="section.title.level6.properties">
		<xsl:attribute name="font-size">
			<xsl:value-of select="$body.font.master"/>
			<xsl:text>pt</xsl:text>
		</xsl:attribute>
	</xsl:attribute-set>

	<!-- Дополнительные настройки оформления -->

	<!-- Отображать URL  в ссылках --> 
	<xsl:param name="ulink.show" select="0"/>

	<!-- Местоположение подписей к элементам -->
	<xsl:param name="formal.title.placement"> figure after table after example after </xsl:param>

	<!-- Стиль оформления подписей  -->
	<xsl:attribute-set name="formal.title.properties" use-attribute-sets="normal.para.spacing">
		<xsl:attribute name="font-weight">bold</xsl:attribute>
		<xsl:attribute name="text-align">center</xsl:attribute>
		<xsl:attribute name="font-size">
			<xsl:value-of select="$body.font.master * 1"/>
			<xsl:text>pt</xsl:text>
		</xsl:attribute>
		<xsl:attribute name="hyphenate">false</xsl:attribute>
		<xsl:attribute name="space-after.minimum">0.4em</xsl:attribute>
		<xsl:attribute name="space-after.optimum">0.6em</xsl:attribute>
		<xsl:attribute name="space-after.maximum">0.8em</xsl:attribute>
	</xsl:attribute-set>
   
   
    <!--подпись к рисункам и ссылкам к рисункам, url-ссылкам-->
 <xsl:param name="local.l10n.xml" select="document('')"/>
 <l:i18n xmlns:l="http://docbook.sourceforge.net/xmlns/l10n/1.0">
   <l:l10n language="ru">
     <l:context name="title">
       <l:template name="figure" text="Рис. %n. %t"/>
     </l:context>   
     
     <l:context name="xref-number-and-title">
       <l:template name="figure" text="«Рис. %n. »"/>
     </l:context> 
     
     <l:context name="xref-number-and-title">
       <l:template name="ulink" text="%t"/>
     </l:context>
  </l:l10n>
 </l:i18n> 
    
 <!--стили примечаний-->
 
 <!-- Показывать значок для примечания  -->
 <xsl:param name="admon.graphics" select="1"></xsl:param>
 
 <!-- Расширение картинки -->
 <xsl:param name="admon.graphics.extension">.png</xsl:param>
 
 <!-- Директория для поиска. Картинки должны иметь определенные названия. -->
 <xsl:param name="admon.graphics.path">../styles/company/fo/</xsl:param>
 

 
</xsl:stylesheet>
