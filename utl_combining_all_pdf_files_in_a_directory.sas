Combining all pdf files in a directory

 You need to downlaod ghostscript and copy the executable
 gswin64c.exe into c:/pdf where your pdfs are located.

INPUT
=====

  c:/pdf

   gswin64c.exe   * ghostscript executable;

   c:/pdf/iris_page1.pdf
   c:/pdf/iris_page2.pdf
   c:/pdf/iris_page3.pdf

 EXAMLE OUTPUT  (One file with thre pages)

   c:/pdf/iris.pdf

PROCESS
=======

   x "cd c:/pdf";
   x 'for %s in (*.pdf) do ECHO %s >> filename.txt';
   x "gswin64c.exe -q -dNOPAUSE -sDEVICE=pdfwrite -sOutputFile=iris.pdf -dBATCH @filename.txt";

OUTPUT
======

  Single file with all pds combined

   c:/pdf/iris.pdf


