
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 07/27/2016 18:09:44
-- Generated from EDMX file: C:\Users\Gabriel Rogala\Dropbox\INŻ\STG web\STG web\Models\STGModel.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [aspnet-STG web-20160727011229];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[FK_dbo_AspNetUserClaims_dbo_AspNetUsers_UserId]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[AspNetUserClaims] DROP CONSTRAINT [FK_dbo_AspNetUserClaims_dbo_AspNetUsers_UserId];
GO
IF OBJECT_ID(N'[dbo].[FK_dbo_AspNetUserLogins_dbo_AspNetUsers_UserId]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[AspNetUserLogins] DROP CONSTRAINT [FK_dbo_AspNetUserLogins_dbo_AspNetUsers_UserId];
GO
IF OBJECT_ID(N'[dbo].[FK_AspNetUserRoles_AspNetRoles]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[AspNetUserRoles] DROP CONSTRAINT [FK_AspNetUserRoles_AspNetRoles];
GO
IF OBJECT_ID(N'[dbo].[FK_AspNetUserRoles_AspNetUsers]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[AspNetUserRoles] DROP CONSTRAINT [FK_AspNetUserRoles_AspNetUsers];
GO
IF OBJECT_ID(N'[dbo].[FK_AspNetUsersTeacher]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Teacher] DROP CONSTRAINT [FK_AspNetUsersTeacher];
GO
IF OBJECT_ID(N'[dbo].[FK_AspNetUsersSchool]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[School] DROP CONSTRAINT [FK_AspNetUsersSchool];
GO
IF OBJECT_ID(N'[dbo].[FK_TeacherTeacherSchool]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[TeacherSchool] DROP CONSTRAINT [FK_TeacherTeacherSchool];
GO
IF OBJECT_ID(N'[dbo].[FK_SchoolTeacherSchool]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[TeacherSchool] DROP CONSTRAINT [FK_SchoolTeacherSchool];
GO
IF OBJECT_ID(N'[dbo].[FK_SchoolGroup]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Group] DROP CONSTRAINT [FK_SchoolGroup];
GO
IF OBJECT_ID(N'[dbo].[FK_SchoolSubject]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Subject] DROP CONSTRAINT [FK_SchoolSubject];
GO
IF OBJECT_ID(N'[dbo].[FK_GroupGroupSubjectTeacher]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[GroupSubjectTeacher] DROP CONSTRAINT [FK_GroupGroupSubjectTeacher];
GO
IF OBJECT_ID(N'[dbo].[FK_SubjectGroupSubjectTeacher]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[GroupSubjectTeacher] DROP CONSTRAINT [FK_SubjectGroupSubjectTeacher];
GO
IF OBJECT_ID(N'[dbo].[FK_TeacherGroupSubjectTeacher]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[GroupSubjectTeacher] DROP CONSTRAINT [FK_TeacherGroupSubjectTeacher];
GO
IF OBJECT_ID(N'[dbo].[FK_RoomTypeGroupSubjectTeacher]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[GroupSubjectTeacher] DROP CONSTRAINT [FK_RoomTypeGroupSubjectTeacher];
GO
IF OBJECT_ID(N'[dbo].[FK_SchoolRoom]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Room] DROP CONSTRAINT [FK_SchoolRoom];
GO
IF OBJECT_ID(N'[dbo].[FK_RoomTypeRoom]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Room] DROP CONSTRAINT [FK_RoomTypeRoom];
GO
IF OBJECT_ID(N'[dbo].[FK_SchoolTimetable]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Timetable] DROP CONSTRAINT [FK_SchoolTimetable];
GO
IF OBJECT_ID(N'[dbo].[FK_GroupSubjectTeacherTimetable]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Timetable] DROP CONSTRAINT [FK_GroupSubjectTeacherTimetable];
GO
IF OBJECT_ID(N'[dbo].[FK_RoomTimetable]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Timetable] DROP CONSTRAINT [FK_RoomTimetable];
GO
IF OBJECT_ID(N'[dbo].[FK_TeacherUnavaliableHours]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[UnavaliableHours] DROP CONSTRAINT [FK_TeacherUnavaliableHours];
GO
IF OBJECT_ID(N'[dbo].[FK_SchoolUnavaliableHours]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[UnavaliableHours] DROP CONSTRAINT [FK_SchoolUnavaliableHours];
GO

-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[C__MigrationHistory]', 'U') IS NOT NULL
    DROP TABLE [dbo].[C__MigrationHistory];
GO
IF OBJECT_ID(N'[dbo].[AspNetRoles]', 'U') IS NOT NULL
    DROP TABLE [dbo].[AspNetRoles];
GO
IF OBJECT_ID(N'[dbo].[AspNetUserClaims]', 'U') IS NOT NULL
    DROP TABLE [dbo].[AspNetUserClaims];
GO
IF OBJECT_ID(N'[dbo].[AspNetUserLogins]', 'U') IS NOT NULL
    DROP TABLE [dbo].[AspNetUserLogins];
GO
IF OBJECT_ID(N'[dbo].[AspNetUsers]', 'U') IS NOT NULL
    DROP TABLE [dbo].[AspNetUsers];
GO
IF OBJECT_ID(N'[dbo].[Teacher]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Teacher];
GO
IF OBJECT_ID(N'[dbo].[School]', 'U') IS NOT NULL
    DROP TABLE [dbo].[School];
GO
IF OBJECT_ID(N'[dbo].[TeacherSchool]', 'U') IS NOT NULL
    DROP TABLE [dbo].[TeacherSchool];
GO
IF OBJECT_ID(N'[dbo].[Group]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Group];
GO
IF OBJECT_ID(N'[dbo].[Subject]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Subject];
GO
IF OBJECT_ID(N'[dbo].[GroupSubjectTeacher]', 'U') IS NOT NULL
    DROP TABLE [dbo].[GroupSubjectTeacher];
GO
IF OBJECT_ID(N'[dbo].[RoomType]', 'U') IS NOT NULL
    DROP TABLE [dbo].[RoomType];
GO
IF OBJECT_ID(N'[dbo].[Room]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Room];
GO
IF OBJECT_ID(N'[dbo].[Timetable]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Timetable];
GO
IF OBJECT_ID(N'[dbo].[UnavaliableHours]', 'U') IS NOT NULL
    DROP TABLE [dbo].[UnavaliableHours];
GO
IF OBJECT_ID(N'[dbo].[AspNetUserRoles]', 'U') IS NOT NULL
    DROP TABLE [dbo].[AspNetUserRoles];
GO

-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'C__MigrationHistory'
CREATE TABLE [dbo].[C__MigrationHistory] (
    [MigrationId] nvarchar(150)  NOT NULL,
    [ContextKey] nvarchar(300)  NOT NULL,
    [Model] varbinary(max)  NOT NULL,
    [ProductVersion] nvarchar(32)  NOT NULL
);
GO

-- Creating table 'AspNetRoles'
CREATE TABLE [dbo].[AspNetRoles] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Name] nvarchar(256)  NOT NULL
);
GO

-- Creating table 'AspNetUserClaims'
CREATE TABLE [dbo].[AspNetUserClaims] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [UserId] nvarchar(128)  NOT NULL,
    [ClaimType] nvarchar(max)  NULL,
    [ClaimValue] nvarchar(max)  NULL
);
GO

-- Creating table 'AspNetUserLogins'
CREATE TABLE [dbo].[AspNetUserLogins] (
    [LoginProvider] nvarchar(128)  NOT NULL,
    [ProviderKey] nvarchar(128)  NOT NULL,
    [UserId] nvarchar(128)  NOT NULL
);
GO

-- Creating table 'AspNetUsers'
CREATE TABLE [dbo].[AspNetUsers] (
    [Id] nvarchar(128)  NOT NULL,
    [Email] nvarchar(256)  NULL,
    [EmailConfirmed] bit  NOT NULL,
    [PasswordHash] nvarchar(max)  NULL,
    [SecurityStamp] nvarchar(max)  NULL,
    [PhoneNumber] nvarchar(max)  NULL,
    [PhoneNumberConfirmed] bit  NOT NULL,
    [TwoFactorEnabled] bit  NOT NULL,
    [LockoutEndDateUtc] datetime  NULL,
    [LockoutEnabled] bit  NOT NULL,
    [AccessFailedCount] int  NOT NULL,
    [UserName] nvarchar(256)  NOT NULL
);
GO

-- Creating table 'Teacher'
CREATE TABLE [dbo].[Teacher] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Name] nvarchar(max)  NOT NULL,
    [Lastname] nvarchar(max)  NOT NULL,
    [AspNetUsersId] nvarchar(128)  NOT NULL
);
GO

-- Creating table 'School'
CREATE TABLE [dbo].[School] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Name] nvarchar(max)  NOT NULL,
    [City] nvarchar(max)  NOT NULL,
    [Country] nvarchar(max)  NOT NULL,
    [Address] nvarchar(max)  NOT NULL,
    [AspNetUsersId] nvarchar(128)  NOT NULL
);
GO

-- Creating table 'TeacherSchool'
CREATE TABLE [dbo].[TeacherSchool] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [TeacherId] int  NOT NULL,
    [SchoolId] int  NOT NULL
);
GO

-- Creating table 'Group'
CREATE TABLE [dbo].[Group] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Name] nvarchar(max)  NOT NULL,
    [ShortName] nvarchar(max)  NOT NULL,
    [YearStart] nvarchar(max)  NOT NULL,
    [Amount] smallint  NOT NULL,
    [SchoolId] int  NOT NULL
);
GO

-- Creating table 'Subject'
CREATE TABLE [dbo].[Subject] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Name] nvarchar(max)  NOT NULL,
    [ShortName] nvarchar(max)  NOT NULL,
    [SchoolId] int  NOT NULL
);
GO

-- Creating table 'GroupSubjectTeacher'
CREATE TABLE [dbo].[GroupSubjectTeacher] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [GroupId] int  NOT NULL,
    [SubjectId] int  NOT NULL,
    [TeacherId] int  NOT NULL,
    [NumberOfHours] smallint  NOT NULL,
    [Schedule] nvarchar(max)  NOT NULL,
    [Year] nvarchar(max)  NOT NULL,
    [Semester] nvarchar(max)  NOT NULL,
    [RoomTypeId] int  NOT NULL
);
GO

-- Creating table 'RoomType'
CREATE TABLE [dbo].[RoomType] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Name] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'Room'
CREATE TABLE [dbo].[Room] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Number] nvarchar(max)  NOT NULL,
    [SchoolId] int  NOT NULL,
    [Amount] nvarchar(max)  NOT NULL,
    [RoomTypeId] int  NOT NULL
);
GO

-- Creating table 'Timetable'
CREATE TABLE [dbo].[Timetable] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [SchoolId] int  NOT NULL,
    [Year] nvarchar(max)  NOT NULL,
    [Semester] nvarchar(max)  NOT NULL,
    [Day] nvarchar(max)  NOT NULL,
    [HourStart] nvarchar(max)  NOT NULL,
    [HourEnd] nvarchar(max)  NOT NULL,
    [GroupSubjectTeacherId] int  NOT NULL,
    [RoomId] int  NOT NULL
);
GO

-- Creating table 'UnavaliableHours'
CREATE TABLE [dbo].[UnavaliableHours] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Year] nvarchar(max)  NOT NULL,
    [Semester] nvarchar(max)  NOT NULL,
    [TeacherId] int  NOT NULL,
    [SchoolId] int  NOT NULL,
    [Hours] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'AspNetUserRoles'
CREATE TABLE [dbo].[AspNetUserRoles] (
    [RoleId] int  NOT NULL,
    [UserId] nvarchar(128)  NOT NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [MigrationId], [ContextKey] in table 'C__MigrationHistory'
ALTER TABLE [dbo].[C__MigrationHistory]
ADD CONSTRAINT [PK_C__MigrationHistory]
    PRIMARY KEY CLUSTERED ([MigrationId], [ContextKey] ASC);
GO

-- Creating primary key on [Id] in table 'AspNetRoles'
ALTER TABLE [dbo].[AspNetRoles]
ADD CONSTRAINT [PK_AspNetRoles]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'AspNetUserClaims'
ALTER TABLE [dbo].[AspNetUserClaims]
ADD CONSTRAINT [PK_AspNetUserClaims]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [LoginProvider], [ProviderKey], [UserId] in table 'AspNetUserLogins'
ALTER TABLE [dbo].[AspNetUserLogins]
ADD CONSTRAINT [PK_AspNetUserLogins]
    PRIMARY KEY CLUSTERED ([LoginProvider], [ProviderKey], [UserId] ASC);
GO

-- Creating primary key on [Id] in table 'AspNetUsers'
ALTER TABLE [dbo].[AspNetUsers]
ADD CONSTRAINT [PK_AspNetUsers]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Teacher'
ALTER TABLE [dbo].[Teacher]
ADD CONSTRAINT [PK_Teacher]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'School'
ALTER TABLE [dbo].[School]
ADD CONSTRAINT [PK_School]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'TeacherSchool'
ALTER TABLE [dbo].[TeacherSchool]
ADD CONSTRAINT [PK_TeacherSchool]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Group'
ALTER TABLE [dbo].[Group]
ADD CONSTRAINT [PK_Group]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Subject'
ALTER TABLE [dbo].[Subject]
ADD CONSTRAINT [PK_Subject]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'GroupSubjectTeacher'
ALTER TABLE [dbo].[GroupSubjectTeacher]
ADD CONSTRAINT [PK_GroupSubjectTeacher]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'RoomType'
ALTER TABLE [dbo].[RoomType]
ADD CONSTRAINT [PK_RoomType]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Room'
ALTER TABLE [dbo].[Room]
ADD CONSTRAINT [PK_Room]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Timetable'
ALTER TABLE [dbo].[Timetable]
ADD CONSTRAINT [PK_Timetable]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'UnavaliableHours'
ALTER TABLE [dbo].[UnavaliableHours]
ADD CONSTRAINT [PK_UnavaliableHours]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [AspNetRoles_Id], [AspNetUsers_Id] in table 'AspNetUserRoles'
ALTER TABLE [dbo].[AspNetUserRoles]
ADD CONSTRAINT [PK_AspNetUserRoles]
    PRIMARY KEY CLUSTERED ([AspNetRoles_Id], [AspNetUsers_Id] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [UserId] in table 'AspNetUserClaims'
ALTER TABLE [dbo].[AspNetUserClaims]
ADD CONSTRAINT [FK_dbo_AspNetUserClaims_dbo_AspNetUsers_UserId]
    FOREIGN KEY ([UserId])
    REFERENCES [dbo].[AspNetUsers]
        ([Id])
    ON DELETE CASCADE ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_dbo_AspNetUserClaims_dbo_AspNetUsers_UserId'
CREATE INDEX [IX_FK_dbo_AspNetUserClaims_dbo_AspNetUsers_UserId]
ON [dbo].[AspNetUserClaims]
    ([UserId]);
GO

-- Creating foreign key on [UserId] in table 'AspNetUserLogins'
ALTER TABLE [dbo].[AspNetUserLogins]
ADD CONSTRAINT [FK_dbo_AspNetUserLogins_dbo_AspNetUsers_UserId]
    FOREIGN KEY ([UserId])
    REFERENCES [dbo].[AspNetUsers]
        ([Id])
    ON DELETE CASCADE ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_dbo_AspNetUserLogins_dbo_AspNetUsers_UserId'
CREATE INDEX [IX_FK_dbo_AspNetUserLogins_dbo_AspNetUsers_UserId]
ON [dbo].[AspNetUserLogins]
    ([UserId]);
GO

-- Creating foreign key on [AspNetRoles_Id] in table 'AspNetUserRoles'
ALTER TABLE [dbo].[AspNetUserRoles]
ADD CONSTRAINT [FK_AspNetUserRoles_AspNetRoles]
    FOREIGN KEY ([AspNetRoles_Id])
    REFERENCES [dbo].[AspNetRoles]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating foreign key on [AspNetUsers_Id] in table 'AspNetUserRoles'
ALTER TABLE [dbo].[AspNetUserRoles]
ADD CONSTRAINT [FK_AspNetUserRoles_AspNetUsers]
    FOREIGN KEY ([AspNetUsers_Id])
    REFERENCES [dbo].[AspNetUsers]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_AspNetUserRoles_AspNetUsers'
CREATE INDEX [IX_FK_AspNetUserRoles_AspNetUsers]
ON [dbo].[AspNetUserRoles]
    ([AspNetUsers_Id]);
GO

-- Creating foreign key on [AspNetUsersId] in table 'Teacher'
ALTER TABLE [dbo].[Teacher]
ADD CONSTRAINT [FK_AspNetUsersTeacher]
    FOREIGN KEY ([AspNetUsersId])
    REFERENCES [dbo].[AspNetUsers]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_AspNetUsersTeacher'
CREATE INDEX [IX_FK_AspNetUsersTeacher]
ON [dbo].[Teacher]
    ([AspNetUsersId]);
GO

-- Creating foreign key on [AspNetUsersId] in table 'School'
ALTER TABLE [dbo].[School]
ADD CONSTRAINT [FK_AspNetUsersSchool]
    FOREIGN KEY ([AspNetUsersId])
    REFERENCES [dbo].[AspNetUsers]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_AspNetUsersSchool'
CREATE INDEX [IX_FK_AspNetUsersSchool]
ON [dbo].[School]
    ([AspNetUsersId]);
GO

-- Creating foreign key on [TeacherId] in table 'TeacherSchool'
ALTER TABLE [dbo].[TeacherSchool]
ADD CONSTRAINT [FK_TeacherTeacherSchool]
    FOREIGN KEY ([TeacherId])
    REFERENCES [dbo].[Teacher]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_TeacherTeacherSchool'
CREATE INDEX [IX_FK_TeacherTeacherSchool]
ON [dbo].[TeacherSchool]
    ([TeacherId]);
GO

-- Creating foreign key on [SchoolId] in table 'TeacherSchool'
ALTER TABLE [dbo].[TeacherSchool]
ADD CONSTRAINT [FK_SchoolTeacherSchool]
    FOREIGN KEY ([SchoolId])
    REFERENCES [dbo].[School]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_SchoolTeacherSchool'
CREATE INDEX [IX_FK_SchoolTeacherSchool]
ON [dbo].[TeacherSchool]
    ([SchoolId]);
GO

-- Creating foreign key on [SchoolId] in table 'Group'
ALTER TABLE [dbo].[Group]
ADD CONSTRAINT [FK_SchoolGroup]
    FOREIGN KEY ([SchoolId])
    REFERENCES [dbo].[School]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_SchoolGroup'
CREATE INDEX [IX_FK_SchoolGroup]
ON [dbo].[Group]
    ([SchoolId]);
GO

-- Creating foreign key on [SchoolId] in table 'Subject'
ALTER TABLE [dbo].[Subject]
ADD CONSTRAINT [FK_SchoolSubject]
    FOREIGN KEY ([SchoolId])
    REFERENCES [dbo].[School]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_SchoolSubject'
CREATE INDEX [IX_FK_SchoolSubject]
ON [dbo].[Subject]
    ([SchoolId]);
GO

-- Creating foreign key on [GroupId] in table 'GroupSubjectTeacher'
ALTER TABLE [dbo].[GroupSubjectTeacher]
ADD CONSTRAINT [FK_GroupGroupSubjectTeacher]
    FOREIGN KEY ([GroupId])
    REFERENCES [dbo].[Group]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_GroupGroupSubjectTeacher'
CREATE INDEX [IX_FK_GroupGroupSubjectTeacher]
ON [dbo].[GroupSubjectTeacher]
    ([GroupId]);
GO

-- Creating foreign key on [SubjectId] in table 'GroupSubjectTeacher'
ALTER TABLE [dbo].[GroupSubjectTeacher]
ADD CONSTRAINT [FK_SubjectGroupSubjectTeacher]
    FOREIGN KEY ([SubjectId])
    REFERENCES [dbo].[Subject]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_SubjectGroupSubjectTeacher'
CREATE INDEX [IX_FK_SubjectGroupSubjectTeacher]
ON [dbo].[GroupSubjectTeacher]
    ([SubjectId]);
GO

-- Creating foreign key on [TeacherId] in table 'GroupSubjectTeacher'
ALTER TABLE [dbo].[GroupSubjectTeacher]
ADD CONSTRAINT [FK_TeacherGroupSubjectTeacher]
    FOREIGN KEY ([TeacherId])
    REFERENCES [dbo].[Teacher]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_TeacherGroupSubjectTeacher'
CREATE INDEX [IX_FK_TeacherGroupSubjectTeacher]
ON [dbo].[GroupSubjectTeacher]
    ([TeacherId]);
GO

-- Creating foreign key on [RoomTypeId] in table 'GroupSubjectTeacher'
ALTER TABLE [dbo].[GroupSubjectTeacher]
ADD CONSTRAINT [FK_RoomTypeGroupSubjectTeacher]
    FOREIGN KEY ([RoomTypeId])
    REFERENCES [dbo].[RoomType]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_RoomTypeGroupSubjectTeacher'
CREATE INDEX [IX_FK_RoomTypeGroupSubjectTeacher]
ON [dbo].[GroupSubjectTeacher]
    ([RoomTypeId]);
GO

-- Creating foreign key on [SchoolId] in table 'Room'
ALTER TABLE [dbo].[Room]
ADD CONSTRAINT [FK_SchoolRoom]
    FOREIGN KEY ([SchoolId])
    REFERENCES [dbo].[School]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_SchoolRoom'
CREATE INDEX [IX_FK_SchoolRoom]
ON [dbo].[Room]
    ([SchoolId]);
GO

-- Creating foreign key on [RoomTypeId] in table 'Room'
ALTER TABLE [dbo].[Room]
ADD CONSTRAINT [FK_RoomTypeRoom]
    FOREIGN KEY ([RoomTypeId])
    REFERENCES [dbo].[RoomType]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_RoomTypeRoom'
CREATE INDEX [IX_FK_RoomTypeRoom]
ON [dbo].[Room]
    ([RoomTypeId]);
GO

-- Creating foreign key on [SchoolId] in table 'Timetable'
ALTER TABLE [dbo].[Timetable]
ADD CONSTRAINT [FK_SchoolTimetable]
    FOREIGN KEY ([SchoolId])
    REFERENCES [dbo].[School]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_SchoolTimetable'
CREATE INDEX [IX_FK_SchoolTimetable]
ON [dbo].[Timetable]
    ([SchoolId]);
GO

-- Creating foreign key on [GroupSubjectTeacherId] in table 'Timetable'
ALTER TABLE [dbo].[Timetable]
ADD CONSTRAINT [FK_GroupSubjectTeacherTimetable]
    FOREIGN KEY ([GroupSubjectTeacherId])
    REFERENCES [dbo].[GroupSubjectTeacher]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_GroupSubjectTeacherTimetable'
CREATE INDEX [IX_FK_GroupSubjectTeacherTimetable]
ON [dbo].[Timetable]
    ([GroupSubjectTeacherId]);
GO

-- Creating foreign key on [RoomId] in table 'Timetable'
ALTER TABLE [dbo].[Timetable]
ADD CONSTRAINT [FK_RoomTimetable]
    FOREIGN KEY ([RoomId])
    REFERENCES [dbo].[Room]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_RoomTimetable'
CREATE INDEX [IX_FK_RoomTimetable]
ON [dbo].[Timetable]
    ([RoomId]);
GO

-- Creating foreign key on [TeacherId] in table 'UnavaliableHours'
ALTER TABLE [dbo].[UnavaliableHours]
ADD CONSTRAINT [FK_TeacherUnavaliableHours]
    FOREIGN KEY ([TeacherId])
    REFERENCES [dbo].[Teacher]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_TeacherUnavaliableHours'
CREATE INDEX [IX_FK_TeacherUnavaliableHours]
ON [dbo].[UnavaliableHours]
    ([TeacherId]);
GO

-- Creating foreign key on [SchoolId] in table 'UnavaliableHours'
ALTER TABLE [dbo].[UnavaliableHours]
ADD CONSTRAINT [FK_SchoolUnavaliableHours]
    FOREIGN KEY ([SchoolId])
    REFERENCES [dbo].[School]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_SchoolUnavaliableHours'
CREATE INDEX [IX_FK_SchoolUnavaliableHours]
ON [dbo].[UnavaliableHours]
    ([SchoolId]);
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------