Build started...
Build succeeded.
BEGIN TRANSACTION;
ALTER TABLE [Students] ADD [MiddleName] nvarchar(50) NOT NULL DEFAULT N'';

INSERT INTO [__EFMigrationsHistory] ([MigrationId], [ProductVersion])
VALUES (N'20250306105653_AddMiddleName', N'9.0.2');

COMMIT;
GO


