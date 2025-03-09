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
IF NOT EXISTS (SELECT * FROM sys.tables WHERE name = 'Course')
BEGIN
    CREATE TABLE Course (
        Id UNIQUEIDENTIFIER PRIMARY KEY DEFAULT NEWID(),
        Title NVARCHAR(100) NOT NULL,
        Credits INT NOT NULL,
        InstructorId UNIQUEIDENTIFIER NULL,
        FOREIGN KEY (InstructorId) REFERENCES Instructor(Id)
    );
END ELSE BEGIN
    IF NOT EXISTS (SELECT * FROM sys.columns WHERE object_id = OBJECT_ID('Course') AND name = 'InstructorId')
    BEGIN
        ALTER TABLE Course ADD InstructorId UNIQUEIDENTIFIER NULL;
        ALTER TABLE Course ADD CONSTRAINT FK_Course_Instructor_InstructorId FOREIGN KEY (InstructorId) REFERENCES Instructor(Id);
    END;
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

