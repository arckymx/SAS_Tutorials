* Working In SAS Studo;
* 12/17/2015 ;
* http://support.sas.com/training/tutorial/studio/get-started.html ;

* Using Server Files and Folders;
* Using Tasks;
* Using Snippets (for coding);
* Using Libraries;
 


/*--Using Tasks--*/
* Creating report from Baseball data; 
title;
footnote;
title1 "List Data for SASHELP.BASEBALL";

/* Sort SASHELP.BASEBALL for BY group processing. */
proc sort data=SASHELP.BASEBALL out=WORK.SORTTEMP;
	by Team;
run;

/* Print the table                            */
proc print data=WORK.SORTTEMP label;
	var Name Team Salary;
	by Team;
run;

quit;
title;
footnote;




/*--Using Snippets--*/
/*--HBar Plot--*/

title 'Average Salary by Team';
proc sgplot data=sashelp.baseball ;
  hbar team / response=salary  stat=mean;
  yaxis display=(nolabel) grid;
  xaxis display=(nolabel);
  run;
  
* Note: Snippets can be saved; 
