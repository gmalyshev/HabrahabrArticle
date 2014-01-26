SET docname=%~1
IF /I "%docname%"=="" SET docname=habraarticle
::Build PDF
call ..\document\builders\build_PDF.cmd habraarticle 


::Delete temp files
call ..\document\builders\delete_fo.cmd 
