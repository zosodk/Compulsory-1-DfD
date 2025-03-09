# TASK 7 Modify Credits type from int to decimal
Took a copy of Task 6 sql and added the alter table statement to change the type of the Credits column in the Course table from int to decimal(5,2).
This is a safe conversion, because integers can easily be converted to decimals without loss of data.
Even though a sudden change in the type of a column can break applications depending on the column, this is a safe change.
Going from decimal to integer would be a destructive change, because the decimal type can hold more data than the integer type.

# TASK 6 Added a new table for Department and added the relation for a DepartmentHead being an Instructor
Took a copy of Task 5 sql and added the table and relation for Department and DepartmentHead.
Created a relation between the Instructor and Department tables. Using the Unique constraint on the InstructorId in the Department table.

# TASK 5 - Rename Grade to FinalGrade in the Enrollment table
Updated the STATE file to and renamed the column Grade to FinalGrade in the Enrollment table.
This reflects the current state of the database and the code in the project.
I had to wrap my mind around not using ALTER TABLE, but just stating EXEC sp_rename 'Enrollment.Grade', 'FinalGrade', 'COLUMN';
This is not destructive and will not delete any data in the column, just rename it. Aplications depending on the column named Grade will break, but that should teach
DEVS doing business directly on the database to not do that :)

# TASK 4 - Added Instructor table and relation to Course
Took a copy of the V3__Add_DateOfBirth.sql and added a new table for Instructors.
Created a relation between the Instructor and Course tables.
Added a foreign key to the Course table for the InstructorId.
Made sure, that IF NOT exits etc was inline all the way through the script.

# TASK 3 - Added Date of birth to the Student table
Took a copy of the V2__Add_MiddleName.sql and added a column for DateOfBirth to the Student table.
Made sure, that IF NOT exits etc was inline all the way through the script.

# TASK 2 - Added middlename
Actually just took a copy of the V1__Initial_Schema.sql and added a column for MiddleName to the Student table.
Made sure, that IF NOT exits etc was inline all the way through the script. (not the last time i'll write this)

# TASK 1 - Initial setup and schema, relations
I completely forgot to update this Readme for the first three tasks, so I will do it now.
Created the STATE sql file with the schema and relations for the database. I was focused on NOT diverging from types and names that I had used for EF.
Funny, that one sometimes uses more time to think about the names of the tables and columns than to actually write the SQL code.
Created the STATE file V1__Initial_Schema.sql

# Compulsory 1 DfD
The initial Db connection is configured locally with a MS SQL server developer edition
The database is named "UniversityDatabase" and initially created empty and "Always Trust server certificate" is set to "True" in the connection string. 
This is to allow the connection to the local server without a certificate. 
It is not for production use at all

when build and run the program.cs runs a small test to see if the connection is working to the local DB.
Make sure you have a SQL server running on MS SQL defaults and an empty database called UniversityDatabase