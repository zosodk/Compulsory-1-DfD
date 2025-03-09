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
END ELSE BEGIN
    IF NOT EXISTS (SELECT * FROM sys.columns WHERE object_id = OBJECT_ID('Student') AND name = 'DateOfBirth')
    BEGIN
        ALTER TABLE Student ADD DateOfBirth DATE NULL;
    END;
END;

IF NOT EXISTS (SELECT * FROM sys.tables WHERE name = 'Course')
BEGIN
    CREATE TABLE Course (
        Id UNIQUEIDENTIFIER PRIMARY KEY DEFAULT NEWID(),
        Title NVARCHAR(100) NOT NULL,
        Credits INT NOT NULL
    );
END;

IF NOT EXISTS (SELECT * FROM sys.tables WHERE name = 'Enrollment')
BEGIN
    CREATE TABLE Enrollment (
        Id UNIQUEIDENTIFIER PRIMARY KEY DEFAULT NEWID(),
        StudentId UNIQUEIDENTIFIER NOT NULL,
        CourseId UNIQUEIDENTIFIER NOT NULL,
        Grade NVARCHAR(2) NULL,
        FOREIGN KEY (StudentId) REFERENCES Student(Id),
        FOREIGN KEY (CourseId) REFERENCES Course(Id)
    );
END;