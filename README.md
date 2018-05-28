# utl_combining_all_pdf_files_in_a_directory
Combining all pdf files in a directory.  Keywords: sas sql join merge big data analytics macros oracle teradata mysql sas communities stackoverflow statistics artificial inteligence AI Python R Java Javascript WPS Matlab SPSS Scala Perl C C# Excel MS Access JSON graphics maps NLP natural language processing machine learning igraph DOSUBL DOW loop stackoverflow SAS community.

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
       
            *                _              _       _
     _ __ ___   __ _| | _____    __| | __ _| |_ __ _
    | '_ ` _ \ / _` | |/ / _ \  / _` |/ _` | __/ _` |
    | | | | | | (_| |   <  __/ | (_| | (_| | || (_| |
    |_| |_| |_|\__,_|_|\_\___|  \__,_|\__,_|\__\__,_|

    ;

    ods pdf file="c:/pdf/iris_page1.pdf";
    proc print data=sashelp.iris(obs=10 where=(species="Setosa"));
    run;quit;
    ods pdf close;

    ods pdf file="c:/pdf/iris_page2.pdf";
    proc print data=sashelp.iris(obs=10 where=(species="Versicolor"));
    run;quit;
    ods pdf close;

    ods pdf file="c:/pdf/iris_page3.pdf";
    proc print data=sashelp.iris(obs=10 where=(species="Virginica"));
    run;quit;
    ods pdf close;



