Build started...
Build succeeded.
BEGIN TRANSACTION;
EXEC sp_rename N'[Enrollments].[Grade]', N'FinalGrade', 'COLUMN';

INSERT INTO [__EFMigrationsHistory] ([MigrationId], [ProductVersion])
VALUES (N'20250306120004_RenameGradeToFinalGrade', N'9.0.2');

COMMIT;
GO


