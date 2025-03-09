# TASK 7 Changed the data type of the "Credits" column in the Courses table"
Changed the data type of the "Credits" column in the Courses table from int to decimal to allow for more precise values.
Created a new migration called "ChangeCreditsToDecimal" to the Migrations folder.
dotnet ef migrations add Mo
# TASK 6 Add a new table called "Departments"
Created a new table called "Departments" with the following attributes:
- Id (int, primary key)
- Name (string)
- Budget (decimal)
- StartDate (DateTime)
- InstructorId (int, foreign key to the Instructor table)
- Created a one-to-many relationship between the Instructor and Department tables using ICollections.
- Created a new migration called "AddDepartments" to the Migrations folder.
- Created a new script called "V7__AddDepartments.sql" to the Migrations folder.

# TASK 5 Rename Grade to FinalGrade
Renamed the column "Grade" in the Enrollments table to "FinalGrade" to better reflect the purpose of the column.
Created a new migration called "RenameGradeToFinalGrade" to the Migrations folder.
dotnet ef migrations add RenameGradeToFinalGrade
dotnet ef migrations script AddInstructor RenameGradeToFinalGrade > V6__RenameGradeToFinalGrade.sql
dotnet ef database update

From a Database point of view, this change is non-destructive, because the META information is changed, not the data itself. The data in the column is still the same, only the name of the column is changed. This is a good practice to keep the database clean and understandable.
From an application point of view, this change is destructive, because the application will not be able to access the column "Grade" anymore. The application will have to be updated to use the new column name "FinalGrade" instead of "Grade".
This can be mitigated by creating a transition layer between the application and the database, so that the application can still access the column "Grade" while the database column is renamed to "FinalGrade". This transition layer can be removed once the application has been updated to use the new column name "FinalGrade".

# TASK 4. Add Instructor relation
Created an Instructor table and relation with the following attributes:
Id, FirstName, LastName, Email, HireDate
Created attribute InstructorId to the Course relation and define it as a foreign key 
reference to the Instructor relation. Done, again, with ICollections to create a one-to-many relationship between the two tables. (Instructor -> Courses)
Created a new migration called "AddInstructor" to the Migrations folder.
dotnet ef migrations add AddInstructor
dotnet ef migrations script AddStudentDateOfBirth AddInstructor > V5__AddInstructor.sql
dotnet ef database update

# TASK 3 Add DateOfBirth to Student
Added a new column to the Students table called "DateOfBirth" of type DateTime.
Created a new migration called "AddStudentDateOfBirth" to the Migrations folder.
dotnet ef migrations add AddStudentDateOfBirth
dotnet ef migrations script AddMiddleName AddStudentDateOfBirth > V4__AddStudentDateOfBirth.sql
dotnet ef database update

# TASK 2 AddMiddleName to Student
Added a new column to the Students table called "MiddleName" of type string.
Created a new migration called "AddMiddleName" to the Migrations folder.
dotnet ef migrations add AddMiddleName
dotnet ef migrations script RelationsSchema AddMiddleName > V3__AddMiddleName.sql
dotnet ef database update


# TASK 1.1 Add relations
Added relations between the tables "Students" and "Courses" in the UniversityDatabase. Used ICollection to create a one-to-many relationship between the two tables. (student -> Enrollments)
Added a new migration called "AddRelations" to the Migrations folder.
Updated the database with the new migration using the command `dotnet ef database update`.
Syntax:
dotnet ef migrations script InitialSchema RelationsSchema > V2__RelationsSchema.sql
dotnet ef database update

# TASK 1
Added first migration to this branch thus creating the database and tables.
The migration is called "InitialCreate" and it creates the tables "Students" and "Courses" with their respective columns within the Migrations folder.
To undo the migration, run the command `dotnet ef database update 0` in the terminal.
or use the command `ef migrations remove` to remove the last migration
Schema sql migration created with: dotnet ef migrations script 0 InitialSchema > V1__InitialSchema.sql
Database (sqlserver developer edition) created with: `dotnet ef database update`

# Compulsory 1 DfD
The initial Db connection is configured locally with a MS SQL server developer edition
The database is named "UniversityDatabase" and initially created empty and "Always Trust server certificate" is set to "True" in the connection string. 
This is to allow the connection to the local server without a certificate. 
It is not for production use at all

when build and run the program.cs runs a small test to see if the connection is working to the local DB.
