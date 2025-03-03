# Compulsory 1 DfD
The initial Db connection is configured locally with a MS SQL server developer edition
The database is named "UniversityDatabase" and initially created empty and "Always Trust server certificate" is set to "True" in the connection string. 
This is to allow the connection to the local server without a certificate. 
It is not for production use at all

when build and run the program.cs runs a small test to see if the connection is working to the local DB.
Make sure you have a SQL server running on MS SQL defaults and an empty database called UniversityDatabase
```