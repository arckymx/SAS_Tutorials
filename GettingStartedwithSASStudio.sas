* Getting Started with SAS Studio;
* 10/28/2015 ;


* view data on CARS
* Examine filter function
* Examine the SQL codes that can be generated;




* Printing the data ;
proc print data=sashelp.cars;
run;




* Printing the selected data only ;
proc print data=sashelp.cars;
	by Make;
	var Make Model Type  DriveTrain EngineSize Cylinders Horsepower MPG_City  MPG_Highway;
run;




* Summary statistics;
proc means data=SASHELP.CARS chartype mean std min max n vardef=df;
	var Weight;
run;



* Graph;
/*--Set output size--*/
ods graphics / reset imagemap;

/*--SGPLOT proc statement--*/
proc sgplot data=SASHELP.DEMOGRAPHICS;
	/*--TITLE and FOOTNOTE--*/
	title 'Population by Region';

	/*--Bar chart settings--*/
	vbar region / response=pop fillattrs=(color=CX0a66f1) stat=Mean dataskin=Crisp 
		name='Bar';

	/*--Response Axis--*/
	yaxis grid;
run;

ods graphics / reset;
title;
