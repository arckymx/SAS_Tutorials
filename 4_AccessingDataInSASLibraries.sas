* Accessing Data in SAS Libraries;
* 12/18/2015;
* https://www.youtube.com/watch?v=B16AFyxlOD4;



/*--Library Naming Convention--*/
* 1-8 characters in lenght;
* begins with a letter or underscore;
* remaining characters: letters, numbers or underscores;




/*--Library directory for SAS installed in local computer--*/
libname sasintro 'C:/Users/<userID>/Documents/My SAS Files';




/*--Library directory SAS University Edition--*/
libname libsas '/folders/myfolders/';

data libsas.europeancars;
	set sashelp.cars;
	where Origin="Europe";
run;

proc print data=libsas.europeancars;
run;
	
	
	
	
/*--Re-state the library name everytime you log into SAS--*/
libname libsas '/folders/myfolders/';

*This is a very important step;
