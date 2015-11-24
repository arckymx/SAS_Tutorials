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
