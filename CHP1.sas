*The Little SAS book;
*Chapter 1: Getting Started Using SAS Software;




*Comments;

*Read animals' weights from file;
DATA animals;
  INFILE 'c:\MyRawData\Zoo.dat';
  INPUT Lions Tigers;
PROC PRINT DATA = animals; /* Print the results */
RUN;




/*Rules for names of variable and SAS dataset members
1. Names must be 32 characters or fewer
2. Names must start with a letter or an underscore
3. Names can only contain letters, numerals and uncerscores
4. Names can contain upper and lowercase letters (doesn't matter when defined)*/




/*DATA and PROC Steps
DATA is to create SAS data and passes on to PROC
- begin with DATA statement
- read and modify data
- create a SAS dataset
PROC is the step for processing
- begin with PROC statements
- perform specific analysis or function
- produce results or report
*/




/*the DATA Step's Built-in Loop
It has its own built-in Loop
*/




/*SAS Data Libraries
Before you can use a SAS dataset, you have to tell SAS where to find it
You can create a new library
*/
