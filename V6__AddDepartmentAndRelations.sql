IF NOT EXISTS (SELECT * FROM sys.tables WHERE name = 'Student')
BEGIN
    CREATE TABLE Student (
        Id UNIQUEIDENTIFIER PRIMARY KEY DEFAULT NEWID(),
        FirstName NVARCHAR(50) NOT NULL,
        LastName NVARCHAR(50) NOT NULL,
        Email NVARCHAR(100) NOT NULL UNIQUE,
        EnrollmentDate DATE NOT NULL,
        MiddleName NVARCHAR(50) NULL,
        DateOfBirth DATE NULL
    );
END;

IF NOT EXISTS (SELECT * FROM sys.tables WHERE name = 'Course')
BEGIN
    CREATE TABLE Course (
        Id UNIQUEIDENTIFIER PRIMARY KEY DEFAULT NEWID(),
        Title NVARCHAR(100) NOT NULL,
        Credits INT NOT NULL,
        InstructorId UNIQUEIDENTIFIER NULL,
        FOREIGN KEY (InstructorId) REFERENCES Instructor(Id)
    );
END;

IF NOT EXISTS (SELECT * FROM sys.tables WHERE name = 'Enrollment')
BEGIN
    CREATE TABLE Enrollment (
        Id UNIQUEIDENTIFIER PRIMARY KEY DEFAULT NEWID(),
        StudentId UNIQUEIDENTIFIER NOT NULL,
        CourseId UNIQUEIDENTIFIER NOT NULL,
        FinalGrade INT NULL,
        FOREIGN KEY (StudentId) REFERENCES Student(Id),
        FOREIGN KEY (CourseId) REFERENCES Course(Id)
    );
END;

IF NOT EXISTS (SELECT * FROM sys.tables WHERE name = 'Instructor')
BEGIN
    CREATE TABLE Instructor (
        Id UNIQUEIDENTIFIER PRIMARY KEY DEFAULT NEWID(),
        FirstName NVARCHAR(50) NOT NULL,
        LastName NVARCHAR(50) NOT NULL,
        Email NVARCHAR(100) NOT NULL UNIQUE,
        HireDate DATE NOT NULL
    );
END;

IF NOT EXISTS (SELECT * FROM sys.tables WHERE name = 'Department')
BEGIN
    CREATE TABLE Department (
        Id UNIQUEIDENTIFIER PRIMARY KEY DEFAULT NEWID(),
        Name NVARCHAR(100) NOT NULL,
        Budget DECIMAL(18, 2) NULL,
        StartDate DATE NOT NULL,
        DepartmentHeadId UNIQUEIDENTIFIER NULL,
        FOREIGN KEY (DepartmentHeadId) REFERENCES Instructor(Id)
    );
END;