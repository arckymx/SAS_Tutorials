* Writing a Basic SAS Program;
* 12/17/2015;
* http://support.sas.com/training/tutorial/studio/basic-program.html;

* You can use SAS program to access, manage, analyze and present data;

* DATA step
	compute values
	check for and correct errors
	subsetting
	supersetting
	merging
	updating;
	
* PROC step
	summarize
	sort 
	list
	produce descriptive statistics
	generate reports and graphs;
	
* RUN statement
 	to complete the DATA and PROC step;

/*--Programming Structure--*/
	
data europeancars;
 	set sashelp.cars;
 	where origin="Europe";
run;

proc print data=europeancars;
run;



/*--Writing Programs from Scratch--*/
*using HEART data from SASHELP;

data highcol;
	set sashelp.heart;
	where Chol_Status="High";
run;

proc print dataa=highcol;
run;
