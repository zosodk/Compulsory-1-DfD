Build started...
Build succeeded.
BEGIN TRANSACTION;
CREATE INDEX [IX_Enrollments_CourseId] ON [Enrollments] ([CourseId]);

CREATE INDEX [IX_Enrollments_StudentId] ON [Enrollments] ([StudentId]);

ALTER TABLE [Enrollments] ADD CONSTRAINT [FK_Enrollments_Courses_CourseId] FOREIGN KEY ([CourseId]) REFERENCES [Courses] ([Id]) ON DELETE CASCADE;

ALTER TABLE [Enrollments] ADD CONSTRAINT [FK_Enrollments_Students_StudentId] FOREIGN KEY ([StudentId]) REFERENCES [Students] ([Id]) ON DELETE CASCADE;

INSERT INTO [__EFMigrationsHistory] ([MigrationId], [ProductVersion])
VALUES (N'20250306103932_RelationsSchema', N'9.0.2');

COMMIT;
GO


