
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

	<!-- Импорт оригинального стиля-->
	<!-- <xsl:import href="./docbook-xsl-1.76.1/fo/docbook.xsl"/>-->
	<xsl:import href="./docbook-xsl-1.78.1/fo/profile-docbook.xsl"/>
	
	<!-- Поддержка подсветки синтаксиса -->
	<xsl:import  href="./docbook-xsl-1.78.1/fo/highlight.xsl" />

	<!-- стили (генерируется через titlepage.templates.xml -->
	<!--  <xsl:import href="./company/fo/titlepage.templates.xsl"/> -->
	 
	<!--Параметры, атрибуты-->
	<xsl:include href="./company/fo/param.xsl"/>

	<!-- титульная страница -->
	<xsl:include href="./company/fo/titlepage_first.xsl"/>

	<!-- верхний колонтитул -->
	 <xsl:include href="./company/fo/pagesetup.xsl"/>

	<!-- графика-->
	<xsl:include href="./company/fo/graphics.xsl"/>

	

	<xsl:param name="highlight.source" select="1" />

	<!-- Переход к новому листу -->
	<!-- <xsl:template  match="processing-instruction('hard-pagebreak')">
		<fo:block xmlns:fo="http://www.w3.org/1999/XSL/Format" break-after="page"/>
	</xsl:template>
 -->
	



</xsl:stylesheet>
