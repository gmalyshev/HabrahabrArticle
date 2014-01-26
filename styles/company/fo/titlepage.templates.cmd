java -cp  ..\..\..\bin\saxon9.jar;  net.sf.saxon.Transform -t -xsl:"..\..\docbook-xsl-1.78.1\template\titlepage.xsl" -s:".\titlepage.templates.xml" -o:".\titlepage.templates.xsl"
pause