[Пример сборки документа DocBook]
=================================

Содержание примера:

* styles\docbook-xsl-1.78.1 - исходные стили Docbook-xsl
* styles\images - изображения, который используются в стилях оформления документа
* styles\company - переопределенные стили оформления
* styles\XSLDriverPDF.xsl - главный стиль (драйвер) для формирования xsl-fo документа 

* document\*.xml - исходный текст примера в DocBook (include_habraarticle.xml - главный документ, включающий в себе все остальные)
* document\images - изображения, который используются в статье
* document\builders - скрипты для сборки документа
* document\output - каталог для сформированных документов

* bin\build.cmd - главный скрипт для запуска сборки документа
* bin\saxon9* - xslt процессор Saxon
* bin\xslthl-2.1.0.jar - расширение  Saxon для поддержки подсветки синтаксиса в документе

* bin\fop-1.1 - FOP процессор настроенный на работу с кириллицей. 
 Содержит следующие изменения:
  * Добавлен скрипт font.bat для подключения шрифтов (для удобства). Параметры необходимо менять непосредственно в скрипте.
  * Добавлены шрифты с поддержкой кириллицы которые были использованы в статье (изменения коснулись также секции конфигурации \conf\fop.xconf
  * Добавлено расширение для поддержки переносов \lib\fop-hyph.jar
  
 Для корректной работы FOP необходимо клонировать репозиторий в директорию: c:\HabrahabrArticle

