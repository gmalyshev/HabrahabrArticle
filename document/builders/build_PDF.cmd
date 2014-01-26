SET docname=%~1
IF /I "%docname%"=="" SET docname=""
echo Build fo
java -cp  ..\bin\saxon9.jar;xslthl-2.1.0.jar -Dxslthl.config=file:///c:\HabrahabrArticle\styles\docbook-xsl-1.78.1\highlighting\xslthl-config.xml   net.sf.saxon.Transform -t -s:"..\document\include_%docname%.xml" -xi:on -xsl:"..\styles\XSLDriverPDF.xsl"  -o:"..\document\%docname%.fo" 


echo Build pdf-fop
call ..\bin\fop-1.1\fop.cmd  -c ..\bin\fop-1.1\conf\fop.xconf  "..\document\%docname%.fo" "..\document\output\%docname%-fop.pdf" 

echo Build pdf-xep
call "C:\XEP\xep.bat" "..\document\%docname%.fo" -pdf "..\document\output\%docname%-xep.pdf" 

