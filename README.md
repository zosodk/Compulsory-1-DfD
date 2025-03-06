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
Make sure you have a SQL server running on MS SQL defaults and an empty database called UniversityDatabase


