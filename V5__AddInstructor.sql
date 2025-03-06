Build started...
Build succeeded.
BEGIN TRANSACTION;
ALTER TABLE [Courses] ADD [InstructorId] uniqueidentifier NULL;

CREATE TABLE [Instructor] (
    [Id] uniqueidentifier NOT NULL,
    [FirstName] nvarchar(50) NOT NULL,
    [LastName] nvarchar(50) NOT NULL,
    [Email] nvarchar(100) NOT NULL,
    [HireDate] datetime2 NOT NULL,
    CONSTRAINT [PK_Instructor] PRIMARY KEY ([Id])
);

CREATE INDEX [IX_Courses_InstructorId] ON [Courses] ([InstructorId]);

ALTER TABLE [Courses] ADD CONSTRAINT [FK_Courses_Instructor_InstructorId] FOREIGN KEY ([InstructorId]) REFERENCES [Instructor] ([Id]);

INSERT INTO [__EFMigrationsHistory] ([MigrationId], [ProductVersion])
VALUES (N'20250306112719_AddInstructor', N'9.0.2');

COMMIT;
GO


