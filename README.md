# This README gets filled out during each task and branch.
If you want to see the final README, please check the last task for ef and state (feat/modify-course-credits-to-decimal-state AND feat/ModifyCourseCreditsType (ef))
Somehow I managed to forget the -ef on the last two branches of the 'ef' path

The order of the tasks is as follows for ef:
1. feat/initial-setup-ef
2. feat/addmiddlename-ef
3. feat/AddStudentDateOfBirth-ef
4. feat/add-instructor-and-relations-ef
5. feat/rename-grade-to-finalgrade-ef
6. feat/AddDepartmentRelation
7. feat/ModifyCourseCreditsType

I changed SQL setup halfway and went from Windows setup of a local installation of
MS SQL 2022 Developer edition to a docker container with MS SQL 2022 Developer edition.
These changes are reflected in: UniversityDatabaseContext.cs and appsettings.json and also program.cs (which has a test for a database connection, for the database and creates it if it is missing)

These changes was implemented in branch: feat/new-branch-MAC-Dev-docker-sqlserver2022
This was a success and was merged into the main branch and was merged into branches i was working

The order of the tasks is as follows for state:
1. feat/initial-schema-state
2. feat/add-middle-name-state
3. feat/add-dateofbirth-state
4. feat/add-instructor-relation-state
5. feat/rename-grade-to-finalgrade-state
6. feat/add-department-relations-state
7. feat/modify-course-credits-to-decimal-state

I had to go back and change the SQL for task 4 in the state path(!)
When run in MS SQL 2022 query explorer window. The query would not run because of the ORDER I had created them. The Instructer table must be created before i created the Constraint(s)
I had to change the order of the queries to make it work. This is reflected in the file: 4-add-instructor-relation-state.sql if lookedin the history of the file



# Compulsory 1 DfD
The initial Db connection is configured locally with a MS SQL server developer edition
The database is named "UniversityDatabase" and initially created empty and "Always Trust server certificate" is set to "True" in the connection string. 
This is to allow the connection to the local server without a certificate. 
It is not for production use at all

when build and run the program.cs runs a small test to see if the connection is working to the local DB.
