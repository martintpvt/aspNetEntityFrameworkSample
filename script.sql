USE [master]
GO
/****** Object:  Database [dbProyectoFinal]    Script Date: 02/02/2017 5:33:08 ******/
CREATE DATABASE [dbProyectoFinal]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'dbProyectoFinal', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL13.MSSQLSERVER\MSSQL\DATA\dbProyectoFinal.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'dbProyectoFinal_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL13.MSSQLSERVER\MSSQL\DATA\dbProyectoFinal_log.ldf' , SIZE = 73728KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [dbProyectoFinal] SET COMPATIBILITY_LEVEL = 130
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [dbProyectoFinal].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [dbProyectoFinal] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [dbProyectoFinal] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [dbProyectoFinal] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [dbProyectoFinal] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [dbProyectoFinal] SET ARITHABORT OFF 
GO
ALTER DATABASE [dbProyectoFinal] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [dbProyectoFinal] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [dbProyectoFinal] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [dbProyectoFinal] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [dbProyectoFinal] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [dbProyectoFinal] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [dbProyectoFinal] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [dbProyectoFinal] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [dbProyectoFinal] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [dbProyectoFinal] SET  ENABLE_BROKER 
GO
ALTER DATABASE [dbProyectoFinal] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [dbProyectoFinal] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [dbProyectoFinal] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [dbProyectoFinal] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [dbProyectoFinal] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [dbProyectoFinal] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [dbProyectoFinal] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [dbProyectoFinal] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [dbProyectoFinal] SET  MULTI_USER 
GO
ALTER DATABASE [dbProyectoFinal] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [dbProyectoFinal] SET DB_CHAINING OFF 
GO
ALTER DATABASE [dbProyectoFinal] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [dbProyectoFinal] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [dbProyectoFinal] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [dbProyectoFinal] SET QUERY_STORE = OFF
GO
USE [dbProyectoFinal]
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET MAXDOP = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET LEGACY_CARDINALITY_ESTIMATION = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET PARAMETER_SNIFFING = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET QUERY_OPTIMIZER_HOTFIXES = PRIMARY;
GO
USE [dbProyectoFinal]
GO
/****** Object:  DatabaseRole [aspnet_WebEvent_FullAccess]    Script Date: 02/02/2017 5:33:08 ******/
CREATE ROLE [aspnet_WebEvent_FullAccess]
GO
/****** Object:  DatabaseRole [aspnet_Roles_ReportingAccess]    Script Date: 02/02/2017 5:33:08 ******/
CREATE ROLE [aspnet_Roles_ReportingAccess]
GO
/****** Object:  DatabaseRole [aspnet_Roles_FullAccess]    Script Date: 02/02/2017 5:33:08 ******/
CREATE ROLE [aspnet_Roles_FullAccess]
GO
/****** Object:  DatabaseRole [aspnet_Roles_BasicAccess]    Script Date: 02/02/2017 5:33:08 ******/
CREATE ROLE [aspnet_Roles_BasicAccess]
GO
/****** Object:  DatabaseRole [aspnet_Profile_ReportingAccess]    Script Date: 02/02/2017 5:33:08 ******/
CREATE ROLE [aspnet_Profile_ReportingAccess]
GO
/****** Object:  DatabaseRole [aspnet_Profile_FullAccess]    Script Date: 02/02/2017 5:33:08 ******/
CREATE ROLE [aspnet_Profile_FullAccess]
GO
/****** Object:  DatabaseRole [aspnet_Profile_BasicAccess]    Script Date: 02/02/2017 5:33:08 ******/
CREATE ROLE [aspnet_Profile_BasicAccess]
GO
/****** Object:  DatabaseRole [aspnet_Personalization_ReportingAccess]    Script Date: 02/02/2017 5:33:08 ******/
CREATE ROLE [aspnet_Personalization_ReportingAccess]
GO
/****** Object:  DatabaseRole [aspnet_Personalization_FullAccess]    Script Date: 02/02/2017 5:33:08 ******/
CREATE ROLE [aspnet_Personalization_FullAccess]
GO
/****** Object:  DatabaseRole [aspnet_Personalization_BasicAccess]    Script Date: 02/02/2017 5:33:08 ******/
CREATE ROLE [aspnet_Personalization_BasicAccess]
GO
/****** Object:  DatabaseRole [aspnet_Membership_ReportingAccess]    Script Date: 02/02/2017 5:33:08 ******/
CREATE ROLE [aspnet_Membership_ReportingAccess]
GO
/****** Object:  DatabaseRole [aspnet_Membership_FullAccess]    Script Date: 02/02/2017 5:33:08 ******/
CREATE ROLE [aspnet_Membership_FullAccess]
GO
/****** Object:  DatabaseRole [aspnet_Membership_BasicAccess]    Script Date: 02/02/2017 5:33:08 ******/
CREATE ROLE [aspnet_Membership_BasicAccess]
GO
ALTER ROLE [aspnet_Roles_BasicAccess] ADD MEMBER [aspnet_Roles_FullAccess]
GO
ALTER ROLE [aspnet_Roles_ReportingAccess] ADD MEMBER [aspnet_Roles_FullAccess]
GO
ALTER ROLE [aspnet_Profile_BasicAccess] ADD MEMBER [aspnet_Profile_FullAccess]
GO
ALTER ROLE [aspnet_Profile_ReportingAccess] ADD MEMBER [aspnet_Profile_FullAccess]
GO
ALTER ROLE [aspnet_Personalization_BasicAccess] ADD MEMBER [aspnet_Personalization_FullAccess]
GO
ALTER ROLE [aspnet_Personalization_ReportingAccess] ADD MEMBER [aspnet_Personalization_FullAccess]
GO
ALTER ROLE [aspnet_Membership_BasicAccess] ADD MEMBER [aspnet_Membership_FullAccess]
GO
ALTER ROLE [aspnet_Membership_ReportingAccess] ADD MEMBER [aspnet_Membership_FullAccess]
GO
/****** Object:  Schema [aspnet_Membership_BasicAccess]    Script Date: 02/02/2017 5:33:08 ******/
CREATE SCHEMA [aspnet_Membership_BasicAccess]
GO
/****** Object:  Schema [aspnet_Membership_FullAccess]    Script Date: 02/02/2017 5:33:08 ******/
CREATE SCHEMA [aspnet_Membership_FullAccess]
GO
/****** Object:  Schema [aspnet_Membership_ReportingAccess]    Script Date: 02/02/2017 5:33:08 ******/
CREATE SCHEMA [aspnet_Membership_ReportingAccess]
GO
/****** Object:  Schema [aspnet_Personalization_BasicAccess]    Script Date: 02/02/2017 5:33:08 ******/
CREATE SCHEMA [aspnet_Personalization_BasicAccess]
GO
/****** Object:  Schema [aspnet_Personalization_FullAccess]    Script Date: 02/02/2017 5:33:08 ******/
CREATE SCHEMA [aspnet_Personalization_FullAccess]
GO
/****** Object:  Schema [aspnet_Personalization_ReportingAccess]    Script Date: 02/02/2017 5:33:08 ******/
CREATE SCHEMA [aspnet_Personalization_ReportingAccess]
GO
/****** Object:  Schema [aspnet_Profile_BasicAccess]    Script Date: 02/02/2017 5:33:08 ******/
CREATE SCHEMA [aspnet_Profile_BasicAccess]
GO
/****** Object:  Schema [aspnet_Profile_FullAccess]    Script Date: 02/02/2017 5:33:08 ******/
CREATE SCHEMA [aspnet_Profile_FullAccess]
GO
/****** Object:  Schema [aspnet_Profile_ReportingAccess]    Script Date: 02/02/2017 5:33:08 ******/
CREATE SCHEMA [aspnet_Profile_ReportingAccess]
GO
/****** Object:  Schema [aspnet_Roles_BasicAccess]    Script Date: 02/02/2017 5:33:08 ******/
CREATE SCHEMA [aspnet_Roles_BasicAccess]
GO
/****** Object:  Schema [aspnet_Roles_FullAccess]    Script Date: 02/02/2017 5:33:08 ******/
CREATE SCHEMA [aspnet_Roles_FullAccess]
GO
/****** Object:  Schema [aspnet_Roles_ReportingAccess]    Script Date: 02/02/2017 5:33:08 ******/
CREATE SCHEMA [aspnet_Roles_ReportingAccess]
GO
/****** Object:  Schema [aspnet_WebEvent_FullAccess]    Script Date: 02/02/2017 5:33:08 ******/
CREATE SCHEMA [aspnet_WebEvent_FullAccess]
GO
/****** Object:  Table [dbo].[aspnet_Users]    Script Date: 02/02/2017 5:33:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[aspnet_Users](
	[ApplicationId] [uniqueidentifier] NOT NULL,
	[UserId] [uniqueidentifier] NOT NULL,
	[UserName] [nvarchar](256) NOT NULL,
	[LoweredUserName] [nvarchar](256) NOT NULL,
	[MobileAlias] [nvarchar](16) NULL,
	[IsAnonymous] [bit] NOT NULL,
	[LastActivityDate] [datetime] NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [aspnet_Users_Index]    Script Date: 02/02/2017 5:33:08 ******/
CREATE UNIQUE CLUSTERED INDEX [aspnet_Users_Index] ON [dbo].[aspnet_Users]
(
	[ApplicationId] ASC,
	[LoweredUserName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[aspnet_Membership]    Script Date: 02/02/2017 5:33:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[aspnet_Membership](
	[ApplicationId] [uniqueidentifier] NOT NULL,
	[UserId] [uniqueidentifier] NOT NULL,
	[Password] [nvarchar](128) NOT NULL,
	[PasswordFormat] [int] NOT NULL,
	[PasswordSalt] [nvarchar](128) NOT NULL,
	[MobilePIN] [nvarchar](16) NULL,
	[Email] [nvarchar](256) NULL,
	[LoweredEmail] [nvarchar](256) NULL,
	[PasswordQuestion] [nvarchar](256) NULL,
	[PasswordAnswer] [nvarchar](128) NULL,
	[IsApproved] [bit] NOT NULL,
	[IsLockedOut] [bit] NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[LastLoginDate] [datetime] NOT NULL,
	[LastPasswordChangedDate] [datetime] NOT NULL,
	[LastLockoutDate] [datetime] NOT NULL,
	[FailedPasswordAttemptCount] [int] NOT NULL,
	[FailedPasswordAttemptWindowStart] [datetime] NOT NULL,
	[FailedPasswordAnswerAttemptCount] [int] NOT NULL,
	[FailedPasswordAnswerAttemptWindowStart] [datetime] NOT NULL,
	[Comment] [ntext] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [aspnet_Membership_index]    Script Date: 02/02/2017 5:33:08 ******/
CREATE CLUSTERED INDEX [aspnet_Membership_index] ON [dbo].[aspnet_Membership]
(
	[ApplicationId] ASC,
	[LoweredEmail] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  View [dbo].[vw_aspnet_MembershipUsers]    Script Date: 02/02/2017 5:33:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

  CREATE VIEW [dbo].[vw_aspnet_MembershipUsers]
  AS SELECT [dbo].[aspnet_Membership].[UserId],
            [dbo].[aspnet_Membership].[PasswordFormat],
            [dbo].[aspnet_Membership].[MobilePIN],
            [dbo].[aspnet_Membership].[Email],
            [dbo].[aspnet_Membership].[LoweredEmail],
            [dbo].[aspnet_Membership].[PasswordQuestion],
            [dbo].[aspnet_Membership].[PasswordAnswer],
            [dbo].[aspnet_Membership].[IsApproved],
            [dbo].[aspnet_Membership].[IsLockedOut],
            [dbo].[aspnet_Membership].[CreateDate],
            [dbo].[aspnet_Membership].[LastLoginDate],
            [dbo].[aspnet_Membership].[LastPasswordChangedDate],
            [dbo].[aspnet_Membership].[LastLockoutDate],
            [dbo].[aspnet_Membership].[FailedPasswordAttemptCount],
            [dbo].[aspnet_Membership].[FailedPasswordAttemptWindowStart],
            [dbo].[aspnet_Membership].[FailedPasswordAnswerAttemptCount],
            [dbo].[aspnet_Membership].[FailedPasswordAnswerAttemptWindowStart],
            [dbo].[aspnet_Membership].[Comment],
            [dbo].[aspnet_Users].[ApplicationId],
            [dbo].[aspnet_Users].[UserName],
            [dbo].[aspnet_Users].[MobileAlias],
            [dbo].[aspnet_Users].[IsAnonymous],
            [dbo].[aspnet_Users].[LastActivityDate]
  FROM [dbo].[aspnet_Membership] INNER JOIN [dbo].[aspnet_Users]
      ON [dbo].[aspnet_Membership].[UserId] = [dbo].[aspnet_Users].[UserId]
  
GO
/****** Object:  Table [dbo].[aspnet_Profile]    Script Date: 02/02/2017 5:33:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[aspnet_Profile](
	[UserId] [uniqueidentifier] NOT NULL,
	[PropertyNames] [ntext] NOT NULL,
	[PropertyValuesString] [ntext] NOT NULL,
	[PropertyValuesBinary] [image] NOT NULL,
	[LastUpdatedDate] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  View [dbo].[vw_aspnet_Profiles]    Script Date: 02/02/2017 5:33:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

  CREATE VIEW [dbo].[vw_aspnet_Profiles]
  AS SELECT [dbo].[aspnet_Profile].[UserId], [dbo].[aspnet_Profile].[LastUpdatedDate],
      [DataSize]=  DATALENGTH([dbo].[aspnet_Profile].[PropertyNames])
                 + DATALENGTH([dbo].[aspnet_Profile].[PropertyValuesString])
                 + DATALENGTH([dbo].[aspnet_Profile].[PropertyValuesBinary])
  FROM [dbo].[aspnet_Profile]
  
GO
/****** Object:  Table [dbo].[aspnet_Roles]    Script Date: 02/02/2017 5:33:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[aspnet_Roles](
	[ApplicationId] [uniqueidentifier] NOT NULL,
	[RoleId] [uniqueidentifier] NOT NULL,
	[RoleName] [nvarchar](256) NOT NULL,
	[LoweredRoleName] [nvarchar](256) NOT NULL,
	[Description] [nvarchar](256) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [aspnet_Roles_index1]    Script Date: 02/02/2017 5:33:08 ******/
CREATE UNIQUE CLUSTERED INDEX [aspnet_Roles_index1] ON [dbo].[aspnet_Roles]
(
	[ApplicationId] ASC,
	[LoweredRoleName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  View [dbo].[vw_aspnet_Roles]    Script Date: 02/02/2017 5:33:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

  CREATE VIEW [dbo].[vw_aspnet_Roles]
  AS SELECT [dbo].[aspnet_Roles].[ApplicationId], [dbo].[aspnet_Roles].[RoleId], [dbo].[aspnet_Roles].[RoleName], [dbo].[aspnet_Roles].[LoweredRoleName], [dbo].[aspnet_Roles].[Description]
  FROM [dbo].[aspnet_Roles]
  
GO
/****** Object:  Table [dbo].[aspnet_UsersInRoles]    Script Date: 02/02/2017 5:33:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[aspnet_UsersInRoles](
	[UserId] [uniqueidentifier] NOT NULL,
	[RoleId] [uniqueidentifier] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  View [dbo].[vw_aspnet_UsersInRoles]    Script Date: 02/02/2017 5:33:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

  CREATE VIEW [dbo].[vw_aspnet_UsersInRoles]
  AS SELECT [dbo].[aspnet_UsersInRoles].[UserId], [dbo].[aspnet_UsersInRoles].[RoleId]
  FROM [dbo].[aspnet_UsersInRoles]
  
GO
/****** Object:  Table [dbo].[aspnet_Paths]    Script Date: 02/02/2017 5:33:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[aspnet_Paths](
	[ApplicationId] [uniqueidentifier] NOT NULL,
	[PathId] [uniqueidentifier] NOT NULL,
	[Path] [nvarchar](256) NOT NULL,
	[LoweredPath] [nvarchar](256) NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [aspnet_Paths_index]    Script Date: 02/02/2017 5:33:08 ******/
CREATE UNIQUE CLUSTERED INDEX [aspnet_Paths_index] ON [dbo].[aspnet_Paths]
(
	[ApplicationId] ASC,
	[LoweredPath] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  View [dbo].[vw_aspnet_WebPartState_Paths]    Script Date: 02/02/2017 5:33:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

  CREATE VIEW [dbo].[vw_aspnet_WebPartState_Paths]
  AS SELECT [dbo].[aspnet_Paths].[ApplicationId], [dbo].[aspnet_Paths].[PathId], [dbo].[aspnet_Paths].[Path], [dbo].[aspnet_Paths].[LoweredPath]
  FROM [dbo].[aspnet_Paths]
  
GO
/****** Object:  Table [dbo].[aspnet_PersonalizationAllUsers]    Script Date: 02/02/2017 5:33:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[aspnet_PersonalizationAllUsers](
	[PathId] [uniqueidentifier] NOT NULL,
	[PageSettings] [image] NOT NULL,
	[LastUpdatedDate] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[PathId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  View [dbo].[vw_aspnet_WebPartState_Shared]    Script Date: 02/02/2017 5:33:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

  CREATE VIEW [dbo].[vw_aspnet_WebPartState_Shared]
  AS SELECT [dbo].[aspnet_PersonalizationAllUsers].[PathId], [DataSize]=DATALENGTH([dbo].[aspnet_PersonalizationAllUsers].[PageSettings]), [dbo].[aspnet_PersonalizationAllUsers].[LastUpdatedDate]
  FROM [dbo].[aspnet_PersonalizationAllUsers]
  
GO
/****** Object:  Table [dbo].[aspnet_PersonalizationPerUser]    Script Date: 02/02/2017 5:33:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[aspnet_PersonalizationPerUser](
	[Id] [uniqueidentifier] NOT NULL,
	[PathId] [uniqueidentifier] NULL,
	[UserId] [uniqueidentifier] NULL,
	[PageSettings] [image] NOT NULL,
	[LastUpdatedDate] [datetime] NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Index [aspnet_PersonalizationPerUser_index1]    Script Date: 02/02/2017 5:33:08 ******/
CREATE UNIQUE CLUSTERED INDEX [aspnet_PersonalizationPerUser_index1] ON [dbo].[aspnet_PersonalizationPerUser]
(
	[PathId] ASC,
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  View [dbo].[vw_aspnet_WebPartState_User]    Script Date: 02/02/2017 5:33:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

  CREATE VIEW [dbo].[vw_aspnet_WebPartState_User]
  AS SELECT [dbo].[aspnet_PersonalizationPerUser].[PathId], [dbo].[aspnet_PersonalizationPerUser].[UserId], [DataSize]=DATALENGTH([dbo].[aspnet_PersonalizationPerUser].[PageSettings]), [dbo].[aspnet_PersonalizationPerUser].[LastUpdatedDate]
  FROM [dbo].[aspnet_PersonalizationPerUser]
  
GO
/****** Object:  Table [dbo].[aspnet_Applications]    Script Date: 02/02/2017 5:33:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[aspnet_Applications](
	[ApplicationName] [nvarchar](256) NOT NULL,
	[LoweredApplicationName] [nvarchar](256) NOT NULL,
	[ApplicationId] [uniqueidentifier] NOT NULL,
	[Description] [nvarchar](256) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [aspnet_Applications_Index]    Script Date: 02/02/2017 5:33:08 ******/
CREATE CLUSTERED INDEX [aspnet_Applications_Index] ON [dbo].[aspnet_Applications]
(
	[LoweredApplicationName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  View [dbo].[vw_aspnet_Applications]    Script Date: 02/02/2017 5:33:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

  CREATE VIEW [dbo].[vw_aspnet_Applications]
  AS SELECT [dbo].[aspnet_Applications].[ApplicationName], [dbo].[aspnet_Applications].[LoweredApplicationName], [dbo].[aspnet_Applications].[ApplicationId], [dbo].[aspnet_Applications].[Description]
  FROM [dbo].[aspnet_Applications]
  
GO
/****** Object:  View [dbo].[vw_aspnet_Users]    Script Date: 02/02/2017 5:33:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

  CREATE VIEW [dbo].[vw_aspnet_Users]
  AS SELECT [dbo].[aspnet_Users].[ApplicationId], [dbo].[aspnet_Users].[UserId], [dbo].[aspnet_Users].[UserName], [dbo].[aspnet_Users].[LoweredUserName], [dbo].[aspnet_Users].[MobileAlias], [dbo].[aspnet_Users].[IsAnonymous], [dbo].[aspnet_Users].[LastActivityDate]
  FROM [dbo].[aspnet_Users]
  
GO
/****** Object:  Table [dbo].[aspnet_SchemaVersions]    Script Date: 02/02/2017 5:33:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[aspnet_SchemaVersions](
	[Feature] [nvarchar](128) NOT NULL,
	[CompatibleSchemaVersion] [nvarchar](128) NOT NULL,
	[IsCurrentVersion] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Feature] ASC,
	[CompatibleSchemaVersion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[aspnet_WebEvent_Events]    Script Date: 02/02/2017 5:33:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[aspnet_WebEvent_Events](
	[EventId] [char](32) NOT NULL,
	[EventTimeUtc] [datetime] NOT NULL,
	[EventTime] [datetime] NOT NULL,
	[EventType] [nvarchar](256) NOT NULL,
	[EventSequence] [decimal](19, 0) NOT NULL,
	[EventOccurrence] [decimal](19, 0) NOT NULL,
	[EventCode] [int] NOT NULL,
	[EventDetailCode] [int] NOT NULL,
	[Message] [nvarchar](1024) NULL,
	[ApplicationPath] [nvarchar](256) NULL,
	[ApplicationVirtualPath] [nvarchar](256) NULL,
	[MachineName] [nvarchar](256) NOT NULL,
	[RequestUrl] [nvarchar](1024) NULL,
	[ExceptionType] [nvarchar](256) NULL,
	[Details] [ntext] NULL,
PRIMARY KEY CLUSTERED 
(
	[EventId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Bodega]    Script Date: 02/02/2017 5:33:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Bodega](
	[Id_Bodega] [int] IDENTITY(1,1) NOT NULL,
	[NombreBodega] [varchar](50) NOT NULL,
	[DireccionBodega] [varchar](100) NOT NULL,
	[CapacidadBodega] [int] NOT NULL,
	[TelefonoBodega] [varchar](10) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id_Bodega] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Categoria]    Script Date: 02/02/2017 5:33:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categoria](
	[Id_Categoria] [int] IDENTITY(1,1) NOT NULL,
	[NombreCategoria] [varchar](50) NOT NULL,
	[DescripcionCategoria] [varchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id_Categoria] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Cliente]    Script Date: 02/02/2017 5:33:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cliente](
	[Id_Cliente] [int] IDENTITY(1,1) NOT NULL,
	[NombreCliente] [varchar](50) NOT NULL,
	[ApellidoCliente] [varchar](50) NOT NULL,
	[IdentificacionCliente] [varchar](13) NOT NULL,
	[DireccionCliente] [varchar](50) NOT NULL,
	[TelefonoCliente] [varchar](10) NULL,
	[CorreoElectronicoCliente] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id_Cliente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[NotaCredito]    Script Date: 02/02/2017 5:33:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NotaCredito](
	[Id_NotaCredito] [int] IDENTITY(1,1) NOT NULL,
	[Id_Venta] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id_NotaCredito] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Proveedor]    Script Date: 02/02/2017 5:33:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Proveedor](
	[Id_Proveedor] [int] IDENTITY(1,1) NOT NULL,
	[NombreProveedor] [varchar](50) NOT NULL,
	[RUCProveedor] [char](13) NOT NULL,
	[DireccionProveedor] [varchar](100) NOT NULL,
	[TelefonoProveedor] [varchar](10) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id_Proveedor] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TipoLlanta]    Script Date: 02/02/2017 5:33:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TipoLlanta](
	[Id_TipoLlanta] [int] IDENTITY(1,1) NOT NULL,
	[Id_Bodega] [int] NOT NULL,
	[Id_Categoria] [int] NOT NULL,
	[Id_Usuario] [int] NOT NULL,
	[Id_Proveedor] [int] NOT NULL,
	[NombreTipoLlanta] [varchar](50) NOT NULL,
	[Stock] [int] NOT NULL,
	[Marca] [varchar](50) NOT NULL,
	[Rin] [int] NOT NULL,
	[PrecioCompra] [decimal](30, 2) NOT NULL,
	[PrecioUnitario] [decimal](30, 2) NOT NULL,
	[Color] [varchar](15) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id_TipoLlanta] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Usuario]    Script Date: 02/02/2017 5:33:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Usuario](
	[Id_Usuario] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [uniqueidentifier] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id_Usuario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Venta]    Script Date: 02/02/2017 5:33:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Venta](
	[Id_Venta] [int] IDENTITY(1,1) NOT NULL,
	[Id_Usuario] [int] NOT NULL,
	[Id_Cliente] [int] NULL,
	[FechaFactura] [date] NOT NULL,
	[TotalFactura] [decimal](30, 2) NOT NULL,
	[Devuelto] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id_Venta] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[VentaTipoLlanta]    Script Date: 02/02/2017 5:33:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VentaTipoLlanta](
	[Id_Venta] [int] NOT NULL,
	[Id_TipoLlanta] [int] NOT NULL,
	[Cantidad] [int] NOT NULL
) ON [PRIMARY]

GO
INSERT [dbo].[aspnet_Applications] ([ApplicationName], [LoweredApplicationName], [ApplicationId], [Description]) VALUES (N'Myweb', N'myweb', N'53f29b0b-3256-430c-ab1a-618c2e2c27c4', NULL)
INSERT [dbo].[aspnet_Membership] ([ApplicationId], [UserId], [Password], [PasswordFormat], [PasswordSalt], [MobilePIN], [Email], [LoweredEmail], [PasswordQuestion], [PasswordAnswer], [IsApproved], [IsLockedOut], [CreateDate], [LastLoginDate], [LastPasswordChangedDate], [LastLockoutDate], [FailedPasswordAttemptCount], [FailedPasswordAttemptWindowStart], [FailedPasswordAnswerAttemptCount], [FailedPasswordAnswerAttemptWindowStart], [Comment]) VALUES (N'53f29b0b-3256-430c-ab1a-618c2e2c27c4', N'2bd49b6c-c24b-4689-bbdf-0fb56c395285', N'admin123', 0, N'g3JIKUNq/v0yn0oObUHG0Q==', NULL, N'admin@udlanet.ec', N'admin@udlanet.ec', NULL, NULL, 1, 0, CAST(N'2017-02-02T08:12:42.000' AS DateTime), CAST(N'2017-02-02T10:23:16.467' AS DateTime), CAST(N'2017-02-02T08:12:42.000' AS DateTime), CAST(N'1754-01-01T00:00:00.000' AS DateTime), 0, CAST(N'1754-01-01T00:00:00.000' AS DateTime), 0, CAST(N'1754-01-01T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[aspnet_Membership] ([ApplicationId], [UserId], [Password], [PasswordFormat], [PasswordSalt], [MobilePIN], [Email], [LoweredEmail], [PasswordQuestion], [PasswordAnswer], [IsApproved], [IsLockedOut], [CreateDate], [LastLoginDate], [LastPasswordChangedDate], [LastLockoutDate], [FailedPasswordAttemptCount], [FailedPasswordAttemptWindowStart], [FailedPasswordAnswerAttemptCount], [FailedPasswordAnswerAttemptWindowStart], [Comment]) VALUES (N'53f29b0b-3256-430c-ab1a-618c2e2c27c4', N'4198bd77-dde7-495b-87b9-d242493a45d3', N'dalith123', 0, N'vGrpUvZwBAO02BVRfPaxLw==', NULL, N'dalith123@udlanet.ec', N'dalith123@udlanet.ec', NULL, NULL, 1, 0, CAST(N'2017-02-02T09:43:51.000' AS DateTime), CAST(N'2017-02-02T10:28:02.190' AS DateTime), CAST(N'2017-02-02T09:43:51.000' AS DateTime), CAST(N'1754-01-01T00:00:00.000' AS DateTime), 0, CAST(N'1754-01-01T00:00:00.000' AS DateTime), 0, CAST(N'1754-01-01T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[aspnet_Membership] ([ApplicationId], [UserId], [Password], [PasswordFormat], [PasswordSalt], [MobilePIN], [Email], [LoweredEmail], [PasswordQuestion], [PasswordAnswer], [IsApproved], [IsLockedOut], [CreateDate], [LastLoginDate], [LastPasswordChangedDate], [LastLockoutDate], [FailedPasswordAttemptCount], [FailedPasswordAttemptWindowStart], [FailedPasswordAnswerAttemptCount], [FailedPasswordAnswerAttemptWindowStart], [Comment]) VALUES (N'53f29b0b-3256-430c-ab1a-618c2e2c27c4', N'd11de2b9-de81-4a42-aa12-a1b6a0797668', N'giss123', 0, N'Gb3Q0SVGF0hxVVczM+qwmQ==', NULL, N'giss@udlanet.ec', N'giss@udlanet.ec', NULL, NULL, 1, 0, CAST(N'2017-02-02T08:41:05.000' AS DateTime), CAST(N'2017-02-02T10:25:12.097' AS DateTime), CAST(N'2017-02-02T08:41:05.000' AS DateTime), CAST(N'1754-01-01T00:00:00.000' AS DateTime), 0, CAST(N'1754-01-01T00:00:00.000' AS DateTime), 0, CAST(N'1754-01-01T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[aspnet_Membership] ([ApplicationId], [UserId], [Password], [PasswordFormat], [PasswordSalt], [MobilePIN], [Email], [LoweredEmail], [PasswordQuestion], [PasswordAnswer], [IsApproved], [IsLockedOut], [CreateDate], [LastLoginDate], [LastPasswordChangedDate], [LastLockoutDate], [FailedPasswordAttemptCount], [FailedPasswordAttemptWindowStart], [FailedPasswordAnswerAttemptCount], [FailedPasswordAnswerAttemptWindowStart], [Comment]) VALUES (N'53f29b0b-3256-430c-ab1a-618c2e2c27c4', N'022b7700-ff88-43c8-9f17-322a3abb6419', N'martin123', 0, N'sA8+STb8lcdhjR68EibFqA==', NULL, N'mnalmeida@udlanet.ec', N'mnalmeida@udlanet.ec', NULL, NULL, 1, 0, CAST(N'2017-02-02T08:12:55.000' AS DateTime), CAST(N'2017-02-02T09:54:24.693' AS DateTime), CAST(N'2017-02-02T08:12:55.000' AS DateTime), CAST(N'1754-01-01T00:00:00.000' AS DateTime), 0, CAST(N'1754-01-01T00:00:00.000' AS DateTime), 0, CAST(N'1754-01-01T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[aspnet_Membership] ([ApplicationId], [UserId], [Password], [PasswordFormat], [PasswordSalt], [MobilePIN], [Email], [LoweredEmail], [PasswordQuestion], [PasswordAnswer], [IsApproved], [IsLockedOut], [CreateDate], [LastLoginDate], [LastPasswordChangedDate], [LastLockoutDate], [FailedPasswordAttemptCount], [FailedPasswordAttemptWindowStart], [FailedPasswordAnswerAttemptCount], [FailedPasswordAnswerAttemptWindowStart], [Comment]) VALUES (N'53f29b0b-3256-430c-ab1a-618c2e2c27c4', N'3e717751-33ec-49e6-8b96-25e783e0dd23', N'nicolas123', 0, N'ZOK+0ADudIuR+GI64Y9aCw==', NULL, N'nicolas@udlanet.ec', N'nicolas@udlanet.ec', NULL, NULL, 1, 0, CAST(N'2017-02-02T08:27:47.000' AS DateTime), CAST(N'2017-02-02T10:18:11.103' AS DateTime), CAST(N'2017-02-02T08:27:47.000' AS DateTime), CAST(N'1754-01-01T00:00:00.000' AS DateTime), 0, CAST(N'1754-01-01T00:00:00.000' AS DateTime), 0, CAST(N'1754-01-01T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[aspnet_Roles] ([ApplicationId], [RoleId], [RoleName], [LoweredRoleName], [Description]) VALUES (N'53f29b0b-3256-430c-ab1a-618c2e2c27c4', N'7c05ece5-8a38-4062-ad4c-0ef6667cf720', N'admin', N'admin', NULL)
INSERT [dbo].[aspnet_Roles] ([ApplicationId], [RoleId], [RoleName], [LoweredRoleName], [Description]) VALUES (N'53f29b0b-3256-430c-ab1a-618c2e2c27c4', N'd2c35f92-9284-4ae7-ac9b-2d91199a238d', N'usuario', N'usuario', NULL)
INSERT [dbo].[aspnet_SchemaVersions] ([Feature], [CompatibleSchemaVersion], [IsCurrentVersion]) VALUES (N'common', N'1', 1)
INSERT [dbo].[aspnet_SchemaVersions] ([Feature], [CompatibleSchemaVersion], [IsCurrentVersion]) VALUES (N'health monitoring', N'1', 1)
INSERT [dbo].[aspnet_SchemaVersions] ([Feature], [CompatibleSchemaVersion], [IsCurrentVersion]) VALUES (N'membership', N'1', 1)
INSERT [dbo].[aspnet_SchemaVersions] ([Feature], [CompatibleSchemaVersion], [IsCurrentVersion]) VALUES (N'personalization', N'1', 1)
INSERT [dbo].[aspnet_SchemaVersions] ([Feature], [CompatibleSchemaVersion], [IsCurrentVersion]) VALUES (N'profile', N'1', 1)
INSERT [dbo].[aspnet_SchemaVersions] ([Feature], [CompatibleSchemaVersion], [IsCurrentVersion]) VALUES (N'role manager', N'1', 1)
INSERT [dbo].[aspnet_Users] ([ApplicationId], [UserId], [UserName], [LoweredUserName], [MobileAlias], [IsAnonymous], [LastActivityDate]) VALUES (N'53f29b0b-3256-430c-ab1a-618c2e2c27c4', N'2bd49b6c-c24b-4689-bbdf-0fb56c395285', N'admin', N'admin', NULL, 0, CAST(N'2017-02-02T10:23:16.467' AS DateTime))
INSERT [dbo].[aspnet_Users] ([ApplicationId], [UserId], [UserName], [LoweredUserName], [MobileAlias], [IsAnonymous], [LastActivityDate]) VALUES (N'53f29b0b-3256-430c-ab1a-618c2e2c27c4', N'4198bd77-dde7-495b-87b9-d242493a45d3', N'dalith', N'dalith', NULL, 0, CAST(N'2017-02-02T10:28:02.190' AS DateTime))
INSERT [dbo].[aspnet_Users] ([ApplicationId], [UserId], [UserName], [LoweredUserName], [MobileAlias], [IsAnonymous], [LastActivityDate]) VALUES (N'53f29b0b-3256-430c-ab1a-618c2e2c27c4', N'd11de2b9-de81-4a42-aa12-a1b6a0797668', N'giss123', N'giss123', NULL, 0, CAST(N'2017-02-02T10:25:12.097' AS DateTime))
INSERT [dbo].[aspnet_Users] ([ApplicationId], [UserId], [UserName], [LoweredUserName], [MobileAlias], [IsAnonymous], [LastActivityDate]) VALUES (N'53f29b0b-3256-430c-ab1a-618c2e2c27c4', N'022b7700-ff88-43c8-9f17-322a3abb6419', N'martin123', N'martin123', NULL, 0, CAST(N'2017-02-02T09:54:24.693' AS DateTime))
INSERT [dbo].[aspnet_Users] ([ApplicationId], [UserId], [UserName], [LoweredUserName], [MobileAlias], [IsAnonymous], [LastActivityDate]) VALUES (N'53f29b0b-3256-430c-ab1a-618c2e2c27c4', N'3e717751-33ec-49e6-8b96-25e783e0dd23', N'nicolas123', N'nicolas123', NULL, 0, CAST(N'2017-02-02T10:18:11.103' AS DateTime))
INSERT [dbo].[aspnet_UsersInRoles] ([UserId], [RoleId]) VALUES (N'2bd49b6c-c24b-4689-bbdf-0fb56c395285', N'7c05ece5-8a38-4062-ad4c-0ef6667cf720')
INSERT [dbo].[aspnet_UsersInRoles] ([UserId], [RoleId]) VALUES (N'022b7700-ff88-43c8-9f17-322a3abb6419', N'7c05ece5-8a38-4062-ad4c-0ef6667cf720')
INSERT [dbo].[aspnet_UsersInRoles] ([UserId], [RoleId]) VALUES (N'd11de2b9-de81-4a42-aa12-a1b6a0797668', N'7c05ece5-8a38-4062-ad4c-0ef6667cf720')
INSERT [dbo].[aspnet_UsersInRoles] ([UserId], [RoleId]) VALUES (N'022b7700-ff88-43c8-9f17-322a3abb6419', N'd2c35f92-9284-4ae7-ac9b-2d91199a238d')
INSERT [dbo].[aspnet_UsersInRoles] ([UserId], [RoleId]) VALUES (N'4198bd77-dde7-495b-87b9-d242493a45d3', N'd2c35f92-9284-4ae7-ac9b-2d91199a238d')
SET IDENTITY_INSERT [dbo].[Bodega] ON 

INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (1, N'Bodega 1', N'Direccion 1', 396, N'2000001')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (2, N'Bodega 2', N'Direccion 2', 8537, N'2000002')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (3, N'Bodega 3', N'Direccion 3', 9489, N'2000003')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (4, N'Bodega 4', N'Direccion 4', 2114, N'2000004')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (5, N'Bodega 5', N'Direccion 5', 3515, N'2000005')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (6, N'Bodega 6', N'Direccion 6', 865, N'2000006')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (7, N'Bodega 7', N'Direccion 7', 2828, N'2000007')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (8, N'Bodega 8', N'Direccion 8', 5549, N'2000008')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (9, N'Bodega 9', N'Direccion 9', 4676, N'2000009')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (10, N'Bodega 10', N'Direccion 10', 6252, N'2000010')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (11, N'Bodega 11', N'Direccion 11', 3659, N'2000011')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (12, N'Bodega 12', N'Direccion 12', 1168, N'2000012')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (13, N'Bodega 13', N'Direccion 13', 3058, N'2000013')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (14, N'Bodega 14', N'Direccion 14', 2024, N'2000014')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (15, N'Bodega 15', N'Direccion 15', 1057, N'2000015')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (16, N'Bodega 16', N'Direccion 16', 9933, N'2000016')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (17, N'Bodega 17', N'Direccion 17', 3063, N'2000017')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (18, N'Bodega 18', N'Direccion 18', 6711, N'2000018')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (19, N'Bodega 19', N'Direccion 19', 9538, N'2000019')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (20, N'Bodega 20', N'Direccion 20', 5575, N'2000020')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (21, N'Bodega 21', N'Direccion 21', 4071, N'2000021')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (22, N'Bodega 22', N'Direccion 22', 743, N'2000022')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (23, N'Bodega 23', N'Direccion 23', 6920, N'2000023')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (24, N'Bodega 24', N'Direccion 24', 3598, N'2000024')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (25, N'Bodega 25', N'Direccion 25', 9171, N'2000025')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (26, N'Bodega 26', N'Direccion 26', 3607, N'2000026')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (27, N'Bodega 27', N'Direccion 27', 8007, N'2000027')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (28, N'Bodega 28', N'Direccion 28', 7102, N'2000028')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (29, N'Bodega 29', N'Direccion 29', 9465, N'2000029')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (30, N'Bodega 30', N'Direccion 30', 5080, N'2000030')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (31, N'Bodega 31', N'Direccion 31', 9714, N'2000031')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (32, N'Bodega 32', N'Direccion 32', 8336, N'2000032')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (33, N'Bodega 33', N'Direccion 33', 6498, N'2000033')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (34, N'Bodega 34', N'Direccion 34', 3909, N'2000034')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (35, N'Bodega 35', N'Direccion 35', 7313, N'2000035')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (36, N'Bodega 36', N'Direccion 36', 9503, N'2000036')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (37, N'Bodega 37', N'Direccion 37', 1293, N'2000037')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (38, N'Bodega 38', N'Direccion 38', 8091, N'2000038')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (39, N'Bodega 39', N'Direccion 39', 9086, N'2000039')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (40, N'Bodega 40', N'Direccion 40', 5909, N'2000040')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (41, N'Bodega 41', N'Direccion 41', 1217, N'2000041')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (42, N'Bodega 42', N'Direccion 42', 5469, N'2000042')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (43, N'Bodega 43', N'Direccion 43', 7136, N'2000043')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (44, N'Bodega 44', N'Direccion 44', 2970, N'2000044')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (45, N'Bodega 45', N'Direccion 45', 6510, N'2000045')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (46, N'Bodega 46', N'Direccion 46', 8659, N'2000046')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (47, N'Bodega 47', N'Direccion 47', 189, N'2000047')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (48, N'Bodega 48', N'Direccion 48', 5748, N'2000048')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (49, N'Bodega 49', N'Direccion 49', 1664, N'2000049')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (50, N'Bodega 50', N'Direccion 50', 6954, N'2000050')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (51, N'Bodega 51', N'Direccion 51', 1771, N'2000051')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (52, N'Bodega 52', N'Direccion 52', 8185, N'2000052')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (53, N'Bodega 53', N'Direccion 53', 6994, N'2000053')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (54, N'Bodega 54', N'Direccion 54', 7920, N'2000054')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (55, N'Bodega 55', N'Direccion 55', 9741, N'2000055')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (56, N'Bodega 56', N'Direccion 56', 5987, N'2000056')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (57, N'Bodega 57', N'Direccion 57', 6376, N'2000057')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (58, N'Bodega 58', N'Direccion 58', 8751, N'2000058')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (59, N'Bodega 59', N'Direccion 59', 3638, N'2000059')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (60, N'Bodega 60', N'Direccion 60', 6843, N'2000060')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (61, N'Bodega 61', N'Direccion 61', 7361, N'2000061')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (62, N'Bodega 62', N'Direccion 62', 9642, N'2000062')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (63, N'Bodega 63', N'Direccion 63', 5815, N'2000063')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (64, N'Bodega 64', N'Direccion 64', 4235, N'2000064')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (65, N'Bodega 65', N'Direccion 65', 4462, N'2000065')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (66, N'Bodega 66', N'Direccion 66', 6210, N'2000066')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (67, N'Bodega 67', N'Direccion 67', 3178, N'2000067')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (68, N'Bodega 68', N'Direccion 68', 1401, N'2000068')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (69, N'Bodega 69', N'Direccion 69', 6030, N'2000069')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (70, N'Bodega 70', N'Direccion 70', 5189, N'2000070')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (71, N'Bodega 71', N'Direccion 71', 1988, N'2000071')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (72, N'Bodega 72', N'Direccion 72', 5934, N'2000072')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (73, N'Bodega 73', N'Direccion 73', 2560, N'2000073')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (74, N'Bodega 74', N'Direccion 74', 2270, N'2000074')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (75, N'Bodega 75', N'Direccion 75', 1114, N'2000075')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (76, N'Bodega 76', N'Direccion 76', 5315, N'2000076')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (77, N'Bodega 77', N'Direccion 77', 6037, N'2000077')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (78, N'Bodega 78', N'Direccion 78', 4687, N'2000078')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (79, N'Bodega 79', N'Direccion 79', 3365, N'2000079')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (80, N'Bodega 80', N'Direccion 80', 9874, N'2000080')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (81, N'Bodega 81', N'Direccion 81', 760, N'2000081')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (82, N'Bodega 82', N'Direccion 82', 1257, N'2000082')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (83, N'Bodega 83', N'Direccion 83', 7014, N'2000083')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (84, N'Bodega 84', N'Direccion 84', 3000, N'2000084')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (85, N'Bodega 85', N'Direccion 85', 3668, N'2000085')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (86, N'Bodega 86', N'Direccion 86', 6030, N'2000086')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (87, N'Bodega 87', N'Direccion 87', 3542, N'2000087')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (88, N'Bodega 88', N'Direccion 88', 1422, N'2000088')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (89, N'Bodega 89', N'Direccion 89', 9558, N'2000089')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (90, N'Bodega 90', N'Direccion 90', 145, N'2000090')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (91, N'Bodega 91', N'Direccion 91', 2482, N'2000091')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (92, N'Bodega 92', N'Direccion 92', 8807, N'2000092')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (93, N'Bodega 93', N'Direccion 93', 9013, N'2000093')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (94, N'Bodega 94', N'Direccion 94', 3509, N'2000094')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (95, N'Bodega 95', N'Direccion 95', 3844, N'2000095')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (96, N'Bodega 96', N'Direccion 96', 7362, N'2000096')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (97, N'Bodega 97', N'Direccion 97', 2602, N'2000097')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (98, N'Bodega 98', N'Direccion 98', 6249, N'2000098')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (99, N'Bodega 99', N'Direccion 99', 3265, N'2000099')
GO
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (100, N'Bodega 100', N'Direccion 100', 7885, N'2000100')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (101, N'Bodega 101', N'Direccion 101', 9183, N'2000101')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (102, N'Bodega 102', N'Direccion 102', 9123, N'2000102')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (103, N'Bodega 103', N'Direccion 103', 7847, N'2000103')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (104, N'Bodega 104', N'Direccion 104', 8434, N'2000104')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (105, N'Bodega 105', N'Direccion 105', 1749, N'2000105')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (106, N'Bodega 106', N'Direccion 106', 4132, N'2000106')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (107, N'Bodega 107', N'Direccion 107', 6344, N'2000107')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (108, N'Bodega 108', N'Direccion 108', 9558, N'2000108')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (109, N'Bodega 109', N'Direccion 109', 9130, N'2000109')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (110, N'Bodega 110', N'Direccion 110', 3313, N'2000110')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (111, N'Bodega 111', N'Direccion 111', 9372, N'2000111')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (112, N'Bodega 112', N'Direccion 112', 7911, N'2000112')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (113, N'Bodega 113', N'Direccion 113', 8330, N'2000113')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (114, N'Bodega 114', N'Direccion 114', 7566, N'2000114')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (115, N'Bodega 115', N'Direccion 115', 3908, N'2000115')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (116, N'Bodega 116', N'Direccion 116', 9132, N'2000116')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (117, N'Bodega 117', N'Direccion 117', 1954, N'2000117')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (118, N'Bodega 118', N'Direccion 118', 8057, N'2000118')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (119, N'Bodega 119', N'Direccion 119', 1962, N'2000119')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (120, N'Bodega 120', N'Direccion 120', 3400, N'2000120')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (121, N'Bodega 121', N'Direccion 121', 1693, N'2000121')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (122, N'Bodega 122', N'Direccion 122', 1262, N'2000122')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (123, N'Bodega 123', N'Direccion 123', 191, N'2000123')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (124, N'Bodega 124', N'Direccion 124', 5750, N'2000124')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (125, N'Bodega 125', N'Direccion 125', 1379, N'2000125')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (126, N'Bodega 126', N'Direccion 126', 2423, N'2000126')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (127, N'Bodega 127', N'Direccion 127', 5735, N'2000127')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (128, N'Bodega 128', N'Direccion 128', 8590, N'2000128')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (129, N'Bodega 129', N'Direccion 129', 8426, N'2000129')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (130, N'Bodega 130', N'Direccion 130', 4152, N'2000130')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (131, N'Bodega 131', N'Direccion 131', 9164, N'2000131')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (132, N'Bodega 132', N'Direccion 132', 7408, N'2000132')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (133, N'Bodega 133', N'Direccion 133', 5740, N'2000133')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (134, N'Bodega 134', N'Direccion 134', 3261, N'2000134')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (135, N'Bodega 135', N'Direccion 135', 1651, N'2000135')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (136, N'Bodega 136', N'Direccion 136', 6170, N'2000136')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (137, N'Bodega 137', N'Direccion 137', 724, N'2000137')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (138, N'Bodega 138', N'Direccion 138', 757, N'2000138')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (139, N'Bodega 139', N'Direccion 139', 6823, N'2000139')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (140, N'Bodega 140', N'Direccion 140', 9695, N'2000140')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (141, N'Bodega 141', N'Direccion 141', 8745, N'2000141')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (142, N'Bodega 142', N'Direccion 142', 7849, N'2000142')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (143, N'Bodega 143', N'Direccion 143', 1284, N'2000143')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (144, N'Bodega 144', N'Direccion 144', 9545, N'2000144')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (145, N'Bodega 145', N'Direccion 145', 1841, N'2000145')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (146, N'Bodega 146', N'Direccion 146', 2665, N'2000146')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (147, N'Bodega 147', N'Direccion 147', 7070, N'2000147')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (148, N'Bodega 148', N'Direccion 148', 2151, N'2000148')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (149, N'Bodega 149', N'Direccion 149', 4830, N'2000149')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (150, N'Bodega 150', N'Direccion 150', 820, N'2000150')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (151, N'Bodega 151', N'Direccion 151', 7442, N'2000151')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (152, N'Bodega 152', N'Direccion 152', 3485, N'2000152')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (153, N'Bodega 153', N'Direccion 153', 582, N'2000153')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (154, N'Bodega 154', N'Direccion 154', 7794, N'2000154')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (155, N'Bodega 155', N'Direccion 155', 7195, N'2000155')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (156, N'Bodega 156', N'Direccion 156', 2766, N'2000156')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (157, N'Bodega 157', N'Direccion 157', 9093, N'2000157')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (158, N'Bodega 158', N'Direccion 158', 1295, N'2000158')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (159, N'Bodega 159', N'Direccion 159', 4375, N'2000159')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (160, N'Bodega 160', N'Direccion 160', 304, N'2000160')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (161, N'Bodega 161', N'Direccion 161', 40, N'2000161')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (162, N'Bodega 162', N'Direccion 162', 2068, N'2000162')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (163, N'Bodega 163', N'Direccion 163', 7921, N'2000163')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (164, N'Bodega 164', N'Direccion 164', 5936, N'2000164')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (165, N'Bodega 165', N'Direccion 165', 1800, N'2000165')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (166, N'Bodega 166', N'Direccion 166', 6992, N'2000166')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (167, N'Bodega 167', N'Direccion 167', 3999, N'2000167')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (168, N'Bodega 168', N'Direccion 168', 906, N'2000168')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (169, N'Bodega 169', N'Direccion 169', 1635, N'2000169')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (170, N'Bodega 170', N'Direccion 170', 1235, N'2000170')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (171, N'Bodega 171', N'Direccion 171', 6474, N'2000171')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (172, N'Bodega 172', N'Direccion 172', 4993, N'2000172')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (173, N'Bodega 173', N'Direccion 173', 2064, N'2000173')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (174, N'Bodega 174', N'Direccion 174', 5615, N'2000174')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (175, N'Bodega 175', N'Direccion 175', 2447, N'2000175')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (176, N'Bodega 176', N'Direccion 176', 3799, N'2000176')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (177, N'Bodega 177', N'Direccion 177', 8215, N'2000177')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (178, N'Bodega 178', N'Direccion 178', 9547, N'2000178')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (179, N'Bodega 179', N'Direccion 179', 8250, N'2000179')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (180, N'Bodega 180', N'Direccion 180', 7098, N'2000180')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (181, N'Bodega 181', N'Direccion 181', 9007, N'2000181')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (182, N'Bodega 182', N'Direccion 182', 8520, N'2000182')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (183, N'Bodega 183', N'Direccion 183', 9012, N'2000183')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (184, N'Bodega 184', N'Direccion 184', 8962, N'2000184')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (185, N'Bodega 185', N'Direccion 185', 8843, N'2000185')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (186, N'Bodega 186', N'Direccion 186', 6931, N'2000186')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (187, N'Bodega 187', N'Direccion 187', 9698, N'2000187')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (188, N'Bodega 188', N'Direccion 188', 1412, N'2000188')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (189, N'Bodega 189', N'Direccion 189', 9261, N'2000189')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (190, N'Bodega 190', N'Direccion 190', 414, N'2000190')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (191, N'Bodega 191', N'Direccion 191', 3432, N'2000191')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (192, N'Bodega 192', N'Direccion 192', 595, N'2000192')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (193, N'Bodega 193', N'Direccion 193', 4480, N'2000193')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (194, N'Bodega 194', N'Direccion 194', 8968, N'2000194')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (195, N'Bodega 195', N'Direccion 195', 2603, N'2000195')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (196, N'Bodega 196', N'Direccion 196', 606, N'2000196')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (197, N'Bodega 197', N'Direccion 197', 9254, N'2000197')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (198, N'Bodega 198', N'Direccion 198', 5714, N'2000198')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (199, N'Bodega 199', N'Direccion 199', 7136, N'2000199')
GO
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (200, N'Bodega 200', N'Direccion 200', 6926, N'2000200')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (201, N'Bodega 201', N'Direccion 201', 7062, N'2000201')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (202, N'Bodega 202', N'Direccion 202', 5231, N'2000202')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (203, N'Bodega 203', N'Direccion 203', 1435, N'2000203')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (204, N'Bodega 204', N'Direccion 204', 3533, N'2000204')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (205, N'Bodega 205', N'Direccion 205', 4785, N'2000205')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (206, N'Bodega 206', N'Direccion 206', 603, N'2000206')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (207, N'Bodega 207', N'Direccion 207', 9878, N'2000207')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (208, N'Bodega 208', N'Direccion 208', 2647, N'2000208')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (209, N'Bodega 209', N'Direccion 209', 7093, N'2000209')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (210, N'Bodega 210', N'Direccion 210', 9888, N'2000210')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (211, N'Bodega 211', N'Direccion 211', 9655, N'2000211')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (212, N'Bodega 212', N'Direccion 212', 5316, N'2000212')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (213, N'Bodega 213', N'Direccion 213', 8304, N'2000213')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (214, N'Bodega 214', N'Direccion 214', 7068, N'2000214')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (215, N'Bodega 215', N'Direccion 215', 2028, N'2000215')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (216, N'Bodega 216', N'Direccion 216', 8609, N'2000216')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (217, N'Bodega 217', N'Direccion 217', 3807, N'2000217')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (218, N'Bodega 218', N'Direccion 218', 9896, N'2000218')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (219, N'Bodega 219', N'Direccion 219', 6792, N'2000219')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (220, N'Bodega 220', N'Direccion 220', 951, N'2000220')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (221, N'Bodega 221', N'Direccion 221', 6532, N'2000221')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (222, N'Bodega 222', N'Direccion 222', 9405, N'2000222')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (223, N'Bodega 223', N'Direccion 223', 9261, N'2000223')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (224, N'Bodega 224', N'Direccion 224', 2777, N'2000224')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (225, N'Bodega 225', N'Direccion 225', 2701, N'2000225')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (226, N'Bodega 226', N'Direccion 226', 3408, N'2000226')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (227, N'Bodega 227', N'Direccion 227', 7152, N'2000227')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (228, N'Bodega 228', N'Direccion 228', 6250, N'2000228')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (229, N'Bodega 229', N'Direccion 229', 7334, N'2000229')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (230, N'Bodega 230', N'Direccion 230', 1478, N'2000230')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (231, N'Bodega 231', N'Direccion 231', 9402, N'2000231')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (232, N'Bodega 232', N'Direccion 232', 1578, N'2000232')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (233, N'Bodega 233', N'Direccion 233', 5557, N'2000233')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (234, N'Bodega 234', N'Direccion 234', 9582, N'2000234')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (235, N'Bodega 235', N'Direccion 235', 4172, N'2000235')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (236, N'Bodega 236', N'Direccion 236', 6733, N'2000236')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (237, N'Bodega 237', N'Direccion 237', 6256, N'2000237')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (238, N'Bodega 238', N'Direccion 238', 9180, N'2000238')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (239, N'Bodega 239', N'Direccion 239', 3723, N'2000239')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (240, N'Bodega 240', N'Direccion 240', 7815, N'2000240')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (241, N'Bodega 241', N'Direccion 241', 9612, N'2000241')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (242, N'Bodega 242', N'Direccion 242', 1008, N'2000242')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (243, N'Bodega 243', N'Direccion 243', 7442, N'2000243')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (244, N'Bodega 244', N'Direccion 244', 7449, N'2000244')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (245, N'Bodega 245', N'Direccion 245', 9522, N'2000245')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (246, N'Bodega 246', N'Direccion 246', 9924, N'2000246')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (247, N'Bodega 247', N'Direccion 247', 2479, N'2000247')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (248, N'Bodega 248', N'Direccion 248', 8408, N'2000248')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (249, N'Bodega 249', N'Direccion 249', 6435, N'2000249')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (250, N'Bodega 250', N'Direccion 250', 8897, N'2000250')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (251, N'Bodega 251', N'Direccion 251', 2174, N'2000251')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (252, N'Bodega 252', N'Direccion 252', 4369, N'2000252')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (253, N'Bodega 253', N'Direccion 253', 2561, N'2000253')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (254, N'Bodega 254', N'Direccion 254', 169, N'2000254')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (255, N'Bodega 255', N'Direccion 255', 9076, N'2000255')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (256, N'Bodega 256', N'Direccion 256', 5768, N'2000256')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (257, N'Bodega 257', N'Direccion 257', 6293, N'2000257')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (258, N'Bodega 258', N'Direccion 258', 8638, N'2000258')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (259, N'Bodega 259', N'Direccion 259', 3044, N'2000259')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (260, N'Bodega 260', N'Direccion 260', 9211, N'2000260')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (261, N'Bodega 261', N'Direccion 261', 1700, N'2000261')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (262, N'Bodega 262', N'Direccion 262', 3396, N'2000262')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (263, N'Bodega 263', N'Direccion 263', 1077, N'2000263')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (264, N'Bodega 264', N'Direccion 264', 5354, N'2000264')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (265, N'Bodega 265', N'Direccion 265', 7767, N'2000265')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (266, N'Bodega 266', N'Direccion 266', 9055, N'2000266')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (267, N'Bodega 267', N'Direccion 267', 3246, N'2000267')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (268, N'Bodega 268', N'Direccion 268', 2789, N'2000268')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (269, N'Bodega 269', N'Direccion 269', 6980, N'2000269')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (270, N'Bodega 270', N'Direccion 270', 7545, N'2000270')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (271, N'Bodega 271', N'Direccion 271', 687, N'2000271')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (272, N'Bodega 272', N'Direccion 272', 8481, N'2000272')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (273, N'Bodega 273', N'Direccion 273', 5101, N'2000273')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (274, N'Bodega 274', N'Direccion 274', 646, N'2000274')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (275, N'Bodega 275', N'Direccion 275', 5824, N'2000275')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (276, N'Bodega 276', N'Direccion 276', 6673, N'2000276')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (277, N'Bodega 277', N'Direccion 277', 4851, N'2000277')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (278, N'Bodega 278', N'Direccion 278', 2729, N'2000278')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (279, N'Bodega 279', N'Direccion 279', 129, N'2000279')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (280, N'Bodega 280', N'Direccion 280', 2102, N'2000280')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (281, N'Bodega 281', N'Direccion 281', 187, N'2000281')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (282, N'Bodega 282', N'Direccion 282', 6586, N'2000282')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (283, N'Bodega 283', N'Direccion 283', 8551, N'2000283')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (284, N'Bodega 284', N'Direccion 284', 8516, N'2000284')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (285, N'Bodega 285', N'Direccion 285', 3960, N'2000285')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (286, N'Bodega 286', N'Direccion 286', 5197, N'2000286')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (287, N'Bodega 287', N'Direccion 287', 3861, N'2000287')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (288, N'Bodega 288', N'Direccion 288', 5574, N'2000288')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (289, N'Bodega 289', N'Direccion 289', 5684, N'2000289')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (290, N'Bodega 290', N'Direccion 290', 3826, N'2000290')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (291, N'Bodega 291', N'Direccion 291', 745, N'2000291')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (292, N'Bodega 292', N'Direccion 292', 8408, N'2000292')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (293, N'Bodega 293', N'Direccion 293', 406, N'2000293')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (294, N'Bodega 294', N'Direccion 294', 7292, N'2000294')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (295, N'Bodega 295', N'Direccion 295', 8868, N'2000295')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (296, N'Bodega 296', N'Direccion 296', 9886, N'2000296')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (297, N'Bodega 297', N'Direccion 297', 4584, N'2000297')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (298, N'Bodega 298', N'Direccion 298', 4477, N'2000298')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (299, N'Bodega 299', N'Direccion 299', 7143, N'2000299')
GO
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (300, N'Bodega 300', N'Direccion 300', 9426, N'2000300')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (301, N'Bodega 301', N'Direccion 301', 7151, N'2000301')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (302, N'Bodega 302', N'Direccion 302', 6016, N'2000302')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (303, N'Bodega 303', N'Direccion 303', 8233, N'2000303')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (304, N'Bodega 304', N'Direccion 304', 4519, N'2000304')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (305, N'Bodega 305', N'Direccion 305', 3631, N'2000305')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (306, N'Bodega 306', N'Direccion 306', 4503, N'2000306')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (307, N'Bodega 307', N'Direccion 307', 6576, N'2000307')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (308, N'Bodega 308', N'Direccion 308', 2141, N'2000308')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (309, N'Bodega 309', N'Direccion 309', 6925, N'2000309')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (310, N'Bodega 310', N'Direccion 310', 3701, N'2000310')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (311, N'Bodega 311', N'Direccion 311', 2960, N'2000311')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (312, N'Bodega 312', N'Direccion 312', 6821, N'2000312')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (313, N'Bodega 313', N'Direccion 313', 1562, N'2000313')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (314, N'Bodega 314', N'Direccion 314', 1558, N'2000314')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (315, N'Bodega 315', N'Direccion 315', 8695, N'2000315')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (316, N'Bodega 316', N'Direccion 316', 7950, N'2000316')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (317, N'Bodega 317', N'Direccion 317', 5667, N'2000317')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (318, N'Bodega 318', N'Direccion 318', 7375, N'2000318')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (319, N'Bodega 319', N'Direccion 319', 9504, N'2000319')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (320, N'Bodega 320', N'Direccion 320', 9255, N'2000320')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (321, N'Bodega 321', N'Direccion 321', 562, N'2000321')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (322, N'Bodega 322', N'Direccion 322', 4689, N'2000322')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (323, N'Bodega 323', N'Direccion 323', 6947, N'2000323')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (324, N'Bodega 324', N'Direccion 324', 2489, N'2000324')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (325, N'Bodega 325', N'Direccion 325', 8451, N'2000325')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (326, N'Bodega 326', N'Direccion 326', 3556, N'2000326')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (327, N'Bodega 327', N'Direccion 327', 3066, N'2000327')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (328, N'Bodega 328', N'Direccion 328', 4057, N'2000328')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (329, N'Bodega 329', N'Direccion 329', 6739, N'2000329')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (330, N'Bodega 330', N'Direccion 330', 6862, N'2000330')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (331, N'Bodega 331', N'Direccion 331', 8267, N'2000331')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (332, N'Bodega 332', N'Direccion 332', 9568, N'2000332')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (333, N'Bodega 333', N'Direccion 333', 1749, N'2000333')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (334, N'Bodega 334', N'Direccion 334', 2912, N'2000334')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (335, N'Bodega 335', N'Direccion 335', 2368, N'2000335')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (336, N'Bodega 336', N'Direccion 336', 3759, N'2000336')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (337, N'Bodega 337', N'Direccion 337', 9447, N'2000337')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (338, N'Bodega 338', N'Direccion 338', 3134, N'2000338')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (339, N'Bodega 339', N'Direccion 339', 5641, N'2000339')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (340, N'Bodega 340', N'Direccion 340', 4870, N'2000340')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (341, N'Bodega 341', N'Direccion 341', 5833, N'2000341')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (342, N'Bodega 342', N'Direccion 342', 2744, N'2000342')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (343, N'Bodega 343', N'Direccion 343', 4147, N'2000343')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (344, N'Bodega 344', N'Direccion 344', 821, N'2000344')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (345, N'Bodega 345', N'Direccion 345', 9532, N'2000345')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (346, N'Bodega 346', N'Direccion 346', 8234, N'2000346')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (347, N'Bodega 347', N'Direccion 347', 5833, N'2000347')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (348, N'Bodega 348', N'Direccion 348', 7281, N'2000348')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (349, N'Bodega 349', N'Direccion 349', 7950, N'2000349')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (350, N'Bodega 350', N'Direccion 350', 5969, N'2000350')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (351, N'Bodega 351', N'Direccion 351', 9276, N'2000351')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (352, N'Bodega 352', N'Direccion 352', 4248, N'2000352')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (353, N'Bodega 353', N'Direccion 353', 2379, N'2000353')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (354, N'Bodega 354', N'Direccion 354', 7766, N'2000354')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (355, N'Bodega 355', N'Direccion 355', 7438, N'2000355')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (356, N'Bodega 356', N'Direccion 356', 531, N'2000356')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (357, N'Bodega 357', N'Direccion 357', 5588, N'2000357')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (358, N'Bodega 358', N'Direccion 358', 3433, N'2000358')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (359, N'Bodega 359', N'Direccion 359', 5521, N'2000359')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (360, N'Bodega 360', N'Direccion 360', 7538, N'2000360')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (361, N'Bodega 361', N'Direccion 361', 9623, N'2000361')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (362, N'Bodega 362', N'Direccion 362', 8763, N'2000362')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (363, N'Bodega 363', N'Direccion 363', 9240, N'2000363')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (364, N'Bodega 364', N'Direccion 364', 6784, N'2000364')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (365, N'Bodega 365', N'Direccion 365', 8171, N'2000365')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (366, N'Bodega 366', N'Direccion 366', 2004, N'2000366')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (367, N'Bodega 367', N'Direccion 367', 1017, N'2000367')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (368, N'Bodega 368', N'Direccion 368', 7820, N'2000368')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (369, N'Bodega 369', N'Direccion 369', 9067, N'2000369')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (370, N'Bodega 370', N'Direccion 370', 2693, N'2000370')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (371, N'Bodega 371', N'Direccion 371', 4854, N'2000371')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (372, N'Bodega 372', N'Direccion 372', 406, N'2000372')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (373, N'Bodega 373', N'Direccion 373', 4459, N'2000373')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (374, N'Bodega 374', N'Direccion 374', 1862, N'2000374')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (375, N'Bodega 375', N'Direccion 375', 3012, N'2000375')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (376, N'Bodega 376', N'Direccion 376', 6223, N'2000376')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (377, N'Bodega 377', N'Direccion 377', 2333, N'2000377')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (378, N'Bodega 378', N'Direccion 378', 1207, N'2000378')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (379, N'Bodega 379', N'Direccion 379', 4659, N'2000379')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (380, N'Bodega 380', N'Direccion 380', 5041, N'2000380')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (381, N'Bodega 381', N'Direccion 381', 5015, N'2000381')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (382, N'Bodega 382', N'Direccion 382', 9906, N'2000382')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (383, N'Bodega 383', N'Direccion 383', 6331, N'2000383')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (384, N'Bodega 384', N'Direccion 384', 5554, N'2000384')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (385, N'Bodega 385', N'Direccion 385', 3773, N'2000385')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (386, N'Bodega 386', N'Direccion 386', 5526, N'2000386')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (387, N'Bodega 387', N'Direccion 387', 8733, N'2000387')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (388, N'Bodega 388', N'Direccion 388', 9990, N'2000388')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (389, N'Bodega 389', N'Direccion 389', 6128, N'2000389')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (390, N'Bodega 390', N'Direccion 390', 1193, N'2000390')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (391, N'Bodega 391', N'Direccion 391', 1335, N'2000391')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (392, N'Bodega 392', N'Direccion 392', 705, N'2000392')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (393, N'Bodega 393', N'Direccion 393', 108, N'2000393')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (394, N'Bodega 394', N'Direccion 394', 3294, N'2000394')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (395, N'Bodega 395', N'Direccion 395', 3263, N'2000395')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (396, N'Bodega 396', N'Direccion 396', 902, N'2000396')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (397, N'Bodega 397', N'Direccion 397', 4234, N'2000397')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (398, N'Bodega 398', N'Direccion 398', 8429, N'2000398')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (399, N'Bodega 399', N'Direccion 399', 7734, N'2000399')
GO
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (400, N'Bodega 400', N'Direccion 400', 4403, N'2000400')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (401, N'Bodega 401', N'Direccion 401', 2861, N'2000401')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (402, N'Bodega 402', N'Direccion 402', 9978, N'2000402')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (403, N'Bodega 403', N'Direccion 403', 1057, N'2000403')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (404, N'Bodega 404', N'Direccion 404', 2580, N'2000404')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (405, N'Bodega 405', N'Direccion 405', 3123, N'2000405')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (406, N'Bodega 406', N'Direccion 406', 245, N'2000406')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (407, N'Bodega 407', N'Direccion 407', 5296, N'2000407')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (408, N'Bodega 408', N'Direccion 408', 3257, N'2000408')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (409, N'Bodega 409', N'Direccion 409', 6349, N'2000409')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (410, N'Bodega 410', N'Direccion 410', 768, N'2000410')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (411, N'Bodega 411', N'Direccion 411', 4715, N'2000411')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (412, N'Bodega 412', N'Direccion 412', 8070, N'2000412')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (413, N'Bodega 413', N'Direccion 413', 548, N'2000413')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (414, N'Bodega 414', N'Direccion 414', 2928, N'2000414')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (415, N'Bodega 415', N'Direccion 415', 4693, N'2000415')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (416, N'Bodega 416', N'Direccion 416', 5227, N'2000416')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (417, N'Bodega 417', N'Direccion 417', 3739, N'2000417')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (418, N'Bodega 418', N'Direccion 418', 6791, N'2000418')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (419, N'Bodega 419', N'Direccion 419', 8792, N'2000419')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (420, N'Bodega 420', N'Direccion 420', 5144, N'2000420')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (421, N'Bodega 421', N'Direccion 421', 9970, N'2000421')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (422, N'Bodega 422', N'Direccion 422', 6619, N'2000422')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (423, N'Bodega 423', N'Direccion 423', 117, N'2000423')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (424, N'Bodega 424', N'Direccion 424', 9319, N'2000424')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (425, N'Bodega 425', N'Direccion 425', 2977, N'2000425')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (426, N'Bodega 426', N'Direccion 426', 5965, N'2000426')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (427, N'Bodega 427', N'Direccion 427', 537, N'2000427')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (428, N'Bodega 428', N'Direccion 428', 1218, N'2000428')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (429, N'Bodega 429', N'Direccion 429', 1799, N'2000429')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (430, N'Bodega 430', N'Direccion 430', 5700, N'2000430')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (431, N'Bodega 431', N'Direccion 431', 9449, N'2000431')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (432, N'Bodega 432', N'Direccion 432', 1145, N'2000432')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (433, N'Bodega 433', N'Direccion 433', 7536, N'2000433')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (434, N'Bodega 434', N'Direccion 434', 153, N'2000434')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (435, N'Bodega 435', N'Direccion 435', 4864, N'2000435')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (436, N'Bodega 436', N'Direccion 436', 2357, N'2000436')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (437, N'Bodega 437', N'Direccion 437', 5215, N'2000437')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (438, N'Bodega 438', N'Direccion 438', 6447, N'2000438')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (439, N'Bodega 439', N'Direccion 439', 4123, N'2000439')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (440, N'Bodega 440', N'Direccion 440', 5412, N'2000440')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (441, N'Bodega 441', N'Direccion 441', 8238, N'2000441')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (442, N'Bodega 442', N'Direccion 442', 4820, N'2000442')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (443, N'Bodega 443', N'Direccion 443', 9193, N'2000443')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (444, N'Bodega 444', N'Direccion 444', 8576, N'2000444')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (445, N'Bodega 445', N'Direccion 445', 7950, N'2000445')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (446, N'Bodega 446', N'Direccion 446', 1904, N'2000446')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (447, N'Bodega 447', N'Direccion 447', 3858, N'2000447')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (448, N'Bodega 448', N'Direccion 448', 3565, N'2000448')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (449, N'Bodega 449', N'Direccion 449', 2023, N'2000449')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (450, N'Bodega 450', N'Direccion 450', 101, N'2000450')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (451, N'Bodega 451', N'Direccion 451', 2852, N'2000451')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (452, N'Bodega 452', N'Direccion 452', 9700, N'2000452')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (453, N'Bodega 453', N'Direccion 453', 5055, N'2000453')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (454, N'Bodega 454', N'Direccion 454', 4138, N'2000454')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (455, N'Bodega 455', N'Direccion 455', 1631, N'2000455')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (456, N'Bodega 456', N'Direccion 456', 805, N'2000456')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (457, N'Bodega 457', N'Direccion 457', 1684, N'2000457')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (458, N'Bodega 458', N'Direccion 458', 1856, N'2000458')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (459, N'Bodega 459', N'Direccion 459', 561, N'2000459')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (460, N'Bodega 460', N'Direccion 460', 5502, N'2000460')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (461, N'Bodega 461', N'Direccion 461', 1152, N'2000461')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (462, N'Bodega 462', N'Direccion 462', 7297, N'2000462')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (463, N'Bodega 463', N'Direccion 463', 7161, N'2000463')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (464, N'Bodega 464', N'Direccion 464', 1580, N'2000464')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (465, N'Bodega 465', N'Direccion 465', 4855, N'2000465')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (466, N'Bodega 466', N'Direccion 466', 8161, N'2000466')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (467, N'Bodega 467', N'Direccion 467', 477, N'2000467')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (468, N'Bodega 468', N'Direccion 468', 7810, N'2000468')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (469, N'Bodega 469', N'Direccion 469', 4609, N'2000469')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (470, N'Bodega 470', N'Direccion 470', 5679, N'2000470')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (471, N'Bodega 471', N'Direccion 471', 8872, N'2000471')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (472, N'Bodega 472', N'Direccion 472', 1478, N'2000472')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (473, N'Bodega 473', N'Direccion 473', 6932, N'2000473')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (474, N'Bodega 474', N'Direccion 474', 9432, N'2000474')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (475, N'Bodega 475', N'Direccion 475', 7759, N'2000475')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (476, N'Bodega 476', N'Direccion 476', 2795, N'2000476')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (477, N'Bodega 477', N'Direccion 477', 4832, N'2000477')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (478, N'Bodega 478', N'Direccion 478', 8725, N'2000478')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (479, N'Bodega 479', N'Direccion 479', 7175, N'2000479')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (480, N'Bodega 480', N'Direccion 480', 2135, N'2000480')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (481, N'Bodega 481', N'Direccion 481', 6385, N'2000481')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (482, N'Bodega 482', N'Direccion 482', 4277, N'2000482')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (483, N'Bodega 483', N'Direccion 483', 7725, N'2000483')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (484, N'Bodega 484', N'Direccion 484', 8435, N'2000484')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (485, N'Bodega 485', N'Direccion 485', 3203, N'2000485')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (486, N'Bodega 486', N'Direccion 486', 9161, N'2000486')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (487, N'Bodega 487', N'Direccion 487', 9877, N'2000487')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (488, N'Bodega 488', N'Direccion 488', 9410, N'2000488')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (489, N'Bodega 489', N'Direccion 489', 2786, N'2000489')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (490, N'Bodega 490', N'Direccion 490', 7531, N'2000490')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (491, N'Bodega 491', N'Direccion 491', 6170, N'2000491')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (492, N'Bodega 492', N'Direccion 492', 8564, N'2000492')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (493, N'Bodega 493', N'Direccion 493', 2951, N'2000493')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (494, N'Bodega 494', N'Direccion 494', 9872, N'2000494')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (495, N'Bodega 495', N'Direccion 495', 4185, N'2000495')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (496, N'Bodega 496', N'Direccion 496', 7209, N'2000496')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (497, N'Bodega 497', N'Direccion 497', 4980, N'2000497')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (498, N'Bodega 498', N'Direccion 498', 5331, N'2000498')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (499, N'Bodega 499', N'Direccion 499', 3775, N'2000499')
GO
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (500, N'Bodega 500', N'Direccion 500', 8565, N'2000500')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (501, N'Bodega 501', N'Direccion 501', 5122, N'2000501')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (502, N'Bodega 502', N'Direccion 502', 5751, N'2000502')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (503, N'Bodega 503', N'Direccion 503', 8641, N'2000503')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (504, N'Bodega 504', N'Direccion 504', 8855, N'2000504')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (505, N'Bodega 505', N'Direccion 505', 9639, N'2000505')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (506, N'Bodega 506', N'Direccion 506', 7284, N'2000506')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (507, N'Bodega 507', N'Direccion 507', 3685, N'2000507')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (508, N'Bodega 508', N'Direccion 508', 7597, N'2000508')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (509, N'Bodega 509', N'Direccion 509', 6015, N'2000509')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (510, N'Bodega 510', N'Direccion 510', 267, N'2000510')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (511, N'Bodega 511', N'Direccion 511', 9893, N'2000511')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (512, N'Bodega 512', N'Direccion 512', 4382, N'2000512')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (513, N'Bodega 513', N'Direccion 513', 6021, N'2000513')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (514, N'Bodega 514', N'Direccion 514', 5063, N'2000514')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (515, N'Bodega 515', N'Direccion 515', 7350, N'2000515')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (516, N'Bodega 516', N'Direccion 516', 4364, N'2000516')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (517, N'Bodega 517', N'Direccion 517', 5832, N'2000517')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (518, N'Bodega 518', N'Direccion 518', 7719, N'2000518')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (519, N'Bodega 519', N'Direccion 519', 2732, N'2000519')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (520, N'Bodega 520', N'Direccion 520', 5256, N'2000520')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (521, N'Bodega 521', N'Direccion 521', 132, N'2000521')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (522, N'Bodega 522', N'Direccion 522', 6601, N'2000522')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (523, N'Bodega 523', N'Direccion 523', 8893, N'2000523')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (524, N'Bodega 524', N'Direccion 524', 1871, N'2000524')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (525, N'Bodega 525', N'Direccion 525', 518, N'2000525')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (526, N'Bodega 526', N'Direccion 526', 7469, N'2000526')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (527, N'Bodega 527', N'Direccion 527', 1511, N'2000527')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (528, N'Bodega 528', N'Direccion 528', 34, N'2000528')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (529, N'Bodega 529', N'Direccion 529', 5852, N'2000529')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (530, N'Bodega 530', N'Direccion 530', 4676, N'2000530')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (531, N'Bodega 531', N'Direccion 531', 2190, N'2000531')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (532, N'Bodega 532', N'Direccion 532', 7987, N'2000532')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (533, N'Bodega 533', N'Direccion 533', 6787, N'2000533')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (534, N'Bodega 534', N'Direccion 534', 5092, N'2000534')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (535, N'Bodega 535', N'Direccion 535', 8067, N'2000535')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (536, N'Bodega 536', N'Direccion 536', 2348, N'2000536')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (537, N'Bodega 537', N'Direccion 537', 9720, N'2000537')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (538, N'Bodega 538', N'Direccion 538', 112, N'2000538')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (539, N'Bodega 539', N'Direccion 539', 9447, N'2000539')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (540, N'Bodega 540', N'Direccion 540', 1503, N'2000540')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (541, N'Bodega 541', N'Direccion 541', 6962, N'2000541')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (542, N'Bodega 542', N'Direccion 542', 6230, N'2000542')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (543, N'Bodega 543', N'Direccion 543', 3529, N'2000543')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (544, N'Bodega 544', N'Direccion 544', 5548, N'2000544')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (545, N'Bodega 545', N'Direccion 545', 1125, N'2000545')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (546, N'Bodega 546', N'Direccion 546', 1028, N'2000546')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (547, N'Bodega 547', N'Direccion 547', 7308, N'2000547')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (548, N'Bodega 548', N'Direccion 548', 1310, N'2000548')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (549, N'Bodega 549', N'Direccion 549', 9183, N'2000549')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (550, N'Bodega 550', N'Direccion 550', 7071, N'2000550')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (551, N'Bodega 551', N'Direccion 551', 2001, N'2000551')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (552, N'Bodega 552', N'Direccion 552', 2167, N'2000552')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (553, N'Bodega 553', N'Direccion 553', 1718, N'2000553')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (554, N'Bodega 554', N'Direccion 554', 9100, N'2000554')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (555, N'Bodega 555', N'Direccion 555', 1779, N'2000555')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (556, N'Bodega 556', N'Direccion 556', 5136, N'2000556')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (557, N'Bodega 557', N'Direccion 557', 3595, N'2000557')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (558, N'Bodega 558', N'Direccion 558', 1323, N'2000558')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (559, N'Bodega 559', N'Direccion 559', 6327, N'2000559')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (560, N'Bodega 560', N'Direccion 560', 7782, N'2000560')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (561, N'Bodega 561', N'Direccion 561', 2863, N'2000561')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (562, N'Bodega 562', N'Direccion 562', 4292, N'2000562')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (563, N'Bodega 563', N'Direccion 563', 1922, N'2000563')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (564, N'Bodega 564', N'Direccion 564', 9939, N'2000564')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (565, N'Bodega 565', N'Direccion 565', 7647, N'2000565')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (566, N'Bodega 566', N'Direccion 566', 5032, N'2000566')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (567, N'Bodega 567', N'Direccion 567', 1085, N'2000567')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (568, N'Bodega 568', N'Direccion 568', 7801, N'2000568')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (569, N'Bodega 569', N'Direccion 569', 9465, N'2000569')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (570, N'Bodega 570', N'Direccion 570', 7321, N'2000570')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (571, N'Bodega 571', N'Direccion 571', 4971, N'2000571')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (572, N'Bodega 572', N'Direccion 572', 4833, N'2000572')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (573, N'Bodega 573', N'Direccion 573', 4242, N'2000573')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (574, N'Bodega 574', N'Direccion 574', 3461, N'2000574')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (575, N'Bodega 575', N'Direccion 575', 7659, N'2000575')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (576, N'Bodega 576', N'Direccion 576', 8961, N'2000576')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (577, N'Bodega 577', N'Direccion 577', 9712, N'2000577')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (578, N'Bodega 578', N'Direccion 578', 9374, N'2000578')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (579, N'Bodega 579', N'Direccion 579', 2178, N'2000579')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (580, N'Bodega 580', N'Direccion 580', 8897, N'2000580')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (581, N'Bodega 581', N'Direccion 581', 2937, N'2000581')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (582, N'Bodega 582', N'Direccion 582', 6982, N'2000582')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (583, N'Bodega 583', N'Direccion 583', 2182, N'2000583')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (584, N'Bodega 584', N'Direccion 584', 9462, N'2000584')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (585, N'Bodega 585', N'Direccion 585', 8167, N'2000585')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (586, N'Bodega 586', N'Direccion 586', 7205, N'2000586')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (587, N'Bodega 587', N'Direccion 587', 7591, N'2000587')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (588, N'Bodega 588', N'Direccion 588', 5126, N'2000588')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (589, N'Bodega 589', N'Direccion 589', 6524, N'2000589')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (590, N'Bodega 590', N'Direccion 590', 8996, N'2000590')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (591, N'Bodega 591', N'Direccion 591', 2739, N'2000591')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (592, N'Bodega 592', N'Direccion 592', 3090, N'2000592')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (593, N'Bodega 593', N'Direccion 593', 6912, N'2000593')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (594, N'Bodega 594', N'Direccion 594', 9609, N'2000594')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (595, N'Bodega 595', N'Direccion 595', 9437, N'2000595')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (596, N'Bodega 596', N'Direccion 596', 420, N'2000596')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (597, N'Bodega 597', N'Direccion 597', 3207, N'2000597')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (598, N'Bodega 598', N'Direccion 598', 9558, N'2000598')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (599, N'Bodega 599', N'Direccion 599', 6177, N'2000599')
GO
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (600, N'Bodega 600', N'Direccion 600', 3187, N'2000600')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (601, N'Bodega 601', N'Direccion 601', 1274, N'2000601')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (602, N'Bodega 602', N'Direccion 602', 3897, N'2000602')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (603, N'Bodega 603', N'Direccion 603', 1072, N'2000603')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (604, N'Bodega 604', N'Direccion 604', 1944, N'2000604')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (605, N'Bodega 605', N'Direccion 605', 4091, N'2000605')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (606, N'Bodega 606', N'Direccion 606', 2474, N'2000606')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (607, N'Bodega 607', N'Direccion 607', 6712, N'2000607')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (608, N'Bodega 608', N'Direccion 608', 2493, N'2000608')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (609, N'Bodega 609', N'Direccion 609', 4143, N'2000609')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (610, N'Bodega 610', N'Direccion 610', 5022, N'2000610')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (611, N'Bodega 611', N'Direccion 611', 7379, N'2000611')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (612, N'Bodega 612', N'Direccion 612', 3995, N'2000612')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (613, N'Bodega 613', N'Direccion 613', 385, N'2000613')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (614, N'Bodega 614', N'Direccion 614', 180, N'2000614')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (615, N'Bodega 615', N'Direccion 615', 250, N'2000615')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (616, N'Bodega 616', N'Direccion 616', 1667, N'2000616')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (617, N'Bodega 617', N'Direccion 617', 8451, N'2000617')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (618, N'Bodega 618', N'Direccion 618', 6866, N'2000618')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (619, N'Bodega 619', N'Direccion 619', 3745, N'2000619')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (620, N'Bodega 620', N'Direccion 620', 6807, N'2000620')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (621, N'Bodega 621', N'Direccion 621', 8970, N'2000621')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (622, N'Bodega 622', N'Direccion 622', 8834, N'2000622')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (623, N'Bodega 623', N'Direccion 623', 4192, N'2000623')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (624, N'Bodega 624', N'Direccion 624', 6122, N'2000624')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (625, N'Bodega 625', N'Direccion 625', 8427, N'2000625')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (626, N'Bodega 626', N'Direccion 626', 7325, N'2000626')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (627, N'Bodega 627', N'Direccion 627', 1303, N'2000627')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (628, N'Bodega 628', N'Direccion 628', 8116, N'2000628')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (629, N'Bodega 629', N'Direccion 629', 9748, N'2000629')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (630, N'Bodega 630', N'Direccion 630', 3908, N'2000630')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (631, N'Bodega 631', N'Direccion 631', 3023, N'2000631')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (632, N'Bodega 632', N'Direccion 632', 9729, N'2000632')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (633, N'Bodega 633', N'Direccion 633', 1052, N'2000633')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (634, N'Bodega 634', N'Direccion 634', 4125, N'2000634')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (635, N'Bodega 635', N'Direccion 635', 8005, N'2000635')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (636, N'Bodega 636', N'Direccion 636', 3476, N'2000636')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (637, N'Bodega 637', N'Direccion 637', 3779, N'2000637')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (638, N'Bodega 638', N'Direccion 638', 9688, N'2000638')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (639, N'Bodega 639', N'Direccion 639', 7807, N'2000639')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (640, N'Bodega 640', N'Direccion 640', 9330, N'2000640')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (641, N'Bodega 641', N'Direccion 641', 5161, N'2000641')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (642, N'Bodega 642', N'Direccion 642', 121, N'2000642')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (643, N'Bodega 643', N'Direccion 643', 3603, N'2000643')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (644, N'Bodega 644', N'Direccion 644', 4656, N'2000644')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (645, N'Bodega 645', N'Direccion 645', 3595, N'2000645')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (646, N'Bodega 646', N'Direccion 646', 8838, N'2000646')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (647, N'Bodega 647', N'Direccion 647', 9335, N'2000647')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (648, N'Bodega 648', N'Direccion 648', 3378, N'2000648')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (649, N'Bodega 649', N'Direccion 649', 2239, N'2000649')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (650, N'Bodega 650', N'Direccion 650', 3630, N'2000650')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (651, N'Bodega 651', N'Direccion 651', 3188, N'2000651')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (652, N'Bodega 652', N'Direccion 652', 3337, N'2000652')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (653, N'Bodega 653', N'Direccion 653', 9525, N'2000653')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (654, N'Bodega 654', N'Direccion 654', 3147, N'2000654')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (655, N'Bodega 655', N'Direccion 655', 2332, N'2000655')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (656, N'Bodega 656', N'Direccion 656', 140, N'2000656')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (657, N'Bodega 657', N'Direccion 657', 1622, N'2000657')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (658, N'Bodega 658', N'Direccion 658', 9424, N'2000658')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (659, N'Bodega 659', N'Direccion 659', 4818, N'2000659')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (660, N'Bodega 660', N'Direccion 660', 7632, N'2000660')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (661, N'Bodega 661', N'Direccion 661', 3626, N'2000661')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (662, N'Bodega 662', N'Direccion 662', 5261, N'2000662')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (663, N'Bodega 663', N'Direccion 663', 1484, N'2000663')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (664, N'Bodega 664', N'Direccion 664', 4873, N'2000664')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (665, N'Bodega 665', N'Direccion 665', 8621, N'2000665')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (666, N'Bodega 666', N'Direccion 666', 2187, N'2000666')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (667, N'Bodega 667', N'Direccion 667', 2186, N'2000667')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (668, N'Bodega 668', N'Direccion 668', 8210, N'2000668')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (669, N'Bodega 669', N'Direccion 669', 6578, N'2000669')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (670, N'Bodega 670', N'Direccion 670', 8110, N'2000670')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (671, N'Bodega 671', N'Direccion 671', 9927, N'2000671')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (672, N'Bodega 672', N'Direccion 672', 2583, N'2000672')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (673, N'Bodega 673', N'Direccion 673', 6865, N'2000673')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (674, N'Bodega 674', N'Direccion 674', 2084, N'2000674')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (675, N'Bodega 675', N'Direccion 675', 9274, N'2000675')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (676, N'Bodega 676', N'Direccion 676', 3438, N'2000676')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (677, N'Bodega 677', N'Direccion 677', 7761, N'2000677')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (678, N'Bodega 678', N'Direccion 678', 1894, N'2000678')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (679, N'Bodega 679', N'Direccion 679', 499, N'2000679')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (680, N'Bodega 680', N'Direccion 680', 9579, N'2000680')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (681, N'Bodega 681', N'Direccion 681', 8338, N'2000681')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (682, N'Bodega 682', N'Direccion 682', 3047, N'2000682')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (683, N'Bodega 683', N'Direccion 683', 8817, N'2000683')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (684, N'Bodega 684', N'Direccion 684', 8219, N'2000684')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (685, N'Bodega 685', N'Direccion 685', 6389, N'2000685')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (686, N'Bodega 686', N'Direccion 686', 2160, N'2000686')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (687, N'Bodega 687', N'Direccion 687', 6530, N'2000687')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (688, N'Bodega 688', N'Direccion 688', 5089, N'2000688')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (689, N'Bodega 689', N'Direccion 689', 6781, N'2000689')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (690, N'Bodega 690', N'Direccion 690', 3128, N'2000690')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (691, N'Bodega 691', N'Direccion 691', 1066, N'2000691')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (692, N'Bodega 692', N'Direccion 692', 9619, N'2000692')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (693, N'Bodega 693', N'Direccion 693', 7917, N'2000693')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (694, N'Bodega 694', N'Direccion 694', 3811, N'2000694')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (695, N'Bodega 695', N'Direccion 695', 4473, N'2000695')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (696, N'Bodega 696', N'Direccion 696', 6915, N'2000696')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (697, N'Bodega 697', N'Direccion 697', 5492, N'2000697')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (698, N'Bodega 698', N'Direccion 698', 3541, N'2000698')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (699, N'Bodega 699', N'Direccion 699', 3830, N'2000699')
GO
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (700, N'Bodega 700', N'Direccion 700', 9458, N'2000700')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (701, N'Bodega 701', N'Direccion 701', 4764, N'2000701')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (702, N'Bodega 702', N'Direccion 702', 2175, N'2000702')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (703, N'Bodega 703', N'Direccion 703', 7909, N'2000703')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (704, N'Bodega 704', N'Direccion 704', 6489, N'2000704')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (705, N'Bodega 705', N'Direccion 705', 9356, N'2000705')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (706, N'Bodega 706', N'Direccion 706', 3371, N'2000706')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (707, N'Bodega 707', N'Direccion 707', 2787, N'2000707')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (708, N'Bodega 708', N'Direccion 708', 744, N'2000708')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (709, N'Bodega 709', N'Direccion 709', 3563, N'2000709')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (710, N'Bodega 710', N'Direccion 710', 5935, N'2000710')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (711, N'Bodega 711', N'Direccion 711', 5518, N'2000711')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (712, N'Bodega 712', N'Direccion 712', 3973, N'2000712')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (713, N'Bodega 713', N'Direccion 713', 8351, N'2000713')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (714, N'Bodega 714', N'Direccion 714', 598, N'2000714')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (715, N'Bodega 715', N'Direccion 715', 1410, N'2000715')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (716, N'Bodega 716', N'Direccion 716', 2306, N'2000716')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (717, N'Bodega 717', N'Direccion 717', 2122, N'2000717')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (718, N'Bodega 718', N'Direccion 718', 7363, N'2000718')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (719, N'Bodega 719', N'Direccion 719', 2379, N'2000719')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (720, N'Bodega 720', N'Direccion 720', 6628, N'2000720')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (721, N'Bodega 721', N'Direccion 721', 2514, N'2000721')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (722, N'Bodega 722', N'Direccion 722', 370, N'2000722')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (723, N'Bodega 723', N'Direccion 723', 5108, N'2000723')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (724, N'Bodega 724', N'Direccion 724', 1741, N'2000724')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (725, N'Bodega 725', N'Direccion 725', 5476, N'2000725')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (726, N'Bodega 726', N'Direccion 726', 9577, N'2000726')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (727, N'Bodega 727', N'Direccion 727', 7572, N'2000727')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (728, N'Bodega 728', N'Direccion 728', 7760, N'2000728')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (729, N'Bodega 729', N'Direccion 729', 9451, N'2000729')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (730, N'Bodega 730', N'Direccion 730', 4869, N'2000730')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (731, N'Bodega 731', N'Direccion 731', 9360, N'2000731')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (732, N'Bodega 732', N'Direccion 732', 1467, N'2000732')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (733, N'Bodega 733', N'Direccion 733', 8005, N'2000733')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (734, N'Bodega 734', N'Direccion 734', 8867, N'2000734')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (735, N'Bodega 735', N'Direccion 735', 6643, N'2000735')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (736, N'Bodega 736', N'Direccion 736', 5841, N'2000736')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (737, N'Bodega 737', N'Direccion 737', 519, N'2000737')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (738, N'Bodega 738', N'Direccion 738', 1824, N'2000738')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (739, N'Bodega 739', N'Direccion 739', 6309, N'2000739')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (740, N'Bodega 740', N'Direccion 740', 7790, N'2000740')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (741, N'Bodega 741', N'Direccion 741', 7750, N'2000741')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (742, N'Bodega 742', N'Direccion 742', 824, N'2000742')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (743, N'Bodega 743', N'Direccion 743', 6178, N'2000743')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (744, N'Bodega 744', N'Direccion 744', 1336, N'2000744')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (745, N'Bodega 745', N'Direccion 745', 462, N'2000745')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (746, N'Bodega 746', N'Direccion 746', 3904, N'2000746')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (747, N'Bodega 747', N'Direccion 747', 5701, N'2000747')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (748, N'Bodega 748', N'Direccion 748', 5764, N'2000748')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (749, N'Bodega 749', N'Direccion 749', 8283, N'2000749')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (750, N'Bodega 750', N'Direccion 750', 7925, N'2000750')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (751, N'Bodega 751', N'Direccion 751', 3087, N'2000751')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (752, N'Bodega 752', N'Direccion 752', 8881, N'2000752')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (753, N'Bodega 753', N'Direccion 753', 4050, N'2000753')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (754, N'Bodega 754', N'Direccion 754', 2923, N'2000754')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (755, N'Bodega 755', N'Direccion 755', 4546, N'2000755')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (756, N'Bodega 756', N'Direccion 756', 8044, N'2000756')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (757, N'Bodega 757', N'Direccion 757', 1178, N'2000757')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (758, N'Bodega 758', N'Direccion 758', 9718, N'2000758')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (759, N'Bodega 759', N'Direccion 759', 9997, N'2000759')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (760, N'Bodega 760', N'Direccion 760', 2346, N'2000760')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (761, N'Bodega 761', N'Direccion 761', 5803, N'2000761')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (762, N'Bodega 762', N'Direccion 762', 3170, N'2000762')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (763, N'Bodega 763', N'Direccion 763', 4305, N'2000763')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (764, N'Bodega 764', N'Direccion 764', 2304, N'2000764')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (765, N'Bodega 765', N'Direccion 765', 4437, N'2000765')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (766, N'Bodega 766', N'Direccion 766', 2369, N'2000766')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (767, N'Bodega 767', N'Direccion 767', 2652, N'2000767')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (768, N'Bodega 768', N'Direccion 768', 1852, N'2000768')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (769, N'Bodega 769', N'Direccion 769', 1248, N'2000769')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (770, N'Bodega 770', N'Direccion 770', 8119, N'2000770')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (771, N'Bodega 771', N'Direccion 771', 8333, N'2000771')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (772, N'Bodega 772', N'Direccion 772', 8009, N'2000772')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (773, N'Bodega 773', N'Direccion 773', 1665, N'2000773')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (774, N'Bodega 774', N'Direccion 774', 1336, N'2000774')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (775, N'Bodega 775', N'Direccion 775', 3175, N'2000775')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (776, N'Bodega 776', N'Direccion 776', 1365, N'2000776')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (777, N'Bodega 777', N'Direccion 777', 2016, N'2000777')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (778, N'Bodega 778', N'Direccion 778', 5730, N'2000778')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (779, N'Bodega 779', N'Direccion 779', 8139, N'2000779')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (780, N'Bodega 780', N'Direccion 780', 1832, N'2000780')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (781, N'Bodega 781', N'Direccion 781', 2893, N'2000781')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (782, N'Bodega 782', N'Direccion 782', 3079, N'2000782')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (783, N'Bodega 783', N'Direccion 783', 9230, N'2000783')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (784, N'Bodega 784', N'Direccion 784', 9872, N'2000784')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (785, N'Bodega 785', N'Direccion 785', 6761, N'2000785')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (786, N'Bodega 786', N'Direccion 786', 9881, N'2000786')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (787, N'Bodega 787', N'Direccion 787', 3939, N'2000787')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (788, N'Bodega 788', N'Direccion 788', 6627, N'2000788')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (789, N'Bodega 789', N'Direccion 789', 3180, N'2000789')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (790, N'Bodega 790', N'Direccion 790', 3685, N'2000790')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (791, N'Bodega 791', N'Direccion 791', 3953, N'2000791')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (792, N'Bodega 792', N'Direccion 792', 2815, N'2000792')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (793, N'Bodega 793', N'Direccion 793', 7242, N'2000793')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (794, N'Bodega 794', N'Direccion 794', 6190, N'2000794')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (795, N'Bodega 795', N'Direccion 795', 3009, N'2000795')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (796, N'Bodega 796', N'Direccion 796', 7687, N'2000796')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (797, N'Bodega 797', N'Direccion 797', 7321, N'2000797')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (798, N'Bodega 798', N'Direccion 798', 8573, N'2000798')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (799, N'Bodega 799', N'Direccion 799', 5542, N'2000799')
GO
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (800, N'Bodega 800', N'Direccion 800', 5777, N'2000800')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (801, N'Bodega 801', N'Direccion 801', 8496, N'2000801')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (802, N'Bodega 802', N'Direccion 802', 727, N'2000802')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (803, N'Bodega 803', N'Direccion 803', 1212, N'2000803')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (804, N'Bodega 804', N'Direccion 804', 1980, N'2000804')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (805, N'Bodega 805', N'Direccion 805', 8538, N'2000805')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (806, N'Bodega 806', N'Direccion 806', 75, N'2000806')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (807, N'Bodega 807', N'Direccion 807', 2575, N'2000807')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (808, N'Bodega 808', N'Direccion 808', 7281, N'2000808')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (809, N'Bodega 809', N'Direccion 809', 8033, N'2000809')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (810, N'Bodega 810', N'Direccion 810', 7736, N'2000810')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (811, N'Bodega 811', N'Direccion 811', 1109, N'2000811')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (812, N'Bodega 812', N'Direccion 812', 4466, N'2000812')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (813, N'Bodega 813', N'Direccion 813', 1580, N'2000813')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (814, N'Bodega 814', N'Direccion 814', 7579, N'2000814')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (815, N'Bodega 815', N'Direccion 815', 7343, N'2000815')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (816, N'Bodega 816', N'Direccion 816', 1537, N'2000816')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (817, N'Bodega 817', N'Direccion 817', 7372, N'2000817')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (818, N'Bodega 818', N'Direccion 818', 8797, N'2000818')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (819, N'Bodega 819', N'Direccion 819', 262, N'2000819')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (820, N'Bodega 820', N'Direccion 820', 7530, N'2000820')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (821, N'Bodega 821', N'Direccion 821', 9338, N'2000821')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (822, N'Bodega 822', N'Direccion 822', 3036, N'2000822')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (823, N'Bodega 823', N'Direccion 823', 3975, N'2000823')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (824, N'Bodega 824', N'Direccion 824', 5309, N'2000824')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (825, N'Bodega 825', N'Direccion 825', 7708, N'2000825')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (826, N'Bodega 826', N'Direccion 826', 1303, N'2000826')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (827, N'Bodega 827', N'Direccion 827', 2530, N'2000827')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (828, N'Bodega 828', N'Direccion 828', 6718, N'2000828')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (829, N'Bodega 829', N'Direccion 829', 8303, N'2000829')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (830, N'Bodega 830', N'Direccion 830', 8501, N'2000830')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (831, N'Bodega 831', N'Direccion 831', 413, N'2000831')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (832, N'Bodega 832', N'Direccion 832', 2470, N'2000832')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (833, N'Bodega 833', N'Direccion 833', 219, N'2000833')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (834, N'Bodega 834', N'Direccion 834', 2092, N'2000834')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (835, N'Bodega 835', N'Direccion 835', 949, N'2000835')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (836, N'Bodega 836', N'Direccion 836', 5905, N'2000836')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (837, N'Bodega 837', N'Direccion 837', 7444, N'2000837')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (838, N'Bodega 838', N'Direccion 838', 7189, N'2000838')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (839, N'Bodega 839', N'Direccion 839', 3775, N'2000839')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (840, N'Bodega 840', N'Direccion 840', 3660, N'2000840')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (841, N'Bodega 841', N'Direccion 841', 2332, N'2000841')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (842, N'Bodega 842', N'Direccion 842', 7068, N'2000842')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (843, N'Bodega 843', N'Direccion 843', 7284, N'2000843')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (844, N'Bodega 844', N'Direccion 844', 6557, N'2000844')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (845, N'Bodega 845', N'Direccion 845', 4588, N'2000845')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (846, N'Bodega 846', N'Direccion 846', 3559, N'2000846')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (847, N'Bodega 847', N'Direccion 847', 7840, N'2000847')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (848, N'Bodega 848', N'Direccion 848', 3754, N'2000848')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (849, N'Bodega 849', N'Direccion 849', 319, N'2000849')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (850, N'Bodega 850', N'Direccion 850', 2555, N'2000850')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (851, N'Bodega 851', N'Direccion 851', 8334, N'2000851')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (852, N'Bodega 852', N'Direccion 852', 4375, N'2000852')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (853, N'Bodega 853', N'Direccion 853', 6036, N'2000853')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (854, N'Bodega 854', N'Direccion 854', 2278, N'2000854')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (855, N'Bodega 855', N'Direccion 855', 8508, N'2000855')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (856, N'Bodega 856', N'Direccion 856', 8451, N'2000856')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (857, N'Bodega 857', N'Direccion 857', 5327, N'2000857')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (858, N'Bodega 858', N'Direccion 858', 940, N'2000858')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (859, N'Bodega 859', N'Direccion 859', 6557, N'2000859')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (860, N'Bodega 860', N'Direccion 860', 1716, N'2000860')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (861, N'Bodega 861', N'Direccion 861', 8739, N'2000861')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (862, N'Bodega 862', N'Direccion 862', 7633, N'2000862')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (863, N'Bodega 863', N'Direccion 863', 330, N'2000863')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (864, N'Bodega 864', N'Direccion 864', 8376, N'2000864')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (865, N'Bodega 865', N'Direccion 865', 2887, N'2000865')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (866, N'Bodega 866', N'Direccion 866', 3515, N'2000866')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (867, N'Bodega 867', N'Direccion 867', 5851, N'2000867')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (868, N'Bodega 868', N'Direccion 868', 5166, N'2000868')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (869, N'Bodega 869', N'Direccion 869', 1550, N'2000869')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (870, N'Bodega 870', N'Direccion 870', 1615, N'2000870')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (871, N'Bodega 871', N'Direccion 871', 9737, N'2000871')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (872, N'Bodega 872', N'Direccion 872', 9517, N'2000872')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (873, N'Bodega 873', N'Direccion 873', 266, N'2000873')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (874, N'Bodega 874', N'Direccion 874', 4256, N'2000874')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (875, N'Bodega 875', N'Direccion 875', 1107, N'2000875')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (876, N'Bodega 876', N'Direccion 876', 9416, N'2000876')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (877, N'Bodega 877', N'Direccion 877', 3625, N'2000877')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (878, N'Bodega 878', N'Direccion 878', 7707, N'2000878')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (879, N'Bodega 879', N'Direccion 879', 1377, N'2000879')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (880, N'Bodega 880', N'Direccion 880', 7001, N'2000880')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (881, N'Bodega 881', N'Direccion 881', 6235, N'2000881')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (882, N'Bodega 882', N'Direccion 882', 6191, N'2000882')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (883, N'Bodega 883', N'Direccion 883', 5597, N'2000883')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (884, N'Bodega 884', N'Direccion 884', 5259, N'2000884')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (885, N'Bodega 885', N'Direccion 885', 2473, N'2000885')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (886, N'Bodega 886', N'Direccion 886', 4566, N'2000886')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (887, N'Bodega 887', N'Direccion 887', 4106, N'2000887')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (888, N'Bodega 888', N'Direccion 888', 6754, N'2000888')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (889, N'Bodega 889', N'Direccion 889', 6261, N'2000889')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (890, N'Bodega 890', N'Direccion 890', 9436, N'2000890')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (891, N'Bodega 891', N'Direccion 891', 4544, N'2000891')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (892, N'Bodega 892', N'Direccion 892', 850, N'2000892')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (893, N'Bodega 893', N'Direccion 893', 5242, N'2000893')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (894, N'Bodega 894', N'Direccion 894', 6334, N'2000894')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (895, N'Bodega 895', N'Direccion 895', 6593, N'2000895')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (896, N'Bodega 896', N'Direccion 896', 4135, N'2000896')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (897, N'Bodega 897', N'Direccion 897', 433, N'2000897')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (898, N'Bodega 898', N'Direccion 898', 9140, N'2000898')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (899, N'Bodega 899', N'Direccion 899', 5593, N'2000899')
GO
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (900, N'Bodega 900', N'Direccion 900', 1287, N'2000900')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (901, N'Bodega 901', N'Direccion 901', 9984, N'2000901')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (902, N'Bodega 902', N'Direccion 902', 8961, N'2000902')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (903, N'Bodega 903', N'Direccion 903', 7719, N'2000903')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (904, N'Bodega 904', N'Direccion 904', 1863, N'2000904')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (905, N'Bodega 905', N'Direccion 905', 7166, N'2000905')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (906, N'Bodega 906', N'Direccion 906', 2206, N'2000906')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (907, N'Bodega 907', N'Direccion 907', 7869, N'2000907')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (908, N'Bodega 908', N'Direccion 908', 991, N'2000908')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (909, N'Bodega 909', N'Direccion 909', 3929, N'2000909')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (910, N'Bodega 910', N'Direccion 910', 6200, N'2000910')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (911, N'Bodega 911', N'Direccion 911', 4005, N'2000911')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (912, N'Bodega 912', N'Direccion 912', 1721, N'2000912')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (913, N'Bodega 913', N'Direccion 913', 4077, N'2000913')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (914, N'Bodega 914', N'Direccion 914', 9163, N'2000914')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (915, N'Bodega 915', N'Direccion 915', 515, N'2000915')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (916, N'Bodega 916', N'Direccion 916', 2303, N'2000916')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (917, N'Bodega 917', N'Direccion 917', 5467, N'2000917')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (918, N'Bodega 918', N'Direccion 918', 4471, N'2000918')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (919, N'Bodega 919', N'Direccion 919', 7753, N'2000919')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (920, N'Bodega 920', N'Direccion 920', 3034, N'2000920')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (921, N'Bodega 921', N'Direccion 921', 3915, N'2000921')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (922, N'Bodega 922', N'Direccion 922', 8547, N'2000922')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (923, N'Bodega 923', N'Direccion 923', 1846, N'2000923')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (924, N'Bodega 924', N'Direccion 924', 401, N'2000924')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (925, N'Bodega 925', N'Direccion 925', 8041, N'2000925')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (926, N'Bodega 926', N'Direccion 926', 8068, N'2000926')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (927, N'Bodega 927', N'Direccion 927', 8967, N'2000927')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (928, N'Bodega 928', N'Direccion 928', 7220, N'2000928')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (929, N'Bodega 929', N'Direccion 929', 4162, N'2000929')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (930, N'Bodega 930', N'Direccion 930', 3802, N'2000930')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (931, N'Bodega 931', N'Direccion 931', 838, N'2000931')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (932, N'Bodega 932', N'Direccion 932', 8702, N'2000932')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (933, N'Bodega 933', N'Direccion 933', 5022, N'2000933')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (934, N'Bodega 934', N'Direccion 934', 499, N'2000934')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (935, N'Bodega 935', N'Direccion 935', 497, N'2000935')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (936, N'Bodega 936', N'Direccion 936', 8259, N'2000936')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (937, N'Bodega 937', N'Direccion 937', 2406, N'2000937')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (938, N'Bodega 938', N'Direccion 938', 1094, N'2000938')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (939, N'Bodega 939', N'Direccion 939', 1175, N'2000939')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (940, N'Bodega 940', N'Direccion 940', 2833, N'2000940')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (941, N'Bodega 941', N'Direccion 941', 4755, N'2000941')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (942, N'Bodega 942', N'Direccion 942', 8447, N'2000942')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (943, N'Bodega 943', N'Direccion 943', 5130, N'2000943')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (944, N'Bodega 944', N'Direccion 944', 9838, N'2000944')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (945, N'Bodega 945', N'Direccion 945', 4025, N'2000945')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (946, N'Bodega 946', N'Direccion 946', 571, N'2000946')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (947, N'Bodega 947', N'Direccion 947', 903, N'2000947')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (948, N'Bodega 948', N'Direccion 948', 4117, N'2000948')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (949, N'Bodega 949', N'Direccion 949', 7292, N'2000949')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (950, N'Bodega 950', N'Direccion 950', 7138, N'2000950')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (951, N'Bodega 951', N'Direccion 951', 2433, N'2000951')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (952, N'Bodega 952', N'Direccion 952', 6117, N'2000952')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (953, N'Bodega 953', N'Direccion 953', 2960, N'2000953')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (954, N'Bodega 954', N'Direccion 954', 4582, N'2000954')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (955, N'Bodega 955', N'Direccion 955', 3657, N'2000955')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (956, N'Bodega 956', N'Direccion 956', 1843, N'2000956')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (957, N'Bodega 957', N'Direccion 957', 8019, N'2000957')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (958, N'Bodega 958', N'Direccion 958', 8790, N'2000958')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (959, N'Bodega 959', N'Direccion 959', 5150, N'2000959')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (960, N'Bodega 960', N'Direccion 960', 5175, N'2000960')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (961, N'Bodega 961', N'Direccion 961', 3104, N'2000961')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (962, N'Bodega 962', N'Direccion 962', 1059, N'2000962')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (963, N'Bodega 963', N'Direccion 963', 8260, N'2000963')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (964, N'Bodega 964', N'Direccion 964', 6016, N'2000964')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (965, N'Bodega 965', N'Direccion 965', 5807, N'2000965')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (966, N'Bodega 966', N'Direccion 966', 4638, N'2000966')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (967, N'Bodega 967', N'Direccion 967', 8257, N'2000967')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (968, N'Bodega 968', N'Direccion 968', 6055, N'2000968')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (969, N'Bodega 969', N'Direccion 969', 3973, N'2000969')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (970, N'Bodega 970', N'Direccion 970', 5427, N'2000970')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (971, N'Bodega 971', N'Direccion 971', 4766, N'2000971')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (972, N'Bodega 972', N'Direccion 972', 5617, N'2000972')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (973, N'Bodega 973', N'Direccion 973', 1090, N'2000973')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (974, N'Bodega 974', N'Direccion 974', 2472, N'2000974')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (975, N'Bodega 975', N'Direccion 975', 3051, N'2000975')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (976, N'Bodega 976', N'Direccion 976', 7259, N'2000976')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (977, N'Bodega 977', N'Direccion 977', 4251, N'2000977')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (978, N'Bodega 978', N'Direccion 978', 6784, N'2000978')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (979, N'Bodega 979', N'Direccion 979', 2351, N'2000979')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (980, N'Bodega 980', N'Direccion 980', 4662, N'2000980')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (981, N'Bodega 981', N'Direccion 981', 3398, N'2000981')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (982, N'Bodega 982', N'Direccion 982', 7976, N'2000982')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (983, N'Bodega 983', N'Direccion 983', 1645, N'2000983')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (984, N'Bodega 984', N'Direccion 984', 2111, N'2000984')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (985, N'Bodega 985', N'Direccion 985', 7360, N'2000985')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (986, N'Bodega 986', N'Direccion 986', 4839, N'2000986')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (987, N'Bodega 987', N'Direccion 987', 8316, N'2000987')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (988, N'Bodega 988', N'Direccion 988', 1902, N'2000988')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (989, N'Bodega 989', N'Direccion 989', 32, N'2000989')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (990, N'Bodega 990', N'Direccion 990', 7735, N'2000990')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (991, N'Bodega 991', N'Direccion 991', 8138, N'2000991')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (992, N'Bodega 992', N'Direccion 992', 1466, N'2000992')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (993, N'Bodega 993', N'Direccion 993', 7386, N'2000993')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (994, N'Bodega 994', N'Direccion 994', 7404, N'2000994')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (995, N'Bodega 995', N'Direccion 995', 290, N'2000995')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (996, N'Bodega 996', N'Direccion 996', 1257, N'2000996')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (997, N'Bodega 997', N'Direccion 997', 550, N'2000997')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (998, N'Bodega 998', N'Direccion 998', 8325, N'2000998')
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (999, N'Bodega 999', N'Direccion 999', 5639, N'2000999')
GO
INSERT [dbo].[Bodega] ([Id_Bodega], [NombreBodega], [DireccionBodega], [CapacidadBodega], [TelefonoBodega]) VALUES (1000, N'Bodega 1000', N'Direccion 1000', 9637, N'2001000')
SET IDENTITY_INSERT [dbo].[Bodega] OFF
SET IDENTITY_INSERT [dbo].[Categoria] ON 

INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (1, N'Categoria 1', N'Descripcion de categoria 1')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (2, N'Categoria 2', N'Descripcion de categoria 2')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (3, N'Categoria 3', N'Descripcion de categoria 3')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (4, N'Categoria 4', N'Descripcion de categoria 4')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (5, N'Categoria 5', N'Descripcion de categoria 5')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (6, N'Categoria 6', N'Descripcion de categoria 6')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (7, N'Categoria 7', N'Descripcion de categoria 7')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (8, N'Categoria 8', N'Descripcion de categoria 8')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (9, N'Categoria 9', N'Descripcion de categoria 9')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (10, N'Categoria 10', N'Descripcion de categoria 10')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (11, N'Categoria 11', N'Descripcion de categoria 11')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (12, N'Categoria 12', N'Descripcion de categoria 12')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (13, N'Categoria 13', N'Descripcion de categoria 13')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (14, N'Categoria 14', N'Descripcion de categoria 14')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (15, N'Categoria 15', N'Descripcion de categoria 15')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (16, N'Categoria 16', N'Descripcion de categoria 16')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (17, N'Categoria 17', N'Descripcion de categoria 17')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (18, N'Categoria 18', N'Descripcion de categoria 18')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (19, N'Categoria 19', N'Descripcion de categoria 19')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (20, N'Categoria 20', N'Descripcion de categoria 20')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (21, N'Categoria 21', N'Descripcion de categoria 21')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (22, N'Categoria 22', N'Descripcion de categoria 22')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (23, N'Categoria 23', N'Descripcion de categoria 23')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (24, N'Categoria 24', N'Descripcion de categoria 24')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (25, N'Categoria 25', N'Descripcion de categoria 25')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (26, N'Categoria 26', N'Descripcion de categoria 26')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (27, N'Categoria 27', N'Descripcion de categoria 27')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (28, N'Categoria 28', N'Descripcion de categoria 28')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (29, N'Categoria 29', N'Descripcion de categoria 29')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (30, N'Categoria 30', N'Descripcion de categoria 30')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (31, N'Categoria 31', N'Descripcion de categoria 31')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (32, N'Categoria 32', N'Descripcion de categoria 32')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (33, N'Categoria 33', N'Descripcion de categoria 33')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (34, N'Categoria 34', N'Descripcion de categoria 34')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (35, N'Categoria 35', N'Descripcion de categoria 35')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (36, N'Categoria 36', N'Descripcion de categoria 36')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (37, N'Categoria 37', N'Descripcion de categoria 37')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (38, N'Categoria 38', N'Descripcion de categoria 38')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (39, N'Categoria 39', N'Descripcion de categoria 39')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (40, N'Categoria 40', N'Descripcion de categoria 40')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (41, N'Categoria 41', N'Descripcion de categoria 41')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (42, N'Categoria 42', N'Descripcion de categoria 42')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (43, N'Categoria 43', N'Descripcion de categoria 43')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (44, N'Categoria 44', N'Descripcion de categoria 44')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (45, N'Categoria 45', N'Descripcion de categoria 45')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (46, N'Categoria 46', N'Descripcion de categoria 46')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (47, N'Categoria 47', N'Descripcion de categoria 47')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (48, N'Categoria 48', N'Descripcion de categoria 48')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (49, N'Categoria 49', N'Descripcion de categoria 49')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (50, N'Categoria 50', N'Descripcion de categoria 50')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (51, N'Categoria 51', N'Descripcion de categoria 51')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (52, N'Categoria 52', N'Descripcion de categoria 52')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (53, N'Categoria 53', N'Descripcion de categoria 53')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (54, N'Categoria 54', N'Descripcion de categoria 54')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (55, N'Categoria 55', N'Descripcion de categoria 55')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (56, N'Categoria 56', N'Descripcion de categoria 56')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (57, N'Categoria 57', N'Descripcion de categoria 57')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (58, N'Categoria 58', N'Descripcion de categoria 58')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (59, N'Categoria 59', N'Descripcion de categoria 59')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (60, N'Categoria 60', N'Descripcion de categoria 60')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (61, N'Categoria 61', N'Descripcion de categoria 61')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (62, N'Categoria 62', N'Descripcion de categoria 62')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (63, N'Categoria 63', N'Descripcion de categoria 63')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (64, N'Categoria 64', N'Descripcion de categoria 64')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (65, N'Categoria 65', N'Descripcion de categoria 65')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (66, N'Categoria 66', N'Descripcion de categoria 66')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (67, N'Categoria 67', N'Descripcion de categoria 67')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (68, N'Categoria 68', N'Descripcion de categoria 68')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (69, N'Categoria 69', N'Descripcion de categoria 69')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (70, N'Categoria 70', N'Descripcion de categoria 70')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (71, N'Categoria 71', N'Descripcion de categoria 71')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (72, N'Categoria 72', N'Descripcion de categoria 72')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (73, N'Categoria 73', N'Descripcion de categoria 73')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (74, N'Categoria 74', N'Descripcion de categoria 74')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (75, N'Categoria 75', N'Descripcion de categoria 75')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (76, N'Categoria 76', N'Descripcion de categoria 76')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (77, N'Categoria 77', N'Descripcion de categoria 77')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (78, N'Categoria 78', N'Descripcion de categoria 78')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (79, N'Categoria 79', N'Descripcion de categoria 79')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (80, N'Categoria 80', N'Descripcion de categoria 80')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (81, N'Categoria 81', N'Descripcion de categoria 81')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (82, N'Categoria 82', N'Descripcion de categoria 82')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (83, N'Categoria 83', N'Descripcion de categoria 83')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (84, N'Categoria 84', N'Descripcion de categoria 84')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (85, N'Categoria 85', N'Descripcion de categoria 85')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (86, N'Categoria 86', N'Descripcion de categoria 86')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (87, N'Categoria 87', N'Descripcion de categoria 87')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (88, N'Categoria 88', N'Descripcion de categoria 88')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (89, N'Categoria 89', N'Descripcion de categoria 89')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (90, N'Categoria 90', N'Descripcion de categoria 90')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (91, N'Categoria 91', N'Descripcion de categoria 91')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (92, N'Categoria 92', N'Descripcion de categoria 92')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (93, N'Categoria 93', N'Descripcion de categoria 93')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (94, N'Categoria 94', N'Descripcion de categoria 94')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (95, N'Categoria 95', N'Descripcion de categoria 95')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (96, N'Categoria 96', N'Descripcion de categoria 96')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (97, N'Categoria 97', N'Descripcion de categoria 97')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (98, N'Categoria 98', N'Descripcion de categoria 98')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (99, N'Categoria 99', N'Descripcion de categoria 99')
GO
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (100, N'Categoria 100', N'Descripcion de categoria 100')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (101, N'Categoria 101', N'Descripcion de categoria 101')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (102, N'Categoria 102', N'Descripcion de categoria 102')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (103, N'Categoria 103', N'Descripcion de categoria 103')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (104, N'Categoria 104', N'Descripcion de categoria 104')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (105, N'Categoria 105', N'Descripcion de categoria 105')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (106, N'Categoria 106', N'Descripcion de categoria 106')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (107, N'Categoria 107', N'Descripcion de categoria 107')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (108, N'Categoria 108', N'Descripcion de categoria 108')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (109, N'Categoria 109', N'Descripcion de categoria 109')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (110, N'Categoria 110', N'Descripcion de categoria 110')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (111, N'Categoria 111', N'Descripcion de categoria 111')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (112, N'Categoria 112', N'Descripcion de categoria 112')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (113, N'Categoria 113', N'Descripcion de categoria 113')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (114, N'Categoria 114', N'Descripcion de categoria 114')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (115, N'Categoria 115', N'Descripcion de categoria 115')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (116, N'Categoria 116', N'Descripcion de categoria 116')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (117, N'Categoria 117', N'Descripcion de categoria 117')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (118, N'Categoria 118', N'Descripcion de categoria 118')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (119, N'Categoria 119', N'Descripcion de categoria 119')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (120, N'Categoria 120', N'Descripcion de categoria 120')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (121, N'Categoria 121', N'Descripcion de categoria 121')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (122, N'Categoria 122', N'Descripcion de categoria 122')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (123, N'Categoria 123', N'Descripcion de categoria 123')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (124, N'Categoria 124', N'Descripcion de categoria 124')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (125, N'Categoria 125', N'Descripcion de categoria 125')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (126, N'Categoria 126', N'Descripcion de categoria 126')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (127, N'Categoria 127', N'Descripcion de categoria 127')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (128, N'Categoria 128', N'Descripcion de categoria 128')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (129, N'Categoria 129', N'Descripcion de categoria 129')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (130, N'Categoria 130', N'Descripcion de categoria 130')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (131, N'Categoria 131', N'Descripcion de categoria 131')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (132, N'Categoria 132', N'Descripcion de categoria 132')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (133, N'Categoria 133', N'Descripcion de categoria 133')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (134, N'Categoria 134', N'Descripcion de categoria 134')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (135, N'Categoria 135', N'Descripcion de categoria 135')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (136, N'Categoria 136', N'Descripcion de categoria 136')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (137, N'Categoria 137', N'Descripcion de categoria 137')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (138, N'Categoria 138', N'Descripcion de categoria 138')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (139, N'Categoria 139', N'Descripcion de categoria 139')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (140, N'Categoria 140', N'Descripcion de categoria 140')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (141, N'Categoria 141', N'Descripcion de categoria 141')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (142, N'Categoria 142', N'Descripcion de categoria 142')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (143, N'Categoria 143', N'Descripcion de categoria 143')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (144, N'Categoria 144', N'Descripcion de categoria 144')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (145, N'Categoria 145', N'Descripcion de categoria 145')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (146, N'Categoria 146', N'Descripcion de categoria 146')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (147, N'Categoria 147', N'Descripcion de categoria 147')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (148, N'Categoria 148', N'Descripcion de categoria 148')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (149, N'Categoria 149', N'Descripcion de categoria 149')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (150, N'Categoria 150', N'Descripcion de categoria 150')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (151, N'Categoria 151', N'Descripcion de categoria 151')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (152, N'Categoria 152', N'Descripcion de categoria 152')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (153, N'Categoria 153', N'Descripcion de categoria 153')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (154, N'Categoria 154', N'Descripcion de categoria 154')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (155, N'Categoria 155', N'Descripcion de categoria 155')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (156, N'Categoria 156', N'Descripcion de categoria 156')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (157, N'Categoria 157', N'Descripcion de categoria 157')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (158, N'Categoria 158', N'Descripcion de categoria 158')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (159, N'Categoria 159', N'Descripcion de categoria 159')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (160, N'Categoria 160', N'Descripcion de categoria 160')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (161, N'Categoria 161', N'Descripcion de categoria 161')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (162, N'Categoria 162', N'Descripcion de categoria 162')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (163, N'Categoria 163', N'Descripcion de categoria 163')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (164, N'Categoria 164', N'Descripcion de categoria 164')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (165, N'Categoria 165', N'Descripcion de categoria 165')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (166, N'Categoria 166', N'Descripcion de categoria 166')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (167, N'Categoria 167', N'Descripcion de categoria 167')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (168, N'Categoria 168', N'Descripcion de categoria 168')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (169, N'Categoria 169', N'Descripcion de categoria 169')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (170, N'Categoria 170', N'Descripcion de categoria 170')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (171, N'Categoria 171', N'Descripcion de categoria 171')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (172, N'Categoria 172', N'Descripcion de categoria 172')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (173, N'Categoria 173', N'Descripcion de categoria 173')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (174, N'Categoria 174', N'Descripcion de categoria 174')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (175, N'Categoria 175', N'Descripcion de categoria 175')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (176, N'Categoria 176', N'Descripcion de categoria 176')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (177, N'Categoria 177', N'Descripcion de categoria 177')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (178, N'Categoria 178', N'Descripcion de categoria 178')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (179, N'Categoria 179', N'Descripcion de categoria 179')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (180, N'Categoria 180', N'Descripcion de categoria 180')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (181, N'Categoria 181', N'Descripcion de categoria 181')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (182, N'Categoria 182', N'Descripcion de categoria 182')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (183, N'Categoria 183', N'Descripcion de categoria 183')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (184, N'Categoria 184', N'Descripcion de categoria 184')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (185, N'Categoria 185', N'Descripcion de categoria 185')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (186, N'Categoria 186', N'Descripcion de categoria 186')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (187, N'Categoria 187', N'Descripcion de categoria 187')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (188, N'Categoria 188', N'Descripcion de categoria 188')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (189, N'Categoria 189', N'Descripcion de categoria 189')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (190, N'Categoria 190', N'Descripcion de categoria 190')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (191, N'Categoria 191', N'Descripcion de categoria 191')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (192, N'Categoria 192', N'Descripcion de categoria 192')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (193, N'Categoria 193', N'Descripcion de categoria 193')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (194, N'Categoria 194', N'Descripcion de categoria 194')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (195, N'Categoria 195', N'Descripcion de categoria 195')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (196, N'Categoria 196', N'Descripcion de categoria 196')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (197, N'Categoria 197', N'Descripcion de categoria 197')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (198, N'Categoria 198', N'Descripcion de categoria 198')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (199, N'Categoria 199', N'Descripcion de categoria 199')
GO
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (200, N'Categoria 200', N'Descripcion de categoria 200')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (201, N'Categoria 201', N'Descripcion de categoria 201')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (202, N'Categoria 202', N'Descripcion de categoria 202')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (203, N'Categoria 203', N'Descripcion de categoria 203')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (204, N'Categoria 204', N'Descripcion de categoria 204')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (205, N'Categoria 205', N'Descripcion de categoria 205')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (206, N'Categoria 206', N'Descripcion de categoria 206')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (207, N'Categoria 207', N'Descripcion de categoria 207')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (208, N'Categoria 208', N'Descripcion de categoria 208')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (209, N'Categoria 209', N'Descripcion de categoria 209')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (210, N'Categoria 210', N'Descripcion de categoria 210')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (211, N'Categoria 211', N'Descripcion de categoria 211')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (212, N'Categoria 212', N'Descripcion de categoria 212')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (213, N'Categoria 213', N'Descripcion de categoria 213')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (214, N'Categoria 214', N'Descripcion de categoria 214')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (215, N'Categoria 215', N'Descripcion de categoria 215')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (216, N'Categoria 216', N'Descripcion de categoria 216')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (217, N'Categoria 217', N'Descripcion de categoria 217')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (218, N'Categoria 218', N'Descripcion de categoria 218')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (219, N'Categoria 219', N'Descripcion de categoria 219')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (220, N'Categoria 220', N'Descripcion de categoria 220')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (221, N'Categoria 221', N'Descripcion de categoria 221')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (222, N'Categoria 222', N'Descripcion de categoria 222')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (223, N'Categoria 223', N'Descripcion de categoria 223')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (224, N'Categoria 224', N'Descripcion de categoria 224')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (225, N'Categoria 225', N'Descripcion de categoria 225')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (226, N'Categoria 226', N'Descripcion de categoria 226')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (227, N'Categoria 227', N'Descripcion de categoria 227')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (228, N'Categoria 228', N'Descripcion de categoria 228')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (229, N'Categoria 229', N'Descripcion de categoria 229')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (230, N'Categoria 230', N'Descripcion de categoria 230')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (231, N'Categoria 231', N'Descripcion de categoria 231')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (232, N'Categoria 232', N'Descripcion de categoria 232')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (233, N'Categoria 233', N'Descripcion de categoria 233')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (234, N'Categoria 234', N'Descripcion de categoria 234')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (235, N'Categoria 235', N'Descripcion de categoria 235')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (236, N'Categoria 236', N'Descripcion de categoria 236')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (237, N'Categoria 237', N'Descripcion de categoria 237')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (238, N'Categoria 238', N'Descripcion de categoria 238')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (239, N'Categoria 239', N'Descripcion de categoria 239')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (240, N'Categoria 240', N'Descripcion de categoria 240')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (241, N'Categoria 241', N'Descripcion de categoria 241')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (242, N'Categoria 242', N'Descripcion de categoria 242')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (243, N'Categoria 243', N'Descripcion de categoria 243')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (244, N'Categoria 244', N'Descripcion de categoria 244')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (245, N'Categoria 245', N'Descripcion de categoria 245')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (246, N'Categoria 246', N'Descripcion de categoria 246')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (247, N'Categoria 247', N'Descripcion de categoria 247')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (248, N'Categoria 248', N'Descripcion de categoria 248')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (249, N'Categoria 249', N'Descripcion de categoria 249')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (250, N'Categoria 250', N'Descripcion de categoria 250')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (251, N'Categoria 251', N'Descripcion de categoria 251')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (252, N'Categoria 252', N'Descripcion de categoria 252')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (253, N'Categoria 253', N'Descripcion de categoria 253')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (254, N'Categoria 254', N'Descripcion de categoria 254')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (255, N'Categoria 255', N'Descripcion de categoria 255')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (256, N'Categoria 256', N'Descripcion de categoria 256')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (257, N'Categoria 257', N'Descripcion de categoria 257')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (258, N'Categoria 258', N'Descripcion de categoria 258')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (259, N'Categoria 259', N'Descripcion de categoria 259')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (260, N'Categoria 260', N'Descripcion de categoria 260')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (261, N'Categoria 261', N'Descripcion de categoria 261')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (262, N'Categoria 262', N'Descripcion de categoria 262')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (263, N'Categoria 263', N'Descripcion de categoria 263')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (264, N'Categoria 264', N'Descripcion de categoria 264')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (265, N'Categoria 265', N'Descripcion de categoria 265')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (266, N'Categoria 266', N'Descripcion de categoria 266')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (267, N'Categoria 267', N'Descripcion de categoria 267')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (268, N'Categoria 268', N'Descripcion de categoria 268')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (269, N'Categoria 269', N'Descripcion de categoria 269')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (270, N'Categoria 270', N'Descripcion de categoria 270')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (271, N'Categoria 271', N'Descripcion de categoria 271')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (272, N'Categoria 272', N'Descripcion de categoria 272')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (273, N'Categoria 273', N'Descripcion de categoria 273')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (274, N'Categoria 274', N'Descripcion de categoria 274')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (275, N'Categoria 275', N'Descripcion de categoria 275')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (276, N'Categoria 276', N'Descripcion de categoria 276')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (277, N'Categoria 277', N'Descripcion de categoria 277')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (278, N'Categoria 278', N'Descripcion de categoria 278')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (279, N'Categoria 279', N'Descripcion de categoria 279')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (280, N'Categoria 280', N'Descripcion de categoria 280')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (281, N'Categoria 281', N'Descripcion de categoria 281')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (282, N'Categoria 282', N'Descripcion de categoria 282')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (283, N'Categoria 283', N'Descripcion de categoria 283')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (284, N'Categoria 284', N'Descripcion de categoria 284')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (285, N'Categoria 285', N'Descripcion de categoria 285')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (286, N'Categoria 286', N'Descripcion de categoria 286')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (287, N'Categoria 287', N'Descripcion de categoria 287')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (288, N'Categoria 288', N'Descripcion de categoria 288')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (289, N'Categoria 289', N'Descripcion de categoria 289')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (290, N'Categoria 290', N'Descripcion de categoria 290')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (291, N'Categoria 291', N'Descripcion de categoria 291')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (292, N'Categoria 292', N'Descripcion de categoria 292')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (293, N'Categoria 293', N'Descripcion de categoria 293')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (294, N'Categoria 294', N'Descripcion de categoria 294')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (295, N'Categoria 295', N'Descripcion de categoria 295')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (296, N'Categoria 296', N'Descripcion de categoria 296')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (297, N'Categoria 297', N'Descripcion de categoria 297')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (298, N'Categoria 298', N'Descripcion de categoria 298')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (299, N'Categoria 299', N'Descripcion de categoria 299')
GO
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (300, N'Categoria 300', N'Descripcion de categoria 300')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (301, N'Categoria 301', N'Descripcion de categoria 301')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (302, N'Categoria 302', N'Descripcion de categoria 302')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (303, N'Categoria 303', N'Descripcion de categoria 303')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (304, N'Categoria 304', N'Descripcion de categoria 304')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (305, N'Categoria 305', N'Descripcion de categoria 305')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (306, N'Categoria 306', N'Descripcion de categoria 306')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (307, N'Categoria 307', N'Descripcion de categoria 307')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (308, N'Categoria 308', N'Descripcion de categoria 308')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (309, N'Categoria 309', N'Descripcion de categoria 309')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (310, N'Categoria 310', N'Descripcion de categoria 310')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (311, N'Categoria 311', N'Descripcion de categoria 311')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (312, N'Categoria 312', N'Descripcion de categoria 312')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (313, N'Categoria 313', N'Descripcion de categoria 313')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (314, N'Categoria 314', N'Descripcion de categoria 314')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (315, N'Categoria 315', N'Descripcion de categoria 315')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (316, N'Categoria 316', N'Descripcion de categoria 316')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (317, N'Categoria 317', N'Descripcion de categoria 317')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (318, N'Categoria 318', N'Descripcion de categoria 318')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (319, N'Categoria 319', N'Descripcion de categoria 319')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (320, N'Categoria 320', N'Descripcion de categoria 320')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (321, N'Categoria 321', N'Descripcion de categoria 321')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (322, N'Categoria 322', N'Descripcion de categoria 322')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (323, N'Categoria 323', N'Descripcion de categoria 323')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (324, N'Categoria 324', N'Descripcion de categoria 324')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (325, N'Categoria 325', N'Descripcion de categoria 325')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (326, N'Categoria 326', N'Descripcion de categoria 326')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (327, N'Categoria 327', N'Descripcion de categoria 327')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (328, N'Categoria 328', N'Descripcion de categoria 328')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (329, N'Categoria 329', N'Descripcion de categoria 329')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (330, N'Categoria 330', N'Descripcion de categoria 330')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (331, N'Categoria 331', N'Descripcion de categoria 331')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (332, N'Categoria 332', N'Descripcion de categoria 332')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (333, N'Categoria 333', N'Descripcion de categoria 333')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (334, N'Categoria 334', N'Descripcion de categoria 334')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (335, N'Categoria 335', N'Descripcion de categoria 335')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (336, N'Categoria 336', N'Descripcion de categoria 336')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (337, N'Categoria 337', N'Descripcion de categoria 337')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (338, N'Categoria 338', N'Descripcion de categoria 338')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (339, N'Categoria 339', N'Descripcion de categoria 339')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (340, N'Categoria 340', N'Descripcion de categoria 340')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (341, N'Categoria 341', N'Descripcion de categoria 341')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (342, N'Categoria 342', N'Descripcion de categoria 342')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (343, N'Categoria 343', N'Descripcion de categoria 343')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (344, N'Categoria 344', N'Descripcion de categoria 344')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (345, N'Categoria 345', N'Descripcion de categoria 345')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (346, N'Categoria 346', N'Descripcion de categoria 346')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (347, N'Categoria 347', N'Descripcion de categoria 347')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (348, N'Categoria 348', N'Descripcion de categoria 348')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (349, N'Categoria 349', N'Descripcion de categoria 349')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (350, N'Categoria 350', N'Descripcion de categoria 350')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (351, N'Categoria 351', N'Descripcion de categoria 351')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (352, N'Categoria 352', N'Descripcion de categoria 352')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (353, N'Categoria 353', N'Descripcion de categoria 353')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (354, N'Categoria 354', N'Descripcion de categoria 354')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (355, N'Categoria 355', N'Descripcion de categoria 355')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (356, N'Categoria 356', N'Descripcion de categoria 356')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (357, N'Categoria 357', N'Descripcion de categoria 357')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (358, N'Categoria 358', N'Descripcion de categoria 358')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (359, N'Categoria 359', N'Descripcion de categoria 359')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (360, N'Categoria 360', N'Descripcion de categoria 360')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (361, N'Categoria 361', N'Descripcion de categoria 361')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (362, N'Categoria 362', N'Descripcion de categoria 362')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (363, N'Categoria 363', N'Descripcion de categoria 363')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (364, N'Categoria 364', N'Descripcion de categoria 364')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (365, N'Categoria 365', N'Descripcion de categoria 365')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (366, N'Categoria 366', N'Descripcion de categoria 366')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (367, N'Categoria 367', N'Descripcion de categoria 367')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (368, N'Categoria 368', N'Descripcion de categoria 368')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (369, N'Categoria 369', N'Descripcion de categoria 369')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (370, N'Categoria 370', N'Descripcion de categoria 370')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (371, N'Categoria 371', N'Descripcion de categoria 371')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (372, N'Categoria 372', N'Descripcion de categoria 372')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (373, N'Categoria 373', N'Descripcion de categoria 373')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (374, N'Categoria 374', N'Descripcion de categoria 374')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (375, N'Categoria 375', N'Descripcion de categoria 375')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (376, N'Categoria 376', N'Descripcion de categoria 376')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (377, N'Categoria 377', N'Descripcion de categoria 377')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (378, N'Categoria 378', N'Descripcion de categoria 378')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (379, N'Categoria 379', N'Descripcion de categoria 379')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (380, N'Categoria 380', N'Descripcion de categoria 380')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (381, N'Categoria 381', N'Descripcion de categoria 381')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (382, N'Categoria 382', N'Descripcion de categoria 382')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (383, N'Categoria 383', N'Descripcion de categoria 383')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (384, N'Categoria 384', N'Descripcion de categoria 384')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (385, N'Categoria 385', N'Descripcion de categoria 385')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (386, N'Categoria 386', N'Descripcion de categoria 386')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (387, N'Categoria 387', N'Descripcion de categoria 387')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (388, N'Categoria 388', N'Descripcion de categoria 388')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (389, N'Categoria 389', N'Descripcion de categoria 389')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (390, N'Categoria 390', N'Descripcion de categoria 390')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (391, N'Categoria 391', N'Descripcion de categoria 391')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (392, N'Categoria 392', N'Descripcion de categoria 392')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (393, N'Categoria 393', N'Descripcion de categoria 393')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (394, N'Categoria 394', N'Descripcion de categoria 394')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (395, N'Categoria 395', N'Descripcion de categoria 395')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (396, N'Categoria 396', N'Descripcion de categoria 396')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (397, N'Categoria 397', N'Descripcion de categoria 397')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (398, N'Categoria 398', N'Descripcion de categoria 398')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (399, N'Categoria 399', N'Descripcion de categoria 399')
GO
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (400, N'Categoria 400', N'Descripcion de categoria 400')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (401, N'Categoria 401', N'Descripcion de categoria 401')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (402, N'Categoria 402', N'Descripcion de categoria 402')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (403, N'Categoria 403', N'Descripcion de categoria 403')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (404, N'Categoria 404', N'Descripcion de categoria 404')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (405, N'Categoria 405', N'Descripcion de categoria 405')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (406, N'Categoria 406', N'Descripcion de categoria 406')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (407, N'Categoria 407', N'Descripcion de categoria 407')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (408, N'Categoria 408', N'Descripcion de categoria 408')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (409, N'Categoria 409', N'Descripcion de categoria 409')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (410, N'Categoria 410', N'Descripcion de categoria 410')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (411, N'Categoria 411', N'Descripcion de categoria 411')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (412, N'Categoria 412', N'Descripcion de categoria 412')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (413, N'Categoria 413', N'Descripcion de categoria 413')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (414, N'Categoria 414', N'Descripcion de categoria 414')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (415, N'Categoria 415', N'Descripcion de categoria 415')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (416, N'Categoria 416', N'Descripcion de categoria 416')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (417, N'Categoria 417', N'Descripcion de categoria 417')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (418, N'Categoria 418', N'Descripcion de categoria 418')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (419, N'Categoria 419', N'Descripcion de categoria 419')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (420, N'Categoria 420', N'Descripcion de categoria 420')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (421, N'Categoria 421', N'Descripcion de categoria 421')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (422, N'Categoria 422', N'Descripcion de categoria 422')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (423, N'Categoria 423', N'Descripcion de categoria 423')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (424, N'Categoria 424', N'Descripcion de categoria 424')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (425, N'Categoria 425', N'Descripcion de categoria 425')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (426, N'Categoria 426', N'Descripcion de categoria 426')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (427, N'Categoria 427', N'Descripcion de categoria 427')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (428, N'Categoria 428', N'Descripcion de categoria 428')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (429, N'Categoria 429', N'Descripcion de categoria 429')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (430, N'Categoria 430', N'Descripcion de categoria 430')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (431, N'Categoria 431', N'Descripcion de categoria 431')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (432, N'Categoria 432', N'Descripcion de categoria 432')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (433, N'Categoria 433', N'Descripcion de categoria 433')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (434, N'Categoria 434', N'Descripcion de categoria 434')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (435, N'Categoria 435', N'Descripcion de categoria 435')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (436, N'Categoria 436', N'Descripcion de categoria 436')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (437, N'Categoria 437', N'Descripcion de categoria 437')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (438, N'Categoria 438', N'Descripcion de categoria 438')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (439, N'Categoria 439', N'Descripcion de categoria 439')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (440, N'Categoria 440', N'Descripcion de categoria 440')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (441, N'Categoria 441', N'Descripcion de categoria 441')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (442, N'Categoria 442', N'Descripcion de categoria 442')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (443, N'Categoria 443', N'Descripcion de categoria 443')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (444, N'Categoria 444', N'Descripcion de categoria 444')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (445, N'Categoria 445', N'Descripcion de categoria 445')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (446, N'Categoria 446', N'Descripcion de categoria 446')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (447, N'Categoria 447', N'Descripcion de categoria 447')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (448, N'Categoria 448', N'Descripcion de categoria 448')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (449, N'Categoria 449', N'Descripcion de categoria 449')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (450, N'Categoria 450', N'Descripcion de categoria 450')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (451, N'Categoria 451', N'Descripcion de categoria 451')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (452, N'Categoria 452', N'Descripcion de categoria 452')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (453, N'Categoria 453', N'Descripcion de categoria 453')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (454, N'Categoria 454', N'Descripcion de categoria 454')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (455, N'Categoria 455', N'Descripcion de categoria 455')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (456, N'Categoria 456', N'Descripcion de categoria 456')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (457, N'Categoria 457', N'Descripcion de categoria 457')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (458, N'Categoria 458', N'Descripcion de categoria 458')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (459, N'Categoria 459', N'Descripcion de categoria 459')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (460, N'Categoria 460', N'Descripcion de categoria 460')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (461, N'Categoria 461', N'Descripcion de categoria 461')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (462, N'Categoria 462', N'Descripcion de categoria 462')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (463, N'Categoria 463', N'Descripcion de categoria 463')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (464, N'Categoria 464', N'Descripcion de categoria 464')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (465, N'Categoria 465', N'Descripcion de categoria 465')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (466, N'Categoria 466', N'Descripcion de categoria 466')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (467, N'Categoria 467', N'Descripcion de categoria 467')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (468, N'Categoria 468', N'Descripcion de categoria 468')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (469, N'Categoria 469', N'Descripcion de categoria 469')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (470, N'Categoria 470', N'Descripcion de categoria 470')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (471, N'Categoria 471', N'Descripcion de categoria 471')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (472, N'Categoria 472', N'Descripcion de categoria 472')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (473, N'Categoria 473', N'Descripcion de categoria 473')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (474, N'Categoria 474', N'Descripcion de categoria 474')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (475, N'Categoria 475', N'Descripcion de categoria 475')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (476, N'Categoria 476', N'Descripcion de categoria 476')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (477, N'Categoria 477', N'Descripcion de categoria 477')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (478, N'Categoria 478', N'Descripcion de categoria 478')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (479, N'Categoria 479', N'Descripcion de categoria 479')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (480, N'Categoria 480', N'Descripcion de categoria 480')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (481, N'Categoria 481', N'Descripcion de categoria 481')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (482, N'Categoria 482', N'Descripcion de categoria 482')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (483, N'Categoria 483', N'Descripcion de categoria 483')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (484, N'Categoria 484', N'Descripcion de categoria 484')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (485, N'Categoria 485', N'Descripcion de categoria 485')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (486, N'Categoria 486', N'Descripcion de categoria 486')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (487, N'Categoria 487', N'Descripcion de categoria 487')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (488, N'Categoria 488', N'Descripcion de categoria 488')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (489, N'Categoria 489', N'Descripcion de categoria 489')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (490, N'Categoria 490', N'Descripcion de categoria 490')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (491, N'Categoria 491', N'Descripcion de categoria 491')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (492, N'Categoria 492', N'Descripcion de categoria 492')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (493, N'Categoria 493', N'Descripcion de categoria 493')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (494, N'Categoria 494', N'Descripcion de categoria 494')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (495, N'Categoria 495', N'Descripcion de categoria 495')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (496, N'Categoria 496', N'Descripcion de categoria 496')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (497, N'Categoria 497', N'Descripcion de categoria 497')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (498, N'Categoria 498', N'Descripcion de categoria 498')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (499, N'Categoria 499', N'Descripcion de categoria 499')
GO
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (500, N'Categoria 500', N'Descripcion de categoria 500')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (501, N'Categoria 501', N'Descripcion de categoria 501')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (502, N'Categoria 502', N'Descripcion de categoria 502')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (503, N'Categoria 503', N'Descripcion de categoria 503')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (504, N'Categoria 504', N'Descripcion de categoria 504')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (505, N'Categoria 505', N'Descripcion de categoria 505')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (506, N'Categoria 506', N'Descripcion de categoria 506')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (507, N'Categoria 507', N'Descripcion de categoria 507')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (508, N'Categoria 508', N'Descripcion de categoria 508')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (509, N'Categoria 509', N'Descripcion de categoria 509')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (510, N'Categoria 510', N'Descripcion de categoria 510')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (511, N'Categoria 511', N'Descripcion de categoria 511')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (512, N'Categoria 512', N'Descripcion de categoria 512')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (513, N'Categoria 513', N'Descripcion de categoria 513')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (514, N'Categoria 514', N'Descripcion de categoria 514')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (515, N'Categoria 515', N'Descripcion de categoria 515')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (516, N'Categoria 516', N'Descripcion de categoria 516')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (517, N'Categoria 517', N'Descripcion de categoria 517')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (518, N'Categoria 518', N'Descripcion de categoria 518')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (519, N'Categoria 519', N'Descripcion de categoria 519')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (520, N'Categoria 520', N'Descripcion de categoria 520')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (521, N'Categoria 521', N'Descripcion de categoria 521')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (522, N'Categoria 522', N'Descripcion de categoria 522')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (523, N'Categoria 523', N'Descripcion de categoria 523')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (524, N'Categoria 524', N'Descripcion de categoria 524')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (525, N'Categoria 525', N'Descripcion de categoria 525')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (526, N'Categoria 526', N'Descripcion de categoria 526')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (527, N'Categoria 527', N'Descripcion de categoria 527')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (528, N'Categoria 528', N'Descripcion de categoria 528')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (529, N'Categoria 529', N'Descripcion de categoria 529')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (530, N'Categoria 530', N'Descripcion de categoria 530')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (531, N'Categoria 531', N'Descripcion de categoria 531')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (532, N'Categoria 532', N'Descripcion de categoria 532')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (533, N'Categoria 533', N'Descripcion de categoria 533')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (534, N'Categoria 534', N'Descripcion de categoria 534')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (535, N'Categoria 535', N'Descripcion de categoria 535')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (536, N'Categoria 536', N'Descripcion de categoria 536')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (537, N'Categoria 537', N'Descripcion de categoria 537')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (538, N'Categoria 538', N'Descripcion de categoria 538')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (539, N'Categoria 539', N'Descripcion de categoria 539')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (540, N'Categoria 540', N'Descripcion de categoria 540')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (541, N'Categoria 541', N'Descripcion de categoria 541')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (542, N'Categoria 542', N'Descripcion de categoria 542')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (543, N'Categoria 543', N'Descripcion de categoria 543')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (544, N'Categoria 544', N'Descripcion de categoria 544')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (545, N'Categoria 545', N'Descripcion de categoria 545')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (546, N'Categoria 546', N'Descripcion de categoria 546')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (547, N'Categoria 547', N'Descripcion de categoria 547')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (548, N'Categoria 548', N'Descripcion de categoria 548')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (549, N'Categoria 549', N'Descripcion de categoria 549')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (550, N'Categoria 550', N'Descripcion de categoria 550')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (551, N'Categoria 551', N'Descripcion de categoria 551')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (552, N'Categoria 552', N'Descripcion de categoria 552')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (553, N'Categoria 553', N'Descripcion de categoria 553')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (554, N'Categoria 554', N'Descripcion de categoria 554')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (555, N'Categoria 555', N'Descripcion de categoria 555')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (556, N'Categoria 556', N'Descripcion de categoria 556')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (557, N'Categoria 557', N'Descripcion de categoria 557')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (558, N'Categoria 558', N'Descripcion de categoria 558')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (559, N'Categoria 559', N'Descripcion de categoria 559')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (560, N'Categoria 560', N'Descripcion de categoria 560')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (561, N'Categoria 561', N'Descripcion de categoria 561')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (562, N'Categoria 562', N'Descripcion de categoria 562')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (563, N'Categoria 563', N'Descripcion de categoria 563')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (564, N'Categoria 564', N'Descripcion de categoria 564')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (565, N'Categoria 565', N'Descripcion de categoria 565')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (566, N'Categoria 566', N'Descripcion de categoria 566')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (567, N'Categoria 567', N'Descripcion de categoria 567')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (568, N'Categoria 568', N'Descripcion de categoria 568')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (569, N'Categoria 569', N'Descripcion de categoria 569')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (570, N'Categoria 570', N'Descripcion de categoria 570')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (571, N'Categoria 571', N'Descripcion de categoria 571')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (572, N'Categoria 572', N'Descripcion de categoria 572')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (573, N'Categoria 573', N'Descripcion de categoria 573')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (574, N'Categoria 574', N'Descripcion de categoria 574')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (575, N'Categoria 575', N'Descripcion de categoria 575')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (576, N'Categoria 576', N'Descripcion de categoria 576')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (577, N'Categoria 577', N'Descripcion de categoria 577')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (578, N'Categoria 578', N'Descripcion de categoria 578')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (579, N'Categoria 579', N'Descripcion de categoria 579')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (580, N'Categoria 580', N'Descripcion de categoria 580')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (581, N'Categoria 581', N'Descripcion de categoria 581')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (582, N'Categoria 582', N'Descripcion de categoria 582')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (583, N'Categoria 583', N'Descripcion de categoria 583')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (584, N'Categoria 584', N'Descripcion de categoria 584')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (585, N'Categoria 585', N'Descripcion de categoria 585')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (586, N'Categoria 586', N'Descripcion de categoria 586')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (587, N'Categoria 587', N'Descripcion de categoria 587')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (588, N'Categoria 588', N'Descripcion de categoria 588')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (589, N'Categoria 589', N'Descripcion de categoria 589')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (590, N'Categoria 590', N'Descripcion de categoria 590')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (591, N'Categoria 591', N'Descripcion de categoria 591')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (592, N'Categoria 592', N'Descripcion de categoria 592')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (593, N'Categoria 593', N'Descripcion de categoria 593')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (594, N'Categoria 594', N'Descripcion de categoria 594')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (595, N'Categoria 595', N'Descripcion de categoria 595')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (596, N'Categoria 596', N'Descripcion de categoria 596')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (597, N'Categoria 597', N'Descripcion de categoria 597')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (598, N'Categoria 598', N'Descripcion de categoria 598')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (599, N'Categoria 599', N'Descripcion de categoria 599')
GO
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (600, N'Categoria 600', N'Descripcion de categoria 600')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (601, N'Categoria 601', N'Descripcion de categoria 601')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (602, N'Categoria 602', N'Descripcion de categoria 602')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (603, N'Categoria 603', N'Descripcion de categoria 603')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (604, N'Categoria 604', N'Descripcion de categoria 604')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (605, N'Categoria 605', N'Descripcion de categoria 605')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (606, N'Categoria 606', N'Descripcion de categoria 606')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (607, N'Categoria 607', N'Descripcion de categoria 607')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (608, N'Categoria 608', N'Descripcion de categoria 608')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (609, N'Categoria 609', N'Descripcion de categoria 609')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (610, N'Categoria 610', N'Descripcion de categoria 610')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (611, N'Categoria 611', N'Descripcion de categoria 611')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (612, N'Categoria 612', N'Descripcion de categoria 612')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (613, N'Categoria 613', N'Descripcion de categoria 613')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (614, N'Categoria 614', N'Descripcion de categoria 614')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (615, N'Categoria 615', N'Descripcion de categoria 615')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (616, N'Categoria 616', N'Descripcion de categoria 616')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (617, N'Categoria 617', N'Descripcion de categoria 617')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (618, N'Categoria 618', N'Descripcion de categoria 618')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (619, N'Categoria 619', N'Descripcion de categoria 619')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (620, N'Categoria 620', N'Descripcion de categoria 620')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (621, N'Categoria 621', N'Descripcion de categoria 621')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (622, N'Categoria 622', N'Descripcion de categoria 622')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (623, N'Categoria 623', N'Descripcion de categoria 623')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (624, N'Categoria 624', N'Descripcion de categoria 624')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (625, N'Categoria 625', N'Descripcion de categoria 625')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (626, N'Categoria 626', N'Descripcion de categoria 626')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (627, N'Categoria 627', N'Descripcion de categoria 627')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (628, N'Categoria 628', N'Descripcion de categoria 628')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (629, N'Categoria 629', N'Descripcion de categoria 629')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (630, N'Categoria 630', N'Descripcion de categoria 630')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (631, N'Categoria 631', N'Descripcion de categoria 631')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (632, N'Categoria 632', N'Descripcion de categoria 632')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (633, N'Categoria 633', N'Descripcion de categoria 633')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (634, N'Categoria 634', N'Descripcion de categoria 634')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (635, N'Categoria 635', N'Descripcion de categoria 635')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (636, N'Categoria 636', N'Descripcion de categoria 636')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (637, N'Categoria 637', N'Descripcion de categoria 637')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (638, N'Categoria 638', N'Descripcion de categoria 638')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (639, N'Categoria 639', N'Descripcion de categoria 639')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (640, N'Categoria 640', N'Descripcion de categoria 640')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (641, N'Categoria 641', N'Descripcion de categoria 641')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (642, N'Categoria 642', N'Descripcion de categoria 642')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (643, N'Categoria 643', N'Descripcion de categoria 643')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (644, N'Categoria 644', N'Descripcion de categoria 644')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (645, N'Categoria 645', N'Descripcion de categoria 645')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (646, N'Categoria 646', N'Descripcion de categoria 646')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (647, N'Categoria 647', N'Descripcion de categoria 647')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (648, N'Categoria 648', N'Descripcion de categoria 648')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (649, N'Categoria 649', N'Descripcion de categoria 649')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (650, N'Categoria 650', N'Descripcion de categoria 650')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (651, N'Categoria 651', N'Descripcion de categoria 651')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (652, N'Categoria 652', N'Descripcion de categoria 652')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (653, N'Categoria 653', N'Descripcion de categoria 653')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (654, N'Categoria 654', N'Descripcion de categoria 654')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (655, N'Categoria 655', N'Descripcion de categoria 655')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (656, N'Categoria 656', N'Descripcion de categoria 656')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (657, N'Categoria 657', N'Descripcion de categoria 657')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (658, N'Categoria 658', N'Descripcion de categoria 658')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (659, N'Categoria 659', N'Descripcion de categoria 659')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (660, N'Categoria 660', N'Descripcion de categoria 660')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (661, N'Categoria 661', N'Descripcion de categoria 661')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (662, N'Categoria 662', N'Descripcion de categoria 662')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (663, N'Categoria 663', N'Descripcion de categoria 663')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (664, N'Categoria 664', N'Descripcion de categoria 664')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (665, N'Categoria 665', N'Descripcion de categoria 665')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (666, N'Categoria 666', N'Descripcion de categoria 666')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (667, N'Categoria 667', N'Descripcion de categoria 667')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (668, N'Categoria 668', N'Descripcion de categoria 668')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (669, N'Categoria 669', N'Descripcion de categoria 669')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (670, N'Categoria 670', N'Descripcion de categoria 670')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (671, N'Categoria 671', N'Descripcion de categoria 671')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (672, N'Categoria 672', N'Descripcion de categoria 672')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (673, N'Categoria 673', N'Descripcion de categoria 673')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (674, N'Categoria 674', N'Descripcion de categoria 674')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (675, N'Categoria 675', N'Descripcion de categoria 675')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (676, N'Categoria 676', N'Descripcion de categoria 676')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (677, N'Categoria 677', N'Descripcion de categoria 677')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (678, N'Categoria 678', N'Descripcion de categoria 678')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (679, N'Categoria 679', N'Descripcion de categoria 679')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (680, N'Categoria 680', N'Descripcion de categoria 680')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (681, N'Categoria 681', N'Descripcion de categoria 681')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (682, N'Categoria 682', N'Descripcion de categoria 682')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (683, N'Categoria 683', N'Descripcion de categoria 683')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (684, N'Categoria 684', N'Descripcion de categoria 684')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (685, N'Categoria 685', N'Descripcion de categoria 685')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (686, N'Categoria 686', N'Descripcion de categoria 686')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (687, N'Categoria 687', N'Descripcion de categoria 687')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (688, N'Categoria 688', N'Descripcion de categoria 688')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (689, N'Categoria 689', N'Descripcion de categoria 689')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (690, N'Categoria 690', N'Descripcion de categoria 690')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (691, N'Categoria 691', N'Descripcion de categoria 691')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (692, N'Categoria 692', N'Descripcion de categoria 692')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (693, N'Categoria 693', N'Descripcion de categoria 693')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (694, N'Categoria 694', N'Descripcion de categoria 694')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (695, N'Categoria 695', N'Descripcion de categoria 695')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (696, N'Categoria 696', N'Descripcion de categoria 696')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (697, N'Categoria 697', N'Descripcion de categoria 697')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (698, N'Categoria 698', N'Descripcion de categoria 698')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (699, N'Categoria 699', N'Descripcion de categoria 699')
GO
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (700, N'Categoria 700', N'Descripcion de categoria 700')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (701, N'Categoria 701', N'Descripcion de categoria 701')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (702, N'Categoria 702', N'Descripcion de categoria 702')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (703, N'Categoria 703', N'Descripcion de categoria 703')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (704, N'Categoria 704', N'Descripcion de categoria 704')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (705, N'Categoria 705', N'Descripcion de categoria 705')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (706, N'Categoria 706', N'Descripcion de categoria 706')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (707, N'Categoria 707', N'Descripcion de categoria 707')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (708, N'Categoria 708', N'Descripcion de categoria 708')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (709, N'Categoria 709', N'Descripcion de categoria 709')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (710, N'Categoria 710', N'Descripcion de categoria 710')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (711, N'Categoria 711', N'Descripcion de categoria 711')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (712, N'Categoria 712', N'Descripcion de categoria 712')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (713, N'Categoria 713', N'Descripcion de categoria 713')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (714, N'Categoria 714', N'Descripcion de categoria 714')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (715, N'Categoria 715', N'Descripcion de categoria 715')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (716, N'Categoria 716', N'Descripcion de categoria 716')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (717, N'Categoria 717', N'Descripcion de categoria 717')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (718, N'Categoria 718', N'Descripcion de categoria 718')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (719, N'Categoria 719', N'Descripcion de categoria 719')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (720, N'Categoria 720', N'Descripcion de categoria 720')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (721, N'Categoria 721', N'Descripcion de categoria 721')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (722, N'Categoria 722', N'Descripcion de categoria 722')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (723, N'Categoria 723', N'Descripcion de categoria 723')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (724, N'Categoria 724', N'Descripcion de categoria 724')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (725, N'Categoria 725', N'Descripcion de categoria 725')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (726, N'Categoria 726', N'Descripcion de categoria 726')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (727, N'Categoria 727', N'Descripcion de categoria 727')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (728, N'Categoria 728', N'Descripcion de categoria 728')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (729, N'Categoria 729', N'Descripcion de categoria 729')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (730, N'Categoria 730', N'Descripcion de categoria 730')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (731, N'Categoria 731', N'Descripcion de categoria 731')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (732, N'Categoria 732', N'Descripcion de categoria 732')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (733, N'Categoria 733', N'Descripcion de categoria 733')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (734, N'Categoria 734', N'Descripcion de categoria 734')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (735, N'Categoria 735', N'Descripcion de categoria 735')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (736, N'Categoria 736', N'Descripcion de categoria 736')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (737, N'Categoria 737', N'Descripcion de categoria 737')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (738, N'Categoria 738', N'Descripcion de categoria 738')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (739, N'Categoria 739', N'Descripcion de categoria 739')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (740, N'Categoria 740', N'Descripcion de categoria 740')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (741, N'Categoria 741', N'Descripcion de categoria 741')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (742, N'Categoria 742', N'Descripcion de categoria 742')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (743, N'Categoria 743', N'Descripcion de categoria 743')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (744, N'Categoria 744', N'Descripcion de categoria 744')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (745, N'Categoria 745', N'Descripcion de categoria 745')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (746, N'Categoria 746', N'Descripcion de categoria 746')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (747, N'Categoria 747', N'Descripcion de categoria 747')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (748, N'Categoria 748', N'Descripcion de categoria 748')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (749, N'Categoria 749', N'Descripcion de categoria 749')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (750, N'Categoria 750', N'Descripcion de categoria 750')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (751, N'Categoria 751', N'Descripcion de categoria 751')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (752, N'Categoria 752', N'Descripcion de categoria 752')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (753, N'Categoria 753', N'Descripcion de categoria 753')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (754, N'Categoria 754', N'Descripcion de categoria 754')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (755, N'Categoria 755', N'Descripcion de categoria 755')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (756, N'Categoria 756', N'Descripcion de categoria 756')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (757, N'Categoria 757', N'Descripcion de categoria 757')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (758, N'Categoria 758', N'Descripcion de categoria 758')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (759, N'Categoria 759', N'Descripcion de categoria 759')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (760, N'Categoria 760', N'Descripcion de categoria 760')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (761, N'Categoria 761', N'Descripcion de categoria 761')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (762, N'Categoria 762', N'Descripcion de categoria 762')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (763, N'Categoria 763', N'Descripcion de categoria 763')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (764, N'Categoria 764', N'Descripcion de categoria 764')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (765, N'Categoria 765', N'Descripcion de categoria 765')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (766, N'Categoria 766', N'Descripcion de categoria 766')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (767, N'Categoria 767', N'Descripcion de categoria 767')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (768, N'Categoria 768', N'Descripcion de categoria 768')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (769, N'Categoria 769', N'Descripcion de categoria 769')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (770, N'Categoria 770', N'Descripcion de categoria 770')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (771, N'Categoria 771', N'Descripcion de categoria 771')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (772, N'Categoria 772', N'Descripcion de categoria 772')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (773, N'Categoria 773', N'Descripcion de categoria 773')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (774, N'Categoria 774', N'Descripcion de categoria 774')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (775, N'Categoria 775', N'Descripcion de categoria 775')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (776, N'Categoria 776', N'Descripcion de categoria 776')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (777, N'Categoria 777', N'Descripcion de categoria 777')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (778, N'Categoria 778', N'Descripcion de categoria 778')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (779, N'Categoria 779', N'Descripcion de categoria 779')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (780, N'Categoria 780', N'Descripcion de categoria 780')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (781, N'Categoria 781', N'Descripcion de categoria 781')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (782, N'Categoria 782', N'Descripcion de categoria 782')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (783, N'Categoria 783', N'Descripcion de categoria 783')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (784, N'Categoria 784', N'Descripcion de categoria 784')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (785, N'Categoria 785', N'Descripcion de categoria 785')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (786, N'Categoria 786', N'Descripcion de categoria 786')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (787, N'Categoria 787', N'Descripcion de categoria 787')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (788, N'Categoria 788', N'Descripcion de categoria 788')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (789, N'Categoria 789', N'Descripcion de categoria 789')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (790, N'Categoria 790', N'Descripcion de categoria 790')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (791, N'Categoria 791', N'Descripcion de categoria 791')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (792, N'Categoria 792', N'Descripcion de categoria 792')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (793, N'Categoria 793', N'Descripcion de categoria 793')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (794, N'Categoria 794', N'Descripcion de categoria 794')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (795, N'Categoria 795', N'Descripcion de categoria 795')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (796, N'Categoria 796', N'Descripcion de categoria 796')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (797, N'Categoria 797', N'Descripcion de categoria 797')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (798, N'Categoria 798', N'Descripcion de categoria 798')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (799, N'Categoria 799', N'Descripcion de categoria 799')
GO
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (800, N'Categoria 800', N'Descripcion de categoria 800')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (801, N'Categoria 801', N'Descripcion de categoria 801')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (802, N'Categoria 802', N'Descripcion de categoria 802')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (803, N'Categoria 803', N'Descripcion de categoria 803')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (804, N'Categoria 804', N'Descripcion de categoria 804')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (805, N'Categoria 805', N'Descripcion de categoria 805')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (806, N'Categoria 806', N'Descripcion de categoria 806')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (807, N'Categoria 807', N'Descripcion de categoria 807')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (808, N'Categoria 808', N'Descripcion de categoria 808')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (809, N'Categoria 809', N'Descripcion de categoria 809')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (810, N'Categoria 810', N'Descripcion de categoria 810')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (811, N'Categoria 811', N'Descripcion de categoria 811')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (812, N'Categoria 812', N'Descripcion de categoria 812')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (813, N'Categoria 813', N'Descripcion de categoria 813')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (814, N'Categoria 814', N'Descripcion de categoria 814')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (815, N'Categoria 815', N'Descripcion de categoria 815')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (816, N'Categoria 816', N'Descripcion de categoria 816')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (817, N'Categoria 817', N'Descripcion de categoria 817')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (818, N'Categoria 818', N'Descripcion de categoria 818')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (819, N'Categoria 819', N'Descripcion de categoria 819')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (820, N'Categoria 820', N'Descripcion de categoria 820')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (821, N'Categoria 821', N'Descripcion de categoria 821')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (822, N'Categoria 822', N'Descripcion de categoria 822')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (823, N'Categoria 823', N'Descripcion de categoria 823')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (824, N'Categoria 824', N'Descripcion de categoria 824')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (825, N'Categoria 825', N'Descripcion de categoria 825')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (826, N'Categoria 826', N'Descripcion de categoria 826')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (827, N'Categoria 827', N'Descripcion de categoria 827')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (828, N'Categoria 828', N'Descripcion de categoria 828')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (829, N'Categoria 829', N'Descripcion de categoria 829')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (830, N'Categoria 830', N'Descripcion de categoria 830')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (831, N'Categoria 831', N'Descripcion de categoria 831')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (832, N'Categoria 832', N'Descripcion de categoria 832')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (833, N'Categoria 833', N'Descripcion de categoria 833')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (834, N'Categoria 834', N'Descripcion de categoria 834')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (835, N'Categoria 835', N'Descripcion de categoria 835')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (836, N'Categoria 836', N'Descripcion de categoria 836')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (837, N'Categoria 837', N'Descripcion de categoria 837')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (838, N'Categoria 838', N'Descripcion de categoria 838')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (839, N'Categoria 839', N'Descripcion de categoria 839')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (840, N'Categoria 840', N'Descripcion de categoria 840')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (841, N'Categoria 841', N'Descripcion de categoria 841')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (842, N'Categoria 842', N'Descripcion de categoria 842')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (843, N'Categoria 843', N'Descripcion de categoria 843')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (844, N'Categoria 844', N'Descripcion de categoria 844')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (845, N'Categoria 845', N'Descripcion de categoria 845')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (846, N'Categoria 846', N'Descripcion de categoria 846')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (847, N'Categoria 847', N'Descripcion de categoria 847')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (848, N'Categoria 848', N'Descripcion de categoria 848')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (849, N'Categoria 849', N'Descripcion de categoria 849')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (850, N'Categoria 850', N'Descripcion de categoria 850')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (851, N'Categoria 851', N'Descripcion de categoria 851')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (852, N'Categoria 852', N'Descripcion de categoria 852')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (853, N'Categoria 853', N'Descripcion de categoria 853')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (854, N'Categoria 854', N'Descripcion de categoria 854')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (855, N'Categoria 855', N'Descripcion de categoria 855')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (856, N'Categoria 856', N'Descripcion de categoria 856')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (857, N'Categoria 857', N'Descripcion de categoria 857')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (858, N'Categoria 858', N'Descripcion de categoria 858')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (859, N'Categoria 859', N'Descripcion de categoria 859')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (860, N'Categoria 860', N'Descripcion de categoria 860')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (861, N'Categoria 861', N'Descripcion de categoria 861')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (862, N'Categoria 862', N'Descripcion de categoria 862')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (863, N'Categoria 863', N'Descripcion de categoria 863')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (864, N'Categoria 864', N'Descripcion de categoria 864')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (865, N'Categoria 865', N'Descripcion de categoria 865')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (866, N'Categoria 866', N'Descripcion de categoria 866')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (867, N'Categoria 867', N'Descripcion de categoria 867')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (868, N'Categoria 868', N'Descripcion de categoria 868')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (869, N'Categoria 869', N'Descripcion de categoria 869')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (870, N'Categoria 870', N'Descripcion de categoria 870')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (871, N'Categoria 871', N'Descripcion de categoria 871')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (872, N'Categoria 872', N'Descripcion de categoria 872')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (873, N'Categoria 873', N'Descripcion de categoria 873')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (874, N'Categoria 874', N'Descripcion de categoria 874')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (875, N'Categoria 875', N'Descripcion de categoria 875')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (876, N'Categoria 876', N'Descripcion de categoria 876')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (877, N'Categoria 877', N'Descripcion de categoria 877')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (878, N'Categoria 878', N'Descripcion de categoria 878')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (879, N'Categoria 879', N'Descripcion de categoria 879')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (880, N'Categoria 880', N'Descripcion de categoria 880')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (881, N'Categoria 881', N'Descripcion de categoria 881')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (882, N'Categoria 882', N'Descripcion de categoria 882')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (883, N'Categoria 883', N'Descripcion de categoria 883')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (884, N'Categoria 884', N'Descripcion de categoria 884')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (885, N'Categoria 885', N'Descripcion de categoria 885')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (886, N'Categoria 886', N'Descripcion de categoria 886')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (887, N'Categoria 887', N'Descripcion de categoria 887')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (888, N'Categoria 888', N'Descripcion de categoria 888')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (889, N'Categoria 889', N'Descripcion de categoria 889')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (890, N'Categoria 890', N'Descripcion de categoria 890')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (891, N'Categoria 891', N'Descripcion de categoria 891')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (892, N'Categoria 892', N'Descripcion de categoria 892')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (893, N'Categoria 893', N'Descripcion de categoria 893')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (894, N'Categoria 894', N'Descripcion de categoria 894')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (895, N'Categoria 895', N'Descripcion de categoria 895')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (896, N'Categoria 896', N'Descripcion de categoria 896')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (897, N'Categoria 897', N'Descripcion de categoria 897')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (898, N'Categoria 898', N'Descripcion de categoria 898')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (899, N'Categoria 899', N'Descripcion de categoria 899')
GO
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (900, N'Categoria 900', N'Descripcion de categoria 900')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (901, N'Categoria 901', N'Descripcion de categoria 901')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (902, N'Categoria 902', N'Descripcion de categoria 902')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (903, N'Categoria 903', N'Descripcion de categoria 903')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (904, N'Categoria 904', N'Descripcion de categoria 904')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (905, N'Categoria 905', N'Descripcion de categoria 905')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (906, N'Categoria 906', N'Descripcion de categoria 906')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (907, N'Categoria 907', N'Descripcion de categoria 907')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (908, N'Categoria 908', N'Descripcion de categoria 908')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (909, N'Categoria 909', N'Descripcion de categoria 909')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (910, N'Categoria 910', N'Descripcion de categoria 910')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (911, N'Categoria 911', N'Descripcion de categoria 911')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (912, N'Categoria 912', N'Descripcion de categoria 912')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (913, N'Categoria 913', N'Descripcion de categoria 913')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (914, N'Categoria 914', N'Descripcion de categoria 914')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (915, N'Categoria 915', N'Descripcion de categoria 915')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (916, N'Categoria 916', N'Descripcion de categoria 916')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (917, N'Categoria 917', N'Descripcion de categoria 917')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (918, N'Categoria 918', N'Descripcion de categoria 918')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (919, N'Categoria 919', N'Descripcion de categoria 919')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (920, N'Categoria 920', N'Descripcion de categoria 920')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (921, N'Categoria 921', N'Descripcion de categoria 921')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (922, N'Categoria 922', N'Descripcion de categoria 922')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (923, N'Categoria 923', N'Descripcion de categoria 923')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (924, N'Categoria 924', N'Descripcion de categoria 924')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (925, N'Categoria 925', N'Descripcion de categoria 925')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (926, N'Categoria 926', N'Descripcion de categoria 926')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (927, N'Categoria 927', N'Descripcion de categoria 927')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (928, N'Categoria 928', N'Descripcion de categoria 928')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (929, N'Categoria 929', N'Descripcion de categoria 929')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (930, N'Categoria 930', N'Descripcion de categoria 930')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (931, N'Categoria 931', N'Descripcion de categoria 931')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (932, N'Categoria 932', N'Descripcion de categoria 932')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (933, N'Categoria 933', N'Descripcion de categoria 933')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (934, N'Categoria 934', N'Descripcion de categoria 934')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (935, N'Categoria 935', N'Descripcion de categoria 935')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (936, N'Categoria 936', N'Descripcion de categoria 936')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (937, N'Categoria 937', N'Descripcion de categoria 937')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (938, N'Categoria 938', N'Descripcion de categoria 938')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (939, N'Categoria 939', N'Descripcion de categoria 939')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (940, N'Categoria 940', N'Descripcion de categoria 940')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (941, N'Categoria 941', N'Descripcion de categoria 941')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (942, N'Categoria 942', N'Descripcion de categoria 942')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (943, N'Categoria 943', N'Descripcion de categoria 943')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (944, N'Categoria 944', N'Descripcion de categoria 944')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (945, N'Categoria 945', N'Descripcion de categoria 945')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (946, N'Categoria 946', N'Descripcion de categoria 946')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (947, N'Categoria 947', N'Descripcion de categoria 947')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (948, N'Categoria 948', N'Descripcion de categoria 948')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (949, N'Categoria 949', N'Descripcion de categoria 949')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (950, N'Categoria 950', N'Descripcion de categoria 950')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (951, N'Categoria 951', N'Descripcion de categoria 951')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (952, N'Categoria 952', N'Descripcion de categoria 952')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (953, N'Categoria 953', N'Descripcion de categoria 953')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (954, N'Categoria 954', N'Descripcion de categoria 954')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (955, N'Categoria 955', N'Descripcion de categoria 955')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (956, N'Categoria 956', N'Descripcion de categoria 956')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (957, N'Categoria 957', N'Descripcion de categoria 957')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (958, N'Categoria 958', N'Descripcion de categoria 958')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (959, N'Categoria 959', N'Descripcion de categoria 959')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (960, N'Categoria 960', N'Descripcion de categoria 960')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (961, N'Categoria 961', N'Descripcion de categoria 961')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (962, N'Categoria 962', N'Descripcion de categoria 962')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (963, N'Categoria 963', N'Descripcion de categoria 963')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (964, N'Categoria 964', N'Descripcion de categoria 964')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (965, N'Categoria 965', N'Descripcion de categoria 965')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (966, N'Categoria 966', N'Descripcion de categoria 966')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (967, N'Categoria 967', N'Descripcion de categoria 967')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (968, N'Categoria 968', N'Descripcion de categoria 968')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (969, N'Categoria 969', N'Descripcion de categoria 969')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (970, N'Categoria 970', N'Descripcion de categoria 970')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (971, N'Categoria 971', N'Descripcion de categoria 971')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (972, N'Categoria 972', N'Descripcion de categoria 972')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (973, N'Categoria 973', N'Descripcion de categoria 973')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (974, N'Categoria 974', N'Descripcion de categoria 974')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (975, N'Categoria 975', N'Descripcion de categoria 975')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (976, N'Categoria 976', N'Descripcion de categoria 976')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (977, N'Categoria 977', N'Descripcion de categoria 977')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (978, N'Categoria 978', N'Descripcion de categoria 978')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (979, N'Categoria 979', N'Descripcion de categoria 979')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (980, N'Categoria 980', N'Descripcion de categoria 980')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (981, N'Categoria 981', N'Descripcion de categoria 981')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (982, N'Categoria 982', N'Descripcion de categoria 982')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (983, N'Categoria 983', N'Descripcion de categoria 983')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (984, N'Categoria 984', N'Descripcion de categoria 984')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (985, N'Categoria 985', N'Descripcion de categoria 985')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (986, N'Categoria 986', N'Descripcion de categoria 986')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (987, N'Categoria 987', N'Descripcion de categoria 987')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (988, N'Categoria 988', N'Descripcion de categoria 988')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (989, N'Categoria 989', N'Descripcion de categoria 989')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (990, N'Categoria 990', N'Descripcion de categoria 990')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (991, N'Categoria 991', N'Descripcion de categoria 991')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (992, N'Categoria 992', N'Descripcion de categoria 992')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (993, N'Categoria 993', N'Descripcion de categoria 993')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (994, N'Categoria 994', N'Descripcion de categoria 994')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (995, N'Categoria 995', N'Descripcion de categoria 995')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (996, N'Categoria 996', N'Descripcion de categoria 996')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (997, N'Categoria 997', N'Descripcion de categoria 997')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (998, N'Categoria 998', N'Descripcion de categoria 998')
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (999, N'Categoria 999', N'Descripcion de categoria 999')
GO
INSERT [dbo].[Categoria] ([Id_Categoria], [NombreCategoria], [DescripcionCategoria]) VALUES (1000, N'Categoria 1000', N'Descripcion de categoria 1000')
SET IDENTITY_INSERT [dbo].[Categoria] OFF
SET IDENTITY_INSERT [dbo].[Cliente] ON 

INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (1, N'Nombre1', N'Apellido1', N'1000000001', N'Direccion 1                             ', N'2000001', N'clienteapellido1@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (2, N'Nombre2', N'Apellido2', N'1000000002', N'Direccion 2                             ', N'2000002', N'clienteapellido2@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (3, N'Nombre3', N'Apellido3', N'1000000003', N'Direccion 3                             ', N'2000003', N'clienteapellido3@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (4, N'Nombre4', N'Apellido4', N'1000000004', N'Direccion 4                             ', N'2000004', N'clienteapellido4@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (5, N'Nombre5', N'Apellido5', N'1000000005', N'Direccion 5                             ', N'2000005', N'clienteapellido5@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (6, N'Nombre6', N'Apellido6', N'1000000006', N'Direccion 6                             ', N'2000006', N'clienteapellido6@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (7, N'Nombre7', N'Apellido7', N'1000000007', N'Direccion 7                             ', N'2000007', N'clienteapellido7@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (8, N'Nombre8', N'Apellido8', N'1000000008', N'Direccion 8                             ', N'2000008', N'clienteapellido8@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (9, N'Nombre9', N'Apellido9', N'1000000009', N'Direccion 9                             ', N'2000009', N'clienteapellido9@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (10, N'Nombre10', N'Apellido10', N'1000000010', N'Direccion 10                            ', N'2000010', N'clienteapellido10@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (11, N'Nombre11', N'Apellido11', N'1000000011', N'Direccion 11                            ', N'2000011', N'clienteapellido11@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (12, N'Nombre12', N'Apellido12', N'1000000012', N'Direccion 12                            ', N'2000012', N'clienteapellido12@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (13, N'Nombre13', N'Apellido13', N'1000000013', N'Direccion 13                            ', N'2000013', N'clienteapellido13@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (14, N'Nombre14', N'Apellido14', N'1000000014', N'Direccion 14                            ', N'2000014', N'clienteapellido14@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (15, N'Nombre15', N'Apellido15', N'1000000015', N'Direccion 15                            ', N'2000015', N'clienteapellido15@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (16, N'Nombre16', N'Apellido16', N'1000000016', N'Direccion 16                            ', N'2000016', N'clienteapellido16@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (17, N'Nombre17', N'Apellido17', N'1000000017', N'Direccion 17                            ', N'2000017', N'clienteapellido17@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (18, N'Nombre18', N'Apellido18', N'1000000018', N'Direccion 18                            ', N'2000018', N'clienteapellido18@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (19, N'Nombre19', N'Apellido19', N'1000000019', N'Direccion 19                            ', N'2000019', N'clienteapellido19@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (20, N'Nombre20', N'Apellido20', N'1000000020', N'Direccion 20                            ', N'2000020', N'clienteapellido20@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (21, N'Nombre21', N'Apellido21', N'1000000021', N'Direccion 21                            ', N'2000021', N'clienteapellido21@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (22, N'Nombre22', N'Apellido22', N'1000000022', N'Direccion 22                            ', N'2000022', N'clienteapellido22@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (23, N'Nombre23', N'Apellido23', N'1000000023', N'Direccion 23                            ', N'2000023', N'clienteapellido23@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (24, N'Nombre24', N'Apellido24', N'1000000024', N'Direccion 24                            ', N'2000024', N'clienteapellido24@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (25, N'Nombre25', N'Apellido25', N'1000000025', N'Direccion 25                            ', N'2000025', N'clienteapellido25@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (26, N'Nombre26', N'Apellido26', N'1000000026', N'Direccion 26                            ', N'2000026', N'clienteapellido26@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (27, N'Nombre27', N'Apellido27', N'1000000027', N'Direccion 27                            ', N'2000027', N'clienteapellido27@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (28, N'Nombre28', N'Apellido28', N'1000000028', N'Direccion 28                            ', N'2000028', N'clienteapellido28@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (29, N'Nombre29', N'Apellido29', N'1000000029', N'Direccion 29                            ', N'2000029', N'clienteapellido29@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (30, N'Nombre30', N'Apellido30', N'1000000030', N'Direccion 30                            ', N'2000030', N'clienteapellido30@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (31, N'Nombre31', N'Apellido31', N'1000000031', N'Direccion 31                            ', N'2000031', N'clienteapellido31@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (32, N'Nombre32', N'Apellido32', N'1000000032', N'Direccion 32                            ', N'2000032', N'clienteapellido32@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (33, N'Nombre33', N'Apellido33', N'1000000033', N'Direccion 33                            ', N'2000033', N'clienteapellido33@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (34, N'Nombre34', N'Apellido34', N'1000000034', N'Direccion 34                            ', N'2000034', N'clienteapellido34@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (35, N'Nombre35', N'Apellido35', N'1000000035', N'Direccion 35                            ', N'2000035', N'clienteapellido35@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (36, N'Nombre36', N'Apellido36', N'1000000036', N'Direccion 36                            ', N'2000036', N'clienteapellido36@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (37, N'Nombre37', N'Apellido37', N'1000000037', N'Direccion 37                            ', N'2000037', N'clienteapellido37@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (38, N'Nombre38', N'Apellido38', N'1000000038', N'Direccion 38                            ', N'2000038', N'clienteapellido38@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (39, N'Nombre39', N'Apellido39', N'1000000039', N'Direccion 39                            ', N'2000039', N'clienteapellido39@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (40, N'Nombre40', N'Apellido40', N'1000000040', N'Direccion 40                            ', N'2000040', N'clienteapellido40@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (41, N'Nombre41', N'Apellido41', N'1000000041', N'Direccion 41                            ', N'2000041', N'clienteapellido41@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (42, N'Nombre42', N'Apellido42', N'1000000042', N'Direccion 42                            ', N'2000042', N'clienteapellido42@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (43, N'Nombre43', N'Apellido43', N'1000000043', N'Direccion 43                            ', N'2000043', N'clienteapellido43@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (44, N'Nombre44', N'Apellido44', N'1000000044', N'Direccion 44                            ', N'2000044', N'clienteapellido44@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (45, N'Nombre45', N'Apellido45', N'1000000045', N'Direccion 45                            ', N'2000045', N'clienteapellido45@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (46, N'Nombre46', N'Apellido46', N'1000000046', N'Direccion 46                            ', N'2000046', N'clienteapellido46@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (47, N'Nombre47', N'Apellido47', N'1000000047', N'Direccion 47                            ', N'2000047', N'clienteapellido47@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (48, N'Nombre48', N'Apellido48', N'1000000048', N'Direccion 48                            ', N'2000048', N'clienteapellido48@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (49, N'Nombre49', N'Apellido49', N'1000000049', N'Direccion 49                            ', N'2000049', N'clienteapellido49@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (50, N'Nombre50', N'Apellido50', N'1000000050', N'Direccion 50                            ', N'2000050', N'clienteapellido50@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (51, N'Nombre51', N'Apellido51', N'1000000051', N'Direccion 51                            ', N'2000051', N'clienteapellido51@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (52, N'Nombre52', N'Apellido52', N'1000000052', N'Direccion 52                            ', N'2000052', N'clienteapellido52@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (53, N'Nombre53', N'Apellido53', N'1000000053', N'Direccion 53                            ', N'2000053', N'clienteapellido53@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (54, N'Nombre54', N'Apellido54', N'1000000054', N'Direccion 54                            ', N'2000054', N'clienteapellido54@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (55, N'Nombre55', N'Apellido55', N'1000000055', N'Direccion 55                            ', N'2000055', N'clienteapellido55@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (56, N'Nombre56', N'Apellido56', N'1000000056', N'Direccion 56                            ', N'2000056', N'clienteapellido56@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (57, N'Nombre57', N'Apellido57', N'1000000057', N'Direccion 57                            ', N'2000057', N'clienteapellido57@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (58, N'Nombre58', N'Apellido58', N'1000000058', N'Direccion 58                            ', N'2000058', N'clienteapellido58@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (59, N'Nombre59', N'Apellido59', N'1000000059', N'Direccion 59                            ', N'2000059', N'clienteapellido59@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (60, N'Nombre60', N'Apellido60', N'1000000060', N'Direccion 60                            ', N'2000060', N'clienteapellido60@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (61, N'Nombre61', N'Apellido61', N'1000000061', N'Direccion 61                            ', N'2000061', N'clienteapellido61@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (62, N'Nombre62', N'Apellido62', N'1000000062', N'Direccion 62                            ', N'2000062', N'clienteapellido62@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (63, N'Nombre63', N'Apellido63', N'1000000063', N'Direccion 63                            ', N'2000063', N'clienteapellido63@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (64, N'Nombre64', N'Apellido64', N'1000000064', N'Direccion 64                            ', N'2000064', N'clienteapellido64@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (65, N'Nombre65', N'Apellido65', N'1000000065', N'Direccion 65                            ', N'2000065', N'clienteapellido65@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (66, N'Nombre66', N'Apellido66', N'1000000066', N'Direccion 66                            ', N'2000066', N'clienteapellido66@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (67, N'Nombre67', N'Apellido67', N'1000000067', N'Direccion 67                            ', N'2000067', N'clienteapellido67@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (68, N'Nombre68', N'Apellido68', N'1000000068', N'Direccion 68                            ', N'2000068', N'clienteapellido68@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (69, N'Nombre69', N'Apellido69', N'1000000069', N'Direccion 69                            ', N'2000069', N'clienteapellido69@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (70, N'Nombre70', N'Apellido70', N'1000000070', N'Direccion 70                            ', N'2000070', N'clienteapellido70@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (71, N'Nombre71', N'Apellido71', N'1000000071', N'Direccion 71                            ', N'2000071', N'clienteapellido71@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (72, N'Nombre72', N'Apellido72', N'1000000072', N'Direccion 72                            ', N'2000072', N'clienteapellido72@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (73, N'Nombre73', N'Apellido73', N'1000000073', N'Direccion 73                            ', N'2000073', N'clienteapellido73@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (74, N'Nombre74', N'Apellido74', N'1000000074', N'Direccion 74                            ', N'2000074', N'clienteapellido74@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (75, N'Nombre75', N'Apellido75', N'1000000075', N'Direccion 75                            ', N'2000075', N'clienteapellido75@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (76, N'Nombre76', N'Apellido76', N'1000000076', N'Direccion 76                            ', N'2000076', N'clienteapellido76@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (77, N'Nombre77', N'Apellido77', N'1000000077', N'Direccion 77                            ', N'2000077', N'clienteapellido77@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (78, N'Nombre78', N'Apellido78', N'1000000078', N'Direccion 78                            ', N'2000078', N'clienteapellido78@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (79, N'Nombre79', N'Apellido79', N'1000000079', N'Direccion 79                            ', N'2000079', N'clienteapellido79@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (80, N'Nombre80', N'Apellido80', N'1000000080', N'Direccion 80                            ', N'2000080', N'clienteapellido80@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (81, N'Nombre81', N'Apellido81', N'1000000081', N'Direccion 81                            ', N'2000081', N'clienteapellido81@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (82, N'Nombre82', N'Apellido82', N'1000000082', N'Direccion 82                            ', N'2000082', N'clienteapellido82@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (83, N'Nombre83', N'Apellido83', N'1000000083', N'Direccion 83                            ', N'2000083', N'clienteapellido83@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (84, N'Nombre84', N'Apellido84', N'1000000084', N'Direccion 84                            ', N'2000084', N'clienteapellido84@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (85, N'Nombre85', N'Apellido85', N'1000000085', N'Direccion 85                            ', N'2000085', N'clienteapellido85@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (86, N'Nombre86', N'Apellido86', N'1000000086', N'Direccion 86                            ', N'2000086', N'clienteapellido86@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (87, N'Nombre87', N'Apellido87', N'1000000087', N'Direccion 87                            ', N'2000087', N'clienteapellido87@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (88, N'Nombre88', N'Apellido88', N'1000000088', N'Direccion 88                            ', N'2000088', N'clienteapellido88@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (89, N'Nombre89', N'Apellido89', N'1000000089', N'Direccion 89                            ', N'2000089', N'clienteapellido89@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (90, N'Nombre90', N'Apellido90', N'1000000090', N'Direccion 90                            ', N'2000090', N'clienteapellido90@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (91, N'Nombre91', N'Apellido91', N'1000000091', N'Direccion 91                            ', N'2000091', N'clienteapellido91@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (92, N'Nombre92', N'Apellido92', N'1000000092', N'Direccion 92                            ', N'2000092', N'clienteapellido92@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (93, N'Nombre93', N'Apellido93', N'1000000093', N'Direccion 93                            ', N'2000093', N'clienteapellido93@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (94, N'Nombre94', N'Apellido94', N'1000000094', N'Direccion 94                            ', N'2000094', N'clienteapellido94@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (95, N'Nombre95', N'Apellido95', N'1000000095', N'Direccion 95                            ', N'2000095', N'clienteapellido95@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (96, N'Nombre96', N'Apellido96', N'1000000096', N'Direccion 96                            ', N'2000096', N'clienteapellido96@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (97, N'Nombre97', N'Apellido97', N'1000000097', N'Direccion 97                            ', N'2000097', N'clienteapellido97@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (98, N'Nombre98', N'Apellido98', N'1000000098', N'Direccion 98                            ', N'2000098', N'clienteapellido98@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (99, N'Nombre99', N'Apellido99', N'1000000099', N'Direccion 99                            ', N'2000099', N'clienteapellido99@udlanet.ec')
GO
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (100, N'Nombre100', N'Apellido100', N'1000000100', N'Direccion 100                           ', N'2000100', N'clienteapellido100@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (101, N'Nombre101', N'Apellido101', N'1000000101', N'Direccion 101                           ', N'2000101', N'clienteapellido101@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (102, N'Nombre102', N'Apellido102', N'1000000102', N'Direccion 102                           ', N'2000102', N'clienteapellido102@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (103, N'Nombre103', N'Apellido103', N'1000000103', N'Direccion 103                           ', N'2000103', N'clienteapellido103@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (104, N'Nombre104', N'Apellido104', N'1000000104', N'Direccion 104                           ', N'2000104', N'clienteapellido104@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (105, N'Nombre105', N'Apellido105', N'1000000105', N'Direccion 105                           ', N'2000105', N'clienteapellido105@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (106, N'Nombre106', N'Apellido106', N'1000000106', N'Direccion 106                           ', N'2000106', N'clienteapellido106@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (107, N'Nombre107', N'Apellido107', N'1000000107', N'Direccion 107                           ', N'2000107', N'clienteapellido107@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (108, N'Nombre108', N'Apellido108', N'1000000108', N'Direccion 108                           ', N'2000108', N'clienteapellido108@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (109, N'Nombre109', N'Apellido109', N'1000000109', N'Direccion 109                           ', N'2000109', N'clienteapellido109@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (110, N'Nombre110', N'Apellido110', N'1000000110', N'Direccion 110                           ', N'2000110', N'clienteapellido110@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (111, N'Nombre111', N'Apellido111', N'1000000111', N'Direccion 111                           ', N'2000111', N'clienteapellido111@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (112, N'Nombre112', N'Apellido112', N'1000000112', N'Direccion 112                           ', N'2000112', N'clienteapellido112@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (113, N'Nombre113', N'Apellido113', N'1000000113', N'Direccion 113                           ', N'2000113', N'clienteapellido113@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (114, N'Nombre114', N'Apellido114', N'1000000114', N'Direccion 114                           ', N'2000114', N'clienteapellido114@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (115, N'Nombre115', N'Apellido115', N'1000000115', N'Direccion 115                           ', N'2000115', N'clienteapellido115@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (116, N'Nombre116', N'Apellido116', N'1000000116', N'Direccion 116                           ', N'2000116', N'clienteapellido116@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (117, N'Nombre117', N'Apellido117', N'1000000117', N'Direccion 117                           ', N'2000117', N'clienteapellido117@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (118, N'Nombre118', N'Apellido118', N'1000000118', N'Direccion 118                           ', N'2000118', N'clienteapellido118@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (119, N'Nombre119', N'Apellido119', N'1000000119', N'Direccion 119                           ', N'2000119', N'clienteapellido119@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (120, N'Nombre120', N'Apellido120', N'1000000120', N'Direccion 120                           ', N'2000120', N'clienteapellido120@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (121, N'Nombre121', N'Apellido121', N'1000000121', N'Direccion 121                           ', N'2000121', N'clienteapellido121@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (122, N'Nombre122', N'Apellido122', N'1000000122', N'Direccion 122                           ', N'2000122', N'clienteapellido122@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (123, N'Nombre123', N'Apellido123', N'1000000123', N'Direccion 123                           ', N'2000123', N'clienteapellido123@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (124, N'Nombre124', N'Apellido124', N'1000000124', N'Direccion 124                           ', N'2000124', N'clienteapellido124@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (125, N'Nombre125', N'Apellido125', N'1000000125', N'Direccion 125                           ', N'2000125', N'clienteapellido125@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (126, N'Nombre126', N'Apellido126', N'1000000126', N'Direccion 126                           ', N'2000126', N'clienteapellido126@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (127, N'Nombre127', N'Apellido127', N'1000000127', N'Direccion 127                           ', N'2000127', N'clienteapellido127@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (128, N'Nombre128', N'Apellido128', N'1000000128', N'Direccion 128                           ', N'2000128', N'clienteapellido128@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (129, N'Nombre129', N'Apellido129', N'1000000129', N'Direccion 129                           ', N'2000129', N'clienteapellido129@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (130, N'Nombre130', N'Apellido130', N'1000000130', N'Direccion 130                           ', N'2000130', N'clienteapellido130@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (131, N'Nombre131', N'Apellido131', N'1000000131', N'Direccion 131                           ', N'2000131', N'clienteapellido131@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (132, N'Nombre132', N'Apellido132', N'1000000132', N'Direccion 132                           ', N'2000132', N'clienteapellido132@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (133, N'Nombre133', N'Apellido133', N'1000000133', N'Direccion 133                           ', N'2000133', N'clienteapellido133@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (134, N'Nombre134', N'Apellido134', N'1000000134', N'Direccion 134                           ', N'2000134', N'clienteapellido134@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (135, N'Nombre135', N'Apellido135', N'1000000135', N'Direccion 135                           ', N'2000135', N'clienteapellido135@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (136, N'Nombre136', N'Apellido136', N'1000000136', N'Direccion 136                           ', N'2000136', N'clienteapellido136@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (137, N'Nombre137', N'Apellido137', N'1000000137', N'Direccion 137                           ', N'2000137', N'clienteapellido137@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (138, N'Nombre138', N'Apellido138', N'1000000138', N'Direccion 138                           ', N'2000138', N'clienteapellido138@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (139, N'Nombre139', N'Apellido139', N'1000000139', N'Direccion 139                           ', N'2000139', N'clienteapellido139@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (140, N'Nombre140', N'Apellido140', N'1000000140', N'Direccion 140                           ', N'2000140', N'clienteapellido140@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (141, N'Nombre141', N'Apellido141', N'1000000141', N'Direccion 141                           ', N'2000141', N'clienteapellido141@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (142, N'Nombre142', N'Apellido142', N'1000000142', N'Direccion 142                           ', N'2000142', N'clienteapellido142@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (143, N'Nombre143', N'Apellido143', N'1000000143', N'Direccion 143                           ', N'2000143', N'clienteapellido143@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (144, N'Nombre144', N'Apellido144', N'1000000144', N'Direccion 144                           ', N'2000144', N'clienteapellido144@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (145, N'Nombre145', N'Apellido145', N'1000000145', N'Direccion 145                           ', N'2000145', N'clienteapellido145@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (146, N'Nombre146', N'Apellido146', N'1000000146', N'Direccion 146                           ', N'2000146', N'clienteapellido146@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (147, N'Nombre147', N'Apellido147', N'1000000147', N'Direccion 147                           ', N'2000147', N'clienteapellido147@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (148, N'Nombre148', N'Apellido148', N'1000000148', N'Direccion 148                           ', N'2000148', N'clienteapellido148@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (149, N'Nombre149', N'Apellido149', N'1000000149', N'Direccion 149                           ', N'2000149', N'clienteapellido149@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (150, N'Nombre150', N'Apellido150', N'1000000150', N'Direccion 150                           ', N'2000150', N'clienteapellido150@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (151, N'Nombre151', N'Apellido151', N'1000000151', N'Direccion 151                           ', N'2000151', N'clienteapellido151@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (152, N'Nombre152', N'Apellido152', N'1000000152', N'Direccion 152                           ', N'2000152', N'clienteapellido152@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (153, N'Nombre153', N'Apellido153', N'1000000153', N'Direccion 153                           ', N'2000153', N'clienteapellido153@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (154, N'Nombre154', N'Apellido154', N'1000000154', N'Direccion 154                           ', N'2000154', N'clienteapellido154@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (155, N'Nombre155', N'Apellido155', N'1000000155', N'Direccion 155                           ', N'2000155', N'clienteapellido155@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (156, N'Nombre156', N'Apellido156', N'1000000156', N'Direccion 156                           ', N'2000156', N'clienteapellido156@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (157, N'Nombre157', N'Apellido157', N'1000000157', N'Direccion 157                           ', N'2000157', N'clienteapellido157@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (158, N'Nombre158', N'Apellido158', N'1000000158', N'Direccion 158                           ', N'2000158', N'clienteapellido158@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (159, N'Nombre159', N'Apellido159', N'1000000159', N'Direccion 159                           ', N'2000159', N'clienteapellido159@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (160, N'Nombre160', N'Apellido160', N'1000000160', N'Direccion 160                           ', N'2000160', N'clienteapellido160@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (161, N'Nombre161', N'Apellido161', N'1000000161', N'Direccion 161                           ', N'2000161', N'clienteapellido161@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (162, N'Nombre162', N'Apellido162', N'1000000162', N'Direccion 162                           ', N'2000162', N'clienteapellido162@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (163, N'Nombre163', N'Apellido163', N'1000000163', N'Direccion 163                           ', N'2000163', N'clienteapellido163@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (164, N'Nombre164', N'Apellido164', N'1000000164', N'Direccion 164                           ', N'2000164', N'clienteapellido164@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (165, N'Nombre165', N'Apellido165', N'1000000165', N'Direccion 165                           ', N'2000165', N'clienteapellido165@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (166, N'Nombre166', N'Apellido166', N'1000000166', N'Direccion 166                           ', N'2000166', N'clienteapellido166@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (167, N'Nombre167', N'Apellido167', N'1000000167', N'Direccion 167                           ', N'2000167', N'clienteapellido167@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (168, N'Nombre168', N'Apellido168', N'1000000168', N'Direccion 168                           ', N'2000168', N'clienteapellido168@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (169, N'Nombre169', N'Apellido169', N'1000000169', N'Direccion 169                           ', N'2000169', N'clienteapellido169@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (170, N'Nombre170', N'Apellido170', N'1000000170', N'Direccion 170                           ', N'2000170', N'clienteapellido170@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (171, N'Nombre171', N'Apellido171', N'1000000171', N'Direccion 171                           ', N'2000171', N'clienteapellido171@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (172, N'Nombre172', N'Apellido172', N'1000000172', N'Direccion 172                           ', N'2000172', N'clienteapellido172@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (173, N'Nombre173', N'Apellido173', N'1000000173', N'Direccion 173                           ', N'2000173', N'clienteapellido173@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (174, N'Nombre174', N'Apellido174', N'1000000174', N'Direccion 174                           ', N'2000174', N'clienteapellido174@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (175, N'Nombre175', N'Apellido175', N'1000000175', N'Direccion 175                           ', N'2000175', N'clienteapellido175@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (176, N'Nombre176', N'Apellido176', N'1000000176', N'Direccion 176                           ', N'2000176', N'clienteapellido176@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (177, N'Nombre177', N'Apellido177', N'1000000177', N'Direccion 177                           ', N'2000177', N'clienteapellido177@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (178, N'Nombre178', N'Apellido178', N'1000000178', N'Direccion 178                           ', N'2000178', N'clienteapellido178@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (179, N'Nombre179', N'Apellido179', N'1000000179', N'Direccion 179                           ', N'2000179', N'clienteapellido179@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (180, N'Nombre180', N'Apellido180', N'1000000180', N'Direccion 180                           ', N'2000180', N'clienteapellido180@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (181, N'Nombre181', N'Apellido181', N'1000000181', N'Direccion 181                           ', N'2000181', N'clienteapellido181@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (182, N'Nombre182', N'Apellido182', N'1000000182', N'Direccion 182                           ', N'2000182', N'clienteapellido182@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (183, N'Nombre183', N'Apellido183', N'1000000183', N'Direccion 183                           ', N'2000183', N'clienteapellido183@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (184, N'Nombre184', N'Apellido184', N'1000000184', N'Direccion 184                           ', N'2000184', N'clienteapellido184@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (185, N'Nombre185', N'Apellido185', N'1000000185', N'Direccion 185                           ', N'2000185', N'clienteapellido185@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (186, N'Nombre186', N'Apellido186', N'1000000186', N'Direccion 186                           ', N'2000186', N'clienteapellido186@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (187, N'Nombre187', N'Apellido187', N'1000000187', N'Direccion 187                           ', N'2000187', N'clienteapellido187@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (188, N'Nombre188', N'Apellido188', N'1000000188', N'Direccion 188                           ', N'2000188', N'clienteapellido188@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (189, N'Nombre189', N'Apellido189', N'1000000189', N'Direccion 189                           ', N'2000189', N'clienteapellido189@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (190, N'Nombre190', N'Apellido190', N'1000000190', N'Direccion 190                           ', N'2000190', N'clienteapellido190@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (191, N'Nombre191', N'Apellido191', N'1000000191', N'Direccion 191                           ', N'2000191', N'clienteapellido191@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (192, N'Nombre192', N'Apellido192', N'1000000192', N'Direccion 192                           ', N'2000192', N'clienteapellido192@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (193, N'Nombre193', N'Apellido193', N'1000000193', N'Direccion 193                           ', N'2000193', N'clienteapellido193@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (194, N'Nombre194', N'Apellido194', N'1000000194', N'Direccion 194                           ', N'2000194', N'clienteapellido194@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (195, N'Nombre195', N'Apellido195', N'1000000195', N'Direccion 195                           ', N'2000195', N'clienteapellido195@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (196, N'Nombre196', N'Apellido196', N'1000000196', N'Direccion 196                           ', N'2000196', N'clienteapellido196@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (197, N'Nombre197', N'Apellido197', N'1000000197', N'Direccion 197                           ', N'2000197', N'clienteapellido197@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (198, N'Nombre198', N'Apellido198', N'1000000198', N'Direccion 198                           ', N'2000198', N'clienteapellido198@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (199, N'Nombre199', N'Apellido199', N'1000000199', N'Direccion 199                           ', N'2000199', N'clienteapellido199@udlanet.ec')
GO
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (200, N'Nombre200', N'Apellido200', N'1000000200', N'Direccion 200                           ', N'2000200', N'clienteapellido200@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (201, N'Nombre201', N'Apellido201', N'1000000201', N'Direccion 201                           ', N'2000201', N'clienteapellido201@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (202, N'Nombre202', N'Apellido202', N'1000000202', N'Direccion 202                           ', N'2000202', N'clienteapellido202@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (203, N'Nombre203', N'Apellido203', N'1000000203', N'Direccion 203                           ', N'2000203', N'clienteapellido203@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (204, N'Nombre204', N'Apellido204', N'1000000204', N'Direccion 204                           ', N'2000204', N'clienteapellido204@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (205, N'Nombre205', N'Apellido205', N'1000000205', N'Direccion 205                           ', N'2000205', N'clienteapellido205@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (206, N'Nombre206', N'Apellido206', N'1000000206', N'Direccion 206                           ', N'2000206', N'clienteapellido206@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (207, N'Nombre207', N'Apellido207', N'1000000207', N'Direccion 207                           ', N'2000207', N'clienteapellido207@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (208, N'Nombre208', N'Apellido208', N'1000000208', N'Direccion 208                           ', N'2000208', N'clienteapellido208@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (209, N'Nombre209', N'Apellido209', N'1000000209', N'Direccion 209                           ', N'2000209', N'clienteapellido209@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (210, N'Nombre210', N'Apellido210', N'1000000210', N'Direccion 210                           ', N'2000210', N'clienteapellido210@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (211, N'Nombre211', N'Apellido211', N'1000000211', N'Direccion 211                           ', N'2000211', N'clienteapellido211@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (212, N'Nombre212', N'Apellido212', N'1000000212', N'Direccion 212                           ', N'2000212', N'clienteapellido212@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (213, N'Nombre213', N'Apellido213', N'1000000213', N'Direccion 213                           ', N'2000213', N'clienteapellido213@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (214, N'Nombre214', N'Apellido214', N'1000000214', N'Direccion 214                           ', N'2000214', N'clienteapellido214@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (215, N'Nombre215', N'Apellido215', N'1000000215', N'Direccion 215                           ', N'2000215', N'clienteapellido215@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (216, N'Nombre216', N'Apellido216', N'1000000216', N'Direccion 216                           ', N'2000216', N'clienteapellido216@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (217, N'Nombre217', N'Apellido217', N'1000000217', N'Direccion 217                           ', N'2000217', N'clienteapellido217@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (218, N'Nombre218', N'Apellido218', N'1000000218', N'Direccion 218                           ', N'2000218', N'clienteapellido218@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (219, N'Nombre219', N'Apellido219', N'1000000219', N'Direccion 219                           ', N'2000219', N'clienteapellido219@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (220, N'Nombre220', N'Apellido220', N'1000000220', N'Direccion 220                           ', N'2000220', N'clienteapellido220@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (221, N'Nombre221', N'Apellido221', N'1000000221', N'Direccion 221                           ', N'2000221', N'clienteapellido221@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (222, N'Nombre222', N'Apellido222', N'1000000222', N'Direccion 222                           ', N'2000222', N'clienteapellido222@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (223, N'Nombre223', N'Apellido223', N'1000000223', N'Direccion 223                           ', N'2000223', N'clienteapellido223@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (224, N'Nombre224', N'Apellido224', N'1000000224', N'Direccion 224                           ', N'2000224', N'clienteapellido224@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (225, N'Nombre225', N'Apellido225', N'1000000225', N'Direccion 225                           ', N'2000225', N'clienteapellido225@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (226, N'Nombre226', N'Apellido226', N'1000000226', N'Direccion 226                           ', N'2000226', N'clienteapellido226@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (227, N'Nombre227', N'Apellido227', N'1000000227', N'Direccion 227                           ', N'2000227', N'clienteapellido227@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (228, N'Nombre228', N'Apellido228', N'1000000228', N'Direccion 228                           ', N'2000228', N'clienteapellido228@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (229, N'Nombre229', N'Apellido229', N'1000000229', N'Direccion 229                           ', N'2000229', N'clienteapellido229@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (230, N'Nombre230', N'Apellido230', N'1000000230', N'Direccion 230                           ', N'2000230', N'clienteapellido230@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (231, N'Nombre231', N'Apellido231', N'1000000231', N'Direccion 231                           ', N'2000231', N'clienteapellido231@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (232, N'Nombre232', N'Apellido232', N'1000000232', N'Direccion 232                           ', N'2000232', N'clienteapellido232@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (233, N'Nombre233', N'Apellido233', N'1000000233', N'Direccion 233                           ', N'2000233', N'clienteapellido233@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (234, N'Nombre234', N'Apellido234', N'1000000234', N'Direccion 234                           ', N'2000234', N'clienteapellido234@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (235, N'Nombre235', N'Apellido235', N'1000000235', N'Direccion 235                           ', N'2000235', N'clienteapellido235@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (236, N'Nombre236', N'Apellido236', N'1000000236', N'Direccion 236                           ', N'2000236', N'clienteapellido236@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (237, N'Nombre237', N'Apellido237', N'1000000237', N'Direccion 237                           ', N'2000237', N'clienteapellido237@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (238, N'Nombre238', N'Apellido238', N'1000000238', N'Direccion 238                           ', N'2000238', N'clienteapellido238@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (239, N'Nombre239', N'Apellido239', N'1000000239', N'Direccion 239                           ', N'2000239', N'clienteapellido239@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (240, N'Nombre240', N'Apellido240', N'1000000240', N'Direccion 240                           ', N'2000240', N'clienteapellido240@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (241, N'Nombre241', N'Apellido241', N'1000000241', N'Direccion 241                           ', N'2000241', N'clienteapellido241@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (242, N'Nombre242', N'Apellido242', N'1000000242', N'Direccion 242                           ', N'2000242', N'clienteapellido242@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (243, N'Nombre243', N'Apellido243', N'1000000243', N'Direccion 243                           ', N'2000243', N'clienteapellido243@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (244, N'Nombre244', N'Apellido244', N'1000000244', N'Direccion 244                           ', N'2000244', N'clienteapellido244@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (245, N'Nombre245', N'Apellido245', N'1000000245', N'Direccion 245                           ', N'2000245', N'clienteapellido245@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (246, N'Nombre246', N'Apellido246', N'1000000246', N'Direccion 246                           ', N'2000246', N'clienteapellido246@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (247, N'Nombre247', N'Apellido247', N'1000000247', N'Direccion 247                           ', N'2000247', N'clienteapellido247@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (248, N'Nombre248', N'Apellido248', N'1000000248', N'Direccion 248                           ', N'2000248', N'clienteapellido248@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (249, N'Nombre249', N'Apellido249', N'1000000249', N'Direccion 249                           ', N'2000249', N'clienteapellido249@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (250, N'Nombre250', N'Apellido250', N'1000000250', N'Direccion 250                           ', N'2000250', N'clienteapellido250@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (251, N'Nombre251', N'Apellido251', N'1000000251', N'Direccion 251                           ', N'2000251', N'clienteapellido251@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (252, N'Nombre252', N'Apellido252', N'1000000252', N'Direccion 252                           ', N'2000252', N'clienteapellido252@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (253, N'Nombre253', N'Apellido253', N'1000000253', N'Direccion 253                           ', N'2000253', N'clienteapellido253@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (254, N'Nombre254', N'Apellido254', N'1000000254', N'Direccion 254                           ', N'2000254', N'clienteapellido254@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (255, N'Nombre255', N'Apellido255', N'1000000255', N'Direccion 255                           ', N'2000255', N'clienteapellido255@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (256, N'Nombre256', N'Apellido256', N'1000000256', N'Direccion 256                           ', N'2000256', N'clienteapellido256@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (257, N'Nombre257', N'Apellido257', N'1000000257', N'Direccion 257                           ', N'2000257', N'clienteapellido257@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (258, N'Nombre258', N'Apellido258', N'1000000258', N'Direccion 258                           ', N'2000258', N'clienteapellido258@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (259, N'Nombre259', N'Apellido259', N'1000000259', N'Direccion 259                           ', N'2000259', N'clienteapellido259@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (260, N'Nombre260', N'Apellido260', N'1000000260', N'Direccion 260                           ', N'2000260', N'clienteapellido260@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (261, N'Nombre261', N'Apellido261', N'1000000261', N'Direccion 261                           ', N'2000261', N'clienteapellido261@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (262, N'Nombre262', N'Apellido262', N'1000000262', N'Direccion 262                           ', N'2000262', N'clienteapellido262@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (263, N'Nombre263', N'Apellido263', N'1000000263', N'Direccion 263                           ', N'2000263', N'clienteapellido263@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (264, N'Nombre264', N'Apellido264', N'1000000264', N'Direccion 264                           ', N'2000264', N'clienteapellido264@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (265, N'Nombre265', N'Apellido265', N'1000000265', N'Direccion 265                           ', N'2000265', N'clienteapellido265@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (266, N'Nombre266', N'Apellido266', N'1000000266', N'Direccion 266                           ', N'2000266', N'clienteapellido266@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (267, N'Nombre267', N'Apellido267', N'1000000267', N'Direccion 267                           ', N'2000267', N'clienteapellido267@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (268, N'Nombre268', N'Apellido268', N'1000000268', N'Direccion 268                           ', N'2000268', N'clienteapellido268@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (269, N'Nombre269', N'Apellido269', N'1000000269', N'Direccion 269                           ', N'2000269', N'clienteapellido269@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (270, N'Nombre270', N'Apellido270', N'1000000270', N'Direccion 270                           ', N'2000270', N'clienteapellido270@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (271, N'Nombre271', N'Apellido271', N'1000000271', N'Direccion 271                           ', N'2000271', N'clienteapellido271@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (272, N'Nombre272', N'Apellido272', N'1000000272', N'Direccion 272                           ', N'2000272', N'clienteapellido272@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (273, N'Nombre273', N'Apellido273', N'1000000273', N'Direccion 273                           ', N'2000273', N'clienteapellido273@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (274, N'Nombre274', N'Apellido274', N'1000000274', N'Direccion 274                           ', N'2000274', N'clienteapellido274@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (275, N'Nombre275', N'Apellido275', N'1000000275', N'Direccion 275                           ', N'2000275', N'clienteapellido275@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (276, N'Nombre276', N'Apellido276', N'1000000276', N'Direccion 276                           ', N'2000276', N'clienteapellido276@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (277, N'Nombre277', N'Apellido277', N'1000000277', N'Direccion 277                           ', N'2000277', N'clienteapellido277@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (278, N'Nombre278', N'Apellido278', N'1000000278', N'Direccion 278                           ', N'2000278', N'clienteapellido278@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (279, N'Nombre279', N'Apellido279', N'1000000279', N'Direccion 279                           ', N'2000279', N'clienteapellido279@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (280, N'Nombre280', N'Apellido280', N'1000000280', N'Direccion 280                           ', N'2000280', N'clienteapellido280@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (281, N'Nombre281', N'Apellido281', N'1000000281', N'Direccion 281                           ', N'2000281', N'clienteapellido281@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (282, N'Nombre282', N'Apellido282', N'1000000282', N'Direccion 282                           ', N'2000282', N'clienteapellido282@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (283, N'Nombre283', N'Apellido283', N'1000000283', N'Direccion 283                           ', N'2000283', N'clienteapellido283@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (284, N'Nombre284', N'Apellido284', N'1000000284', N'Direccion 284                           ', N'2000284', N'clienteapellido284@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (285, N'Nombre285', N'Apellido285', N'1000000285', N'Direccion 285                           ', N'2000285', N'clienteapellido285@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (286, N'Nombre286', N'Apellido286', N'1000000286', N'Direccion 286                           ', N'2000286', N'clienteapellido286@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (287, N'Nombre287', N'Apellido287', N'1000000287', N'Direccion 287                           ', N'2000287', N'clienteapellido287@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (288, N'Nombre288', N'Apellido288', N'1000000288', N'Direccion 288                           ', N'2000288', N'clienteapellido288@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (289, N'Nombre289', N'Apellido289', N'1000000289', N'Direccion 289                           ', N'2000289', N'clienteapellido289@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (290, N'Nombre290', N'Apellido290', N'1000000290', N'Direccion 290                           ', N'2000290', N'clienteapellido290@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (291, N'Nombre291', N'Apellido291', N'1000000291', N'Direccion 291                           ', N'2000291', N'clienteapellido291@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (292, N'Nombre292', N'Apellido292', N'1000000292', N'Direccion 292                           ', N'2000292', N'clienteapellido292@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (293, N'Nombre293', N'Apellido293', N'1000000293', N'Direccion 293                           ', N'2000293', N'clienteapellido293@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (294, N'Nombre294', N'Apellido294', N'1000000294', N'Direccion 294                           ', N'2000294', N'clienteapellido294@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (295, N'Nombre295', N'Apellido295', N'1000000295', N'Direccion 295                           ', N'2000295', N'clienteapellido295@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (296, N'Nombre296', N'Apellido296', N'1000000296', N'Direccion 296                           ', N'2000296', N'clienteapellido296@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (297, N'Nombre297', N'Apellido297', N'1000000297', N'Direccion 297                           ', N'2000297', N'clienteapellido297@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (298, N'Nombre298', N'Apellido298', N'1000000298', N'Direccion 298                           ', N'2000298', N'clienteapellido298@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (299, N'Nombre299', N'Apellido299', N'1000000299', N'Direccion 299                           ', N'2000299', N'clienteapellido299@udlanet.ec')
GO
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (300, N'Nombre300', N'Apellido300', N'1000000300', N'Direccion 300                           ', N'2000300', N'clienteapellido300@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (301, N'Nombre301', N'Apellido301', N'1000000301', N'Direccion 301                           ', N'2000301', N'clienteapellido301@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (302, N'Nombre302', N'Apellido302', N'1000000302', N'Direccion 302                           ', N'2000302', N'clienteapellido302@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (303, N'Nombre303', N'Apellido303', N'1000000303', N'Direccion 303                           ', N'2000303', N'clienteapellido303@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (304, N'Nombre304', N'Apellido304', N'1000000304', N'Direccion 304                           ', N'2000304', N'clienteapellido304@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (305, N'Nombre305', N'Apellido305', N'1000000305', N'Direccion 305                           ', N'2000305', N'clienteapellido305@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (306, N'Nombre306', N'Apellido306', N'1000000306', N'Direccion 306                           ', N'2000306', N'clienteapellido306@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (307, N'Nombre307', N'Apellido307', N'1000000307', N'Direccion 307                           ', N'2000307', N'clienteapellido307@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (308, N'Nombre308', N'Apellido308', N'1000000308', N'Direccion 308                           ', N'2000308', N'clienteapellido308@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (309, N'Nombre309', N'Apellido309', N'1000000309', N'Direccion 309                           ', N'2000309', N'clienteapellido309@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (310, N'Nombre310', N'Apellido310', N'1000000310', N'Direccion 310                           ', N'2000310', N'clienteapellido310@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (311, N'Nombre311', N'Apellido311', N'1000000311', N'Direccion 311                           ', N'2000311', N'clienteapellido311@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (312, N'Nombre312', N'Apellido312', N'1000000312', N'Direccion 312                           ', N'2000312', N'clienteapellido312@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (313, N'Nombre313', N'Apellido313', N'1000000313', N'Direccion 313                           ', N'2000313', N'clienteapellido313@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (314, N'Nombre314', N'Apellido314', N'1000000314', N'Direccion 314                           ', N'2000314', N'clienteapellido314@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (315, N'Nombre315', N'Apellido315', N'1000000315', N'Direccion 315                           ', N'2000315', N'clienteapellido315@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (316, N'Nombre316', N'Apellido316', N'1000000316', N'Direccion 316                           ', N'2000316', N'clienteapellido316@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (317, N'Nombre317', N'Apellido317', N'1000000317', N'Direccion 317                           ', N'2000317', N'clienteapellido317@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (318, N'Nombre318', N'Apellido318', N'1000000318', N'Direccion 318                           ', N'2000318', N'clienteapellido318@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (319, N'Nombre319', N'Apellido319', N'1000000319', N'Direccion 319                           ', N'2000319', N'clienteapellido319@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (320, N'Nombre320', N'Apellido320', N'1000000320', N'Direccion 320                           ', N'2000320', N'clienteapellido320@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (321, N'Nombre321', N'Apellido321', N'1000000321', N'Direccion 321                           ', N'2000321', N'clienteapellido321@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (322, N'Nombre322', N'Apellido322', N'1000000322', N'Direccion 322                           ', N'2000322', N'clienteapellido322@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (323, N'Nombre323', N'Apellido323', N'1000000323', N'Direccion 323                           ', N'2000323', N'clienteapellido323@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (324, N'Nombre324', N'Apellido324', N'1000000324', N'Direccion 324                           ', N'2000324', N'clienteapellido324@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (325, N'Nombre325', N'Apellido325', N'1000000325', N'Direccion 325                           ', N'2000325', N'clienteapellido325@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (326, N'Nombre326', N'Apellido326', N'1000000326', N'Direccion 326                           ', N'2000326', N'clienteapellido326@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (327, N'Nombre327', N'Apellido327', N'1000000327', N'Direccion 327                           ', N'2000327', N'clienteapellido327@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (328, N'Nombre328', N'Apellido328', N'1000000328', N'Direccion 328                           ', N'2000328', N'clienteapellido328@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (329, N'Nombre329', N'Apellido329', N'1000000329', N'Direccion 329                           ', N'2000329', N'clienteapellido329@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (330, N'Nombre330', N'Apellido330', N'1000000330', N'Direccion 330                           ', N'2000330', N'clienteapellido330@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (331, N'Nombre331', N'Apellido331', N'1000000331', N'Direccion 331                           ', N'2000331', N'clienteapellido331@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (332, N'Nombre332', N'Apellido332', N'1000000332', N'Direccion 332                           ', N'2000332', N'clienteapellido332@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (333, N'Nombre333', N'Apellido333', N'1000000333', N'Direccion 333                           ', N'2000333', N'clienteapellido333@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (334, N'Nombre334', N'Apellido334', N'1000000334', N'Direccion 334                           ', N'2000334', N'clienteapellido334@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (335, N'Nombre335', N'Apellido335', N'1000000335', N'Direccion 335                           ', N'2000335', N'clienteapellido335@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (336, N'Nombre336', N'Apellido336', N'1000000336', N'Direccion 336                           ', N'2000336', N'clienteapellido336@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (337, N'Nombre337', N'Apellido337', N'1000000337', N'Direccion 337                           ', N'2000337', N'clienteapellido337@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (338, N'Nombre338', N'Apellido338', N'1000000338', N'Direccion 338                           ', N'2000338', N'clienteapellido338@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (339, N'Nombre339', N'Apellido339', N'1000000339', N'Direccion 339                           ', N'2000339', N'clienteapellido339@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (340, N'Nombre340', N'Apellido340', N'1000000340', N'Direccion 340                           ', N'2000340', N'clienteapellido340@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (341, N'Nombre341', N'Apellido341', N'1000000341', N'Direccion 341                           ', N'2000341', N'clienteapellido341@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (342, N'Nombre342', N'Apellido342', N'1000000342', N'Direccion 342                           ', N'2000342', N'clienteapellido342@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (343, N'Nombre343', N'Apellido343', N'1000000343', N'Direccion 343                           ', N'2000343', N'clienteapellido343@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (344, N'Nombre344', N'Apellido344', N'1000000344', N'Direccion 344                           ', N'2000344', N'clienteapellido344@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (345, N'Nombre345', N'Apellido345', N'1000000345', N'Direccion 345                           ', N'2000345', N'clienteapellido345@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (346, N'Nombre346', N'Apellido346', N'1000000346', N'Direccion 346                           ', N'2000346', N'clienteapellido346@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (347, N'Nombre347', N'Apellido347', N'1000000347', N'Direccion 347                           ', N'2000347', N'clienteapellido347@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (348, N'Nombre348', N'Apellido348', N'1000000348', N'Direccion 348                           ', N'2000348', N'clienteapellido348@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (349, N'Nombre349', N'Apellido349', N'1000000349', N'Direccion 349                           ', N'2000349', N'clienteapellido349@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (350, N'Nombre350', N'Apellido350', N'1000000350', N'Direccion 350                           ', N'2000350', N'clienteapellido350@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (351, N'Nombre351', N'Apellido351', N'1000000351', N'Direccion 351                           ', N'2000351', N'clienteapellido351@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (352, N'Nombre352', N'Apellido352', N'1000000352', N'Direccion 352                           ', N'2000352', N'clienteapellido352@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (353, N'Nombre353', N'Apellido353', N'1000000353', N'Direccion 353                           ', N'2000353', N'clienteapellido353@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (354, N'Nombre354', N'Apellido354', N'1000000354', N'Direccion 354                           ', N'2000354', N'clienteapellido354@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (355, N'Nombre355', N'Apellido355', N'1000000355', N'Direccion 355                           ', N'2000355', N'clienteapellido355@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (356, N'Nombre356', N'Apellido356', N'1000000356', N'Direccion 356                           ', N'2000356', N'clienteapellido356@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (357, N'Nombre357', N'Apellido357', N'1000000357', N'Direccion 357                           ', N'2000357', N'clienteapellido357@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (358, N'Nombre358', N'Apellido358', N'1000000358', N'Direccion 358                           ', N'2000358', N'clienteapellido358@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (359, N'Nombre359', N'Apellido359', N'1000000359', N'Direccion 359                           ', N'2000359', N'clienteapellido359@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (360, N'Nombre360', N'Apellido360', N'1000000360', N'Direccion 360                           ', N'2000360', N'clienteapellido360@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (361, N'Nombre361', N'Apellido361', N'1000000361', N'Direccion 361                           ', N'2000361', N'clienteapellido361@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (362, N'Nombre362', N'Apellido362', N'1000000362', N'Direccion 362                           ', N'2000362', N'clienteapellido362@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (363, N'Nombre363', N'Apellido363', N'1000000363', N'Direccion 363                           ', N'2000363', N'clienteapellido363@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (364, N'Nombre364', N'Apellido364', N'1000000364', N'Direccion 364                           ', N'2000364', N'clienteapellido364@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (365, N'Nombre365', N'Apellido365', N'1000000365', N'Direccion 365                           ', N'2000365', N'clienteapellido365@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (366, N'Nombre366', N'Apellido366', N'1000000366', N'Direccion 366                           ', N'2000366', N'clienteapellido366@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (367, N'Nombre367', N'Apellido367', N'1000000367', N'Direccion 367                           ', N'2000367', N'clienteapellido367@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (368, N'Nombre368', N'Apellido368', N'1000000368', N'Direccion 368                           ', N'2000368', N'clienteapellido368@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (369, N'Nombre369', N'Apellido369', N'1000000369', N'Direccion 369                           ', N'2000369', N'clienteapellido369@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (370, N'Nombre370', N'Apellido370', N'1000000370', N'Direccion 370                           ', N'2000370', N'clienteapellido370@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (371, N'Nombre371', N'Apellido371', N'1000000371', N'Direccion 371                           ', N'2000371', N'clienteapellido371@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (372, N'Nombre372', N'Apellido372', N'1000000372', N'Direccion 372                           ', N'2000372', N'clienteapellido372@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (373, N'Nombre373', N'Apellido373', N'1000000373', N'Direccion 373                           ', N'2000373', N'clienteapellido373@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (374, N'Nombre374', N'Apellido374', N'1000000374', N'Direccion 374                           ', N'2000374', N'clienteapellido374@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (375, N'Nombre375', N'Apellido375', N'1000000375', N'Direccion 375                           ', N'2000375', N'clienteapellido375@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (376, N'Nombre376', N'Apellido376', N'1000000376', N'Direccion 376                           ', N'2000376', N'clienteapellido376@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (377, N'Nombre377', N'Apellido377', N'1000000377', N'Direccion 377                           ', N'2000377', N'clienteapellido377@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (378, N'Nombre378', N'Apellido378', N'1000000378', N'Direccion 378                           ', N'2000378', N'clienteapellido378@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (379, N'Nombre379', N'Apellido379', N'1000000379', N'Direccion 379                           ', N'2000379', N'clienteapellido379@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (380, N'Nombre380', N'Apellido380', N'1000000380', N'Direccion 380                           ', N'2000380', N'clienteapellido380@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (381, N'Nombre381', N'Apellido381', N'1000000381', N'Direccion 381                           ', N'2000381', N'clienteapellido381@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (382, N'Nombre382', N'Apellido382', N'1000000382', N'Direccion 382                           ', N'2000382', N'clienteapellido382@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (383, N'Nombre383', N'Apellido383', N'1000000383', N'Direccion 383                           ', N'2000383', N'clienteapellido383@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (384, N'Nombre384', N'Apellido384', N'1000000384', N'Direccion 384                           ', N'2000384', N'clienteapellido384@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (385, N'Nombre385', N'Apellido385', N'1000000385', N'Direccion 385                           ', N'2000385', N'clienteapellido385@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (386, N'Nombre386', N'Apellido386', N'1000000386', N'Direccion 386                           ', N'2000386', N'clienteapellido386@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (387, N'Nombre387', N'Apellido387', N'1000000387', N'Direccion 387                           ', N'2000387', N'clienteapellido387@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (388, N'Nombre388', N'Apellido388', N'1000000388', N'Direccion 388                           ', N'2000388', N'clienteapellido388@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (389, N'Nombre389', N'Apellido389', N'1000000389', N'Direccion 389                           ', N'2000389', N'clienteapellido389@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (390, N'Nombre390', N'Apellido390', N'1000000390', N'Direccion 390                           ', N'2000390', N'clienteapellido390@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (391, N'Nombre391', N'Apellido391', N'1000000391', N'Direccion 391                           ', N'2000391', N'clienteapellido391@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (392, N'Nombre392', N'Apellido392', N'1000000392', N'Direccion 392                           ', N'2000392', N'clienteapellido392@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (393, N'Nombre393', N'Apellido393', N'1000000393', N'Direccion 393                           ', N'2000393', N'clienteapellido393@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (394, N'Nombre394', N'Apellido394', N'1000000394', N'Direccion 394                           ', N'2000394', N'clienteapellido394@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (395, N'Nombre395', N'Apellido395', N'1000000395', N'Direccion 395                           ', N'2000395', N'clienteapellido395@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (396, N'Nombre396', N'Apellido396', N'1000000396', N'Direccion 396                           ', N'2000396', N'clienteapellido396@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (397, N'Nombre397', N'Apellido397', N'1000000397', N'Direccion 397                           ', N'2000397', N'clienteapellido397@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (398, N'Nombre398', N'Apellido398', N'1000000398', N'Direccion 398                           ', N'2000398', N'clienteapellido398@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (399, N'Nombre399', N'Apellido399', N'1000000399', N'Direccion 399                           ', N'2000399', N'clienteapellido399@udlanet.ec')
GO
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (400, N'Nombre400', N'Apellido400', N'1000000400', N'Direccion 400                           ', N'2000400', N'clienteapellido400@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (401, N'Nombre401', N'Apellido401', N'1000000401', N'Direccion 401                           ', N'2000401', N'clienteapellido401@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (402, N'Nombre402', N'Apellido402', N'1000000402', N'Direccion 402                           ', N'2000402', N'clienteapellido402@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (403, N'Nombre403', N'Apellido403', N'1000000403', N'Direccion 403                           ', N'2000403', N'clienteapellido403@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (404, N'Nombre404', N'Apellido404', N'1000000404', N'Direccion 404                           ', N'2000404', N'clienteapellido404@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (405, N'Nombre405', N'Apellido405', N'1000000405', N'Direccion 405                           ', N'2000405', N'clienteapellido405@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (406, N'Nombre406', N'Apellido406', N'1000000406', N'Direccion 406                           ', N'2000406', N'clienteapellido406@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (407, N'Nombre407', N'Apellido407', N'1000000407', N'Direccion 407                           ', N'2000407', N'clienteapellido407@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (408, N'Nombre408', N'Apellido408', N'1000000408', N'Direccion 408                           ', N'2000408', N'clienteapellido408@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (409, N'Nombre409', N'Apellido409', N'1000000409', N'Direccion 409                           ', N'2000409', N'clienteapellido409@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (410, N'Nombre410', N'Apellido410', N'1000000410', N'Direccion 410                           ', N'2000410', N'clienteapellido410@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (411, N'Nombre411', N'Apellido411', N'1000000411', N'Direccion 411                           ', N'2000411', N'clienteapellido411@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (412, N'Nombre412', N'Apellido412', N'1000000412', N'Direccion 412                           ', N'2000412', N'clienteapellido412@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (413, N'Nombre413', N'Apellido413', N'1000000413', N'Direccion 413                           ', N'2000413', N'clienteapellido413@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (414, N'Nombre414', N'Apellido414', N'1000000414', N'Direccion 414                           ', N'2000414', N'clienteapellido414@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (415, N'Nombre415', N'Apellido415', N'1000000415', N'Direccion 415                           ', N'2000415', N'clienteapellido415@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (416, N'Nombre416', N'Apellido416', N'1000000416', N'Direccion 416                           ', N'2000416', N'clienteapellido416@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (417, N'Nombre417', N'Apellido417', N'1000000417', N'Direccion 417                           ', N'2000417', N'clienteapellido417@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (418, N'Nombre418', N'Apellido418', N'1000000418', N'Direccion 418                           ', N'2000418', N'clienteapellido418@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (419, N'Nombre419', N'Apellido419', N'1000000419', N'Direccion 419                           ', N'2000419', N'clienteapellido419@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (420, N'Nombre420', N'Apellido420', N'1000000420', N'Direccion 420                           ', N'2000420', N'clienteapellido420@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (421, N'Nombre421', N'Apellido421', N'1000000421', N'Direccion 421                           ', N'2000421', N'clienteapellido421@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (422, N'Nombre422', N'Apellido422', N'1000000422', N'Direccion 422                           ', N'2000422', N'clienteapellido422@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (423, N'Nombre423', N'Apellido423', N'1000000423', N'Direccion 423                           ', N'2000423', N'clienteapellido423@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (424, N'Nombre424', N'Apellido424', N'1000000424', N'Direccion 424                           ', N'2000424', N'clienteapellido424@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (425, N'Nombre425', N'Apellido425', N'1000000425', N'Direccion 425                           ', N'2000425', N'clienteapellido425@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (426, N'Nombre426', N'Apellido426', N'1000000426', N'Direccion 426                           ', N'2000426', N'clienteapellido426@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (427, N'Nombre427', N'Apellido427', N'1000000427', N'Direccion 427                           ', N'2000427', N'clienteapellido427@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (428, N'Nombre428', N'Apellido428', N'1000000428', N'Direccion 428                           ', N'2000428', N'clienteapellido428@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (429, N'Nombre429', N'Apellido429', N'1000000429', N'Direccion 429                           ', N'2000429', N'clienteapellido429@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (430, N'Nombre430', N'Apellido430', N'1000000430', N'Direccion 430                           ', N'2000430', N'clienteapellido430@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (431, N'Nombre431', N'Apellido431', N'1000000431', N'Direccion 431                           ', N'2000431', N'clienteapellido431@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (432, N'Nombre432', N'Apellido432', N'1000000432', N'Direccion 432                           ', N'2000432', N'clienteapellido432@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (433, N'Nombre433', N'Apellido433', N'1000000433', N'Direccion 433                           ', N'2000433', N'clienteapellido433@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (434, N'Nombre434', N'Apellido434', N'1000000434', N'Direccion 434                           ', N'2000434', N'clienteapellido434@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (435, N'Nombre435', N'Apellido435', N'1000000435', N'Direccion 435                           ', N'2000435', N'clienteapellido435@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (436, N'Nombre436', N'Apellido436', N'1000000436', N'Direccion 436                           ', N'2000436', N'clienteapellido436@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (437, N'Nombre437', N'Apellido437', N'1000000437', N'Direccion 437                           ', N'2000437', N'clienteapellido437@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (438, N'Nombre438', N'Apellido438', N'1000000438', N'Direccion 438                           ', N'2000438', N'clienteapellido438@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (439, N'Nombre439', N'Apellido439', N'1000000439', N'Direccion 439                           ', N'2000439', N'clienteapellido439@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (440, N'Nombre440', N'Apellido440', N'1000000440', N'Direccion 440                           ', N'2000440', N'clienteapellido440@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (441, N'Nombre441', N'Apellido441', N'1000000441', N'Direccion 441                           ', N'2000441', N'clienteapellido441@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (442, N'Nombre442', N'Apellido442', N'1000000442', N'Direccion 442                           ', N'2000442', N'clienteapellido442@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (443, N'Nombre443', N'Apellido443', N'1000000443', N'Direccion 443                           ', N'2000443', N'clienteapellido443@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (444, N'Nombre444', N'Apellido444', N'1000000444', N'Direccion 444                           ', N'2000444', N'clienteapellido444@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (445, N'Nombre445', N'Apellido445', N'1000000445', N'Direccion 445                           ', N'2000445', N'clienteapellido445@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (446, N'Nombre446', N'Apellido446', N'1000000446', N'Direccion 446                           ', N'2000446', N'clienteapellido446@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (447, N'Nombre447', N'Apellido447', N'1000000447', N'Direccion 447                           ', N'2000447', N'clienteapellido447@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (448, N'Nombre448', N'Apellido448', N'1000000448', N'Direccion 448                           ', N'2000448', N'clienteapellido448@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (449, N'Nombre449', N'Apellido449', N'1000000449', N'Direccion 449                           ', N'2000449', N'clienteapellido449@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (450, N'Nombre450', N'Apellido450', N'1000000450', N'Direccion 450                           ', N'2000450', N'clienteapellido450@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (451, N'Nombre451', N'Apellido451', N'1000000451', N'Direccion 451                           ', N'2000451', N'clienteapellido451@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (452, N'Nombre452', N'Apellido452', N'1000000452', N'Direccion 452                           ', N'2000452', N'clienteapellido452@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (453, N'Nombre453', N'Apellido453', N'1000000453', N'Direccion 453                           ', N'2000453', N'clienteapellido453@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (454, N'Nombre454', N'Apellido454', N'1000000454', N'Direccion 454                           ', N'2000454', N'clienteapellido454@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (455, N'Nombre455', N'Apellido455', N'1000000455', N'Direccion 455                           ', N'2000455', N'clienteapellido455@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (456, N'Nombre456', N'Apellido456', N'1000000456', N'Direccion 456                           ', N'2000456', N'clienteapellido456@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (457, N'Nombre457', N'Apellido457', N'1000000457', N'Direccion 457                           ', N'2000457', N'clienteapellido457@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (458, N'Nombre458', N'Apellido458', N'1000000458', N'Direccion 458                           ', N'2000458', N'clienteapellido458@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (459, N'Nombre459', N'Apellido459', N'1000000459', N'Direccion 459                           ', N'2000459', N'clienteapellido459@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (460, N'Nombre460', N'Apellido460', N'1000000460', N'Direccion 460                           ', N'2000460', N'clienteapellido460@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (461, N'Nombre461', N'Apellido461', N'1000000461', N'Direccion 461                           ', N'2000461', N'clienteapellido461@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (462, N'Nombre462', N'Apellido462', N'1000000462', N'Direccion 462                           ', N'2000462', N'clienteapellido462@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (463, N'Nombre463', N'Apellido463', N'1000000463', N'Direccion 463                           ', N'2000463', N'clienteapellido463@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (464, N'Nombre464', N'Apellido464', N'1000000464', N'Direccion 464                           ', N'2000464', N'clienteapellido464@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (465, N'Nombre465', N'Apellido465', N'1000000465', N'Direccion 465                           ', N'2000465', N'clienteapellido465@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (466, N'Nombre466', N'Apellido466', N'1000000466', N'Direccion 466                           ', N'2000466', N'clienteapellido466@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (467, N'Nombre467', N'Apellido467', N'1000000467', N'Direccion 467                           ', N'2000467', N'clienteapellido467@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (468, N'Nombre468', N'Apellido468', N'1000000468', N'Direccion 468                           ', N'2000468', N'clienteapellido468@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (469, N'Nombre469', N'Apellido469', N'1000000469', N'Direccion 469                           ', N'2000469', N'clienteapellido469@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (470, N'Nombre470', N'Apellido470', N'1000000470', N'Direccion 470                           ', N'2000470', N'clienteapellido470@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (471, N'Nombre471', N'Apellido471', N'1000000471', N'Direccion 471                           ', N'2000471', N'clienteapellido471@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (472, N'Nombre472', N'Apellido472', N'1000000472', N'Direccion 472                           ', N'2000472', N'clienteapellido472@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (473, N'Nombre473', N'Apellido473', N'1000000473', N'Direccion 473                           ', N'2000473', N'clienteapellido473@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (474, N'Nombre474', N'Apellido474', N'1000000474', N'Direccion 474                           ', N'2000474', N'clienteapellido474@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (475, N'Nombre475', N'Apellido475', N'1000000475', N'Direccion 475                           ', N'2000475', N'clienteapellido475@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (476, N'Nombre476', N'Apellido476', N'1000000476', N'Direccion 476                           ', N'2000476', N'clienteapellido476@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (477, N'Nombre477', N'Apellido477', N'1000000477', N'Direccion 477                           ', N'2000477', N'clienteapellido477@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (478, N'Nombre478', N'Apellido478', N'1000000478', N'Direccion 478                           ', N'2000478', N'clienteapellido478@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (479, N'Nombre479', N'Apellido479', N'1000000479', N'Direccion 479                           ', N'2000479', N'clienteapellido479@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (480, N'Nombre480', N'Apellido480', N'1000000480', N'Direccion 480                           ', N'2000480', N'clienteapellido480@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (481, N'Nombre481', N'Apellido481', N'1000000481', N'Direccion 481                           ', N'2000481', N'clienteapellido481@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (482, N'Nombre482', N'Apellido482', N'1000000482', N'Direccion 482                           ', N'2000482', N'clienteapellido482@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (483, N'Nombre483', N'Apellido483', N'1000000483', N'Direccion 483                           ', N'2000483', N'clienteapellido483@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (484, N'Nombre484', N'Apellido484', N'1000000484', N'Direccion 484                           ', N'2000484', N'clienteapellido484@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (485, N'Nombre485', N'Apellido485', N'1000000485', N'Direccion 485                           ', N'2000485', N'clienteapellido485@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (486, N'Nombre486', N'Apellido486', N'1000000486', N'Direccion 486                           ', N'2000486', N'clienteapellido486@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (487, N'Nombre487', N'Apellido487', N'1000000487', N'Direccion 487                           ', N'2000487', N'clienteapellido487@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (488, N'Nombre488', N'Apellido488', N'1000000488', N'Direccion 488                           ', N'2000488', N'clienteapellido488@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (489, N'Nombre489', N'Apellido489', N'1000000489', N'Direccion 489                           ', N'2000489', N'clienteapellido489@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (490, N'Nombre490', N'Apellido490', N'1000000490', N'Direccion 490                           ', N'2000490', N'clienteapellido490@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (491, N'Nombre491', N'Apellido491', N'1000000491', N'Direccion 491                           ', N'2000491', N'clienteapellido491@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (492, N'Nombre492', N'Apellido492', N'1000000492', N'Direccion 492                           ', N'2000492', N'clienteapellido492@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (493, N'Nombre493', N'Apellido493', N'1000000493', N'Direccion 493                           ', N'2000493', N'clienteapellido493@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (494, N'Nombre494', N'Apellido494', N'1000000494', N'Direccion 494                           ', N'2000494', N'clienteapellido494@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (495, N'Nombre495', N'Apellido495', N'1000000495', N'Direccion 495                           ', N'2000495', N'clienteapellido495@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (496, N'Nombre496', N'Apellido496', N'1000000496', N'Direccion 496                           ', N'2000496', N'clienteapellido496@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (497, N'Nombre497', N'Apellido497', N'1000000497', N'Direccion 497                           ', N'2000497', N'clienteapellido497@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (498, N'Nombre498', N'Apellido498', N'1000000498', N'Direccion 498                           ', N'2000498', N'clienteapellido498@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (499, N'Nombre499', N'Apellido499', N'1000000499', N'Direccion 499                           ', N'2000499', N'clienteapellido499@udlanet.ec')
GO
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (500, N'Nombre500', N'Apellido500', N'1000000500', N'Direccion 500                           ', N'2000500', N'clienteapellido500@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (501, N'Nombre501', N'Apellido501', N'1000000501', N'Direccion 501                           ', N'2000501', N'clienteapellido501@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (502, N'Nombre502', N'Apellido502', N'1000000502', N'Direccion 502                           ', N'2000502', N'clienteapellido502@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (503, N'Nombre503', N'Apellido503', N'1000000503', N'Direccion 503                           ', N'2000503', N'clienteapellido503@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (504, N'Nombre504', N'Apellido504', N'1000000504', N'Direccion 504                           ', N'2000504', N'clienteapellido504@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (505, N'Nombre505', N'Apellido505', N'1000000505', N'Direccion 505                           ', N'2000505', N'clienteapellido505@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (506, N'Nombre506', N'Apellido506', N'1000000506', N'Direccion 506                           ', N'2000506', N'clienteapellido506@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (507, N'Nombre507', N'Apellido507', N'1000000507', N'Direccion 507                           ', N'2000507', N'clienteapellido507@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (508, N'Nombre508', N'Apellido508', N'1000000508', N'Direccion 508                           ', N'2000508', N'clienteapellido508@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (509, N'Nombre509', N'Apellido509', N'1000000509', N'Direccion 509                           ', N'2000509', N'clienteapellido509@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (510, N'Nombre510', N'Apellido510', N'1000000510', N'Direccion 510                           ', N'2000510', N'clienteapellido510@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (511, N'Nombre511', N'Apellido511', N'1000000511', N'Direccion 511                           ', N'2000511', N'clienteapellido511@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (512, N'Nombre512', N'Apellido512', N'1000000512', N'Direccion 512                           ', N'2000512', N'clienteapellido512@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (513, N'Nombre513', N'Apellido513', N'1000000513', N'Direccion 513                           ', N'2000513', N'clienteapellido513@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (514, N'Nombre514', N'Apellido514', N'1000000514', N'Direccion 514                           ', N'2000514', N'clienteapellido514@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (515, N'Nombre515', N'Apellido515', N'1000000515', N'Direccion 515                           ', N'2000515', N'clienteapellido515@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (516, N'Nombre516', N'Apellido516', N'1000000516', N'Direccion 516                           ', N'2000516', N'clienteapellido516@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (517, N'Nombre517', N'Apellido517', N'1000000517', N'Direccion 517                           ', N'2000517', N'clienteapellido517@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (518, N'Nombre518', N'Apellido518', N'1000000518', N'Direccion 518                           ', N'2000518', N'clienteapellido518@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (519, N'Nombre519', N'Apellido519', N'1000000519', N'Direccion 519                           ', N'2000519', N'clienteapellido519@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (520, N'Nombre520', N'Apellido520', N'1000000520', N'Direccion 520                           ', N'2000520', N'clienteapellido520@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (521, N'Nombre521', N'Apellido521', N'1000000521', N'Direccion 521                           ', N'2000521', N'clienteapellido521@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (522, N'Nombre522', N'Apellido522', N'1000000522', N'Direccion 522                           ', N'2000522', N'clienteapellido522@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (523, N'Nombre523', N'Apellido523', N'1000000523', N'Direccion 523                           ', N'2000523', N'clienteapellido523@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (524, N'Nombre524', N'Apellido524', N'1000000524', N'Direccion 524                           ', N'2000524', N'clienteapellido524@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (525, N'Nombre525', N'Apellido525', N'1000000525', N'Direccion 525                           ', N'2000525', N'clienteapellido525@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (526, N'Nombre526', N'Apellido526', N'1000000526', N'Direccion 526                           ', N'2000526', N'clienteapellido526@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (527, N'Nombre527', N'Apellido527', N'1000000527', N'Direccion 527                           ', N'2000527', N'clienteapellido527@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (528, N'Nombre528', N'Apellido528', N'1000000528', N'Direccion 528                           ', N'2000528', N'clienteapellido528@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (529, N'Nombre529', N'Apellido529', N'1000000529', N'Direccion 529                           ', N'2000529', N'clienteapellido529@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (530, N'Nombre530', N'Apellido530', N'1000000530', N'Direccion 530                           ', N'2000530', N'clienteapellido530@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (531, N'Nombre531', N'Apellido531', N'1000000531', N'Direccion 531                           ', N'2000531', N'clienteapellido531@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (532, N'Nombre532', N'Apellido532', N'1000000532', N'Direccion 532                           ', N'2000532', N'clienteapellido532@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (533, N'Nombre533', N'Apellido533', N'1000000533', N'Direccion 533                           ', N'2000533', N'clienteapellido533@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (534, N'Nombre534', N'Apellido534', N'1000000534', N'Direccion 534                           ', N'2000534', N'clienteapellido534@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (535, N'Nombre535', N'Apellido535', N'1000000535', N'Direccion 535                           ', N'2000535', N'clienteapellido535@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (536, N'Nombre536', N'Apellido536', N'1000000536', N'Direccion 536                           ', N'2000536', N'clienteapellido536@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (537, N'Nombre537', N'Apellido537', N'1000000537', N'Direccion 537                           ', N'2000537', N'clienteapellido537@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (538, N'Nombre538', N'Apellido538', N'1000000538', N'Direccion 538                           ', N'2000538', N'clienteapellido538@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (539, N'Nombre539', N'Apellido539', N'1000000539', N'Direccion 539                           ', N'2000539', N'clienteapellido539@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (540, N'Nombre540', N'Apellido540', N'1000000540', N'Direccion 540                           ', N'2000540', N'clienteapellido540@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (541, N'Nombre541', N'Apellido541', N'1000000541', N'Direccion 541                           ', N'2000541', N'clienteapellido541@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (542, N'Nombre542', N'Apellido542', N'1000000542', N'Direccion 542                           ', N'2000542', N'clienteapellido542@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (543, N'Nombre543', N'Apellido543', N'1000000543', N'Direccion 543                           ', N'2000543', N'clienteapellido543@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (544, N'Nombre544', N'Apellido544', N'1000000544', N'Direccion 544                           ', N'2000544', N'clienteapellido544@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (545, N'Nombre545', N'Apellido545', N'1000000545', N'Direccion 545                           ', N'2000545', N'clienteapellido545@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (546, N'Nombre546', N'Apellido546', N'1000000546', N'Direccion 546                           ', N'2000546', N'clienteapellido546@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (547, N'Nombre547', N'Apellido547', N'1000000547', N'Direccion 547                           ', N'2000547', N'clienteapellido547@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (548, N'Nombre548', N'Apellido548', N'1000000548', N'Direccion 548                           ', N'2000548', N'clienteapellido548@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (549, N'Nombre549', N'Apellido549', N'1000000549', N'Direccion 549                           ', N'2000549', N'clienteapellido549@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (550, N'Nombre550', N'Apellido550', N'1000000550', N'Direccion 550                           ', N'2000550', N'clienteapellido550@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (551, N'Nombre551', N'Apellido551', N'1000000551', N'Direccion 551                           ', N'2000551', N'clienteapellido551@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (552, N'Nombre552', N'Apellido552', N'1000000552', N'Direccion 552                           ', N'2000552', N'clienteapellido552@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (553, N'Nombre553', N'Apellido553', N'1000000553', N'Direccion 553                           ', N'2000553', N'clienteapellido553@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (554, N'Nombre554', N'Apellido554', N'1000000554', N'Direccion 554                           ', N'2000554', N'clienteapellido554@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (555, N'Nombre555', N'Apellido555', N'1000000555', N'Direccion 555                           ', N'2000555', N'clienteapellido555@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (556, N'Nombre556', N'Apellido556', N'1000000556', N'Direccion 556                           ', N'2000556', N'clienteapellido556@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (557, N'Nombre557', N'Apellido557', N'1000000557', N'Direccion 557                           ', N'2000557', N'clienteapellido557@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (558, N'Nombre558', N'Apellido558', N'1000000558', N'Direccion 558                           ', N'2000558', N'clienteapellido558@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (559, N'Nombre559', N'Apellido559', N'1000000559', N'Direccion 559                           ', N'2000559', N'clienteapellido559@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (560, N'Nombre560', N'Apellido560', N'1000000560', N'Direccion 560                           ', N'2000560', N'clienteapellido560@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (561, N'Nombre561', N'Apellido561', N'1000000561', N'Direccion 561                           ', N'2000561', N'clienteapellido561@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (562, N'Nombre562', N'Apellido562', N'1000000562', N'Direccion 562                           ', N'2000562', N'clienteapellido562@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (563, N'Nombre563', N'Apellido563', N'1000000563', N'Direccion 563                           ', N'2000563', N'clienteapellido563@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (564, N'Nombre564', N'Apellido564', N'1000000564', N'Direccion 564                           ', N'2000564', N'clienteapellido564@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (565, N'Nombre565', N'Apellido565', N'1000000565', N'Direccion 565                           ', N'2000565', N'clienteapellido565@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (566, N'Nombre566', N'Apellido566', N'1000000566', N'Direccion 566                           ', N'2000566', N'clienteapellido566@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (567, N'Nombre567', N'Apellido567', N'1000000567', N'Direccion 567                           ', N'2000567', N'clienteapellido567@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (568, N'Nombre568', N'Apellido568', N'1000000568', N'Direccion 568                           ', N'2000568', N'clienteapellido568@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (569, N'Nombre569', N'Apellido569', N'1000000569', N'Direccion 569                           ', N'2000569', N'clienteapellido569@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (570, N'Nombre570', N'Apellido570', N'1000000570', N'Direccion 570                           ', N'2000570', N'clienteapellido570@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (571, N'Nombre571', N'Apellido571', N'1000000571', N'Direccion 571                           ', N'2000571', N'clienteapellido571@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (572, N'Nombre572', N'Apellido572', N'1000000572', N'Direccion 572                           ', N'2000572', N'clienteapellido572@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (573, N'Nombre573', N'Apellido573', N'1000000573', N'Direccion 573                           ', N'2000573', N'clienteapellido573@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (574, N'Nombre574', N'Apellido574', N'1000000574', N'Direccion 574                           ', N'2000574', N'clienteapellido574@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (575, N'Nombre575', N'Apellido575', N'1000000575', N'Direccion 575                           ', N'2000575', N'clienteapellido575@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (576, N'Nombre576', N'Apellido576', N'1000000576', N'Direccion 576                           ', N'2000576', N'clienteapellido576@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (577, N'Nombre577', N'Apellido577', N'1000000577', N'Direccion 577                           ', N'2000577', N'clienteapellido577@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (578, N'Nombre578', N'Apellido578', N'1000000578', N'Direccion 578                           ', N'2000578', N'clienteapellido578@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (579, N'Nombre579', N'Apellido579', N'1000000579', N'Direccion 579                           ', N'2000579', N'clienteapellido579@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (580, N'Nombre580', N'Apellido580', N'1000000580', N'Direccion 580                           ', N'2000580', N'clienteapellido580@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (581, N'Nombre581', N'Apellido581', N'1000000581', N'Direccion 581                           ', N'2000581', N'clienteapellido581@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (582, N'Nombre582', N'Apellido582', N'1000000582', N'Direccion 582                           ', N'2000582', N'clienteapellido582@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (583, N'Nombre583', N'Apellido583', N'1000000583', N'Direccion 583                           ', N'2000583', N'clienteapellido583@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (584, N'Nombre584', N'Apellido584', N'1000000584', N'Direccion 584                           ', N'2000584', N'clienteapellido584@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (585, N'Nombre585', N'Apellido585', N'1000000585', N'Direccion 585                           ', N'2000585', N'clienteapellido585@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (586, N'Nombre586', N'Apellido586', N'1000000586', N'Direccion 586                           ', N'2000586', N'clienteapellido586@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (587, N'Nombre587', N'Apellido587', N'1000000587', N'Direccion 587                           ', N'2000587', N'clienteapellido587@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (588, N'Nombre588', N'Apellido588', N'1000000588', N'Direccion 588                           ', N'2000588', N'clienteapellido588@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (589, N'Nombre589', N'Apellido589', N'1000000589', N'Direccion 589                           ', N'2000589', N'clienteapellido589@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (590, N'Nombre590', N'Apellido590', N'1000000590', N'Direccion 590                           ', N'2000590', N'clienteapellido590@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (591, N'Nombre591', N'Apellido591', N'1000000591', N'Direccion 591                           ', N'2000591', N'clienteapellido591@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (592, N'Nombre592', N'Apellido592', N'1000000592', N'Direccion 592                           ', N'2000592', N'clienteapellido592@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (593, N'Nombre593', N'Apellido593', N'1000000593', N'Direccion 593                           ', N'2000593', N'clienteapellido593@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (594, N'Nombre594', N'Apellido594', N'1000000594', N'Direccion 594                           ', N'2000594', N'clienteapellido594@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (595, N'Nombre595', N'Apellido595', N'1000000595', N'Direccion 595                           ', N'2000595', N'clienteapellido595@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (596, N'Nombre596', N'Apellido596', N'1000000596', N'Direccion 596                           ', N'2000596', N'clienteapellido596@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (597, N'Nombre597', N'Apellido597', N'1000000597', N'Direccion 597                           ', N'2000597', N'clienteapellido597@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (598, N'Nombre598', N'Apellido598', N'1000000598', N'Direccion 598                           ', N'2000598', N'clienteapellido598@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (599, N'Nombre599', N'Apellido599', N'1000000599', N'Direccion 599                           ', N'2000599', N'clienteapellido599@udlanet.ec')
GO
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (600, N'Nombre600', N'Apellido600', N'1000000600', N'Direccion 600                           ', N'2000600', N'clienteapellido600@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (601, N'Nombre601', N'Apellido601', N'1000000601', N'Direccion 601                           ', N'2000601', N'clienteapellido601@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (602, N'Nombre602', N'Apellido602', N'1000000602', N'Direccion 602                           ', N'2000602', N'clienteapellido602@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (603, N'Nombre603', N'Apellido603', N'1000000603', N'Direccion 603                           ', N'2000603', N'clienteapellido603@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (604, N'Nombre604', N'Apellido604', N'1000000604', N'Direccion 604                           ', N'2000604', N'clienteapellido604@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (605, N'Nombre605', N'Apellido605', N'1000000605', N'Direccion 605                           ', N'2000605', N'clienteapellido605@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (606, N'Nombre606', N'Apellido606', N'1000000606', N'Direccion 606                           ', N'2000606', N'clienteapellido606@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (607, N'Nombre607', N'Apellido607', N'1000000607', N'Direccion 607                           ', N'2000607', N'clienteapellido607@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (608, N'Nombre608', N'Apellido608', N'1000000608', N'Direccion 608                           ', N'2000608', N'clienteapellido608@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (609, N'Nombre609', N'Apellido609', N'1000000609', N'Direccion 609                           ', N'2000609', N'clienteapellido609@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (610, N'Nombre610', N'Apellido610', N'1000000610', N'Direccion 610                           ', N'2000610', N'clienteapellido610@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (611, N'Nombre611', N'Apellido611', N'1000000611', N'Direccion 611                           ', N'2000611', N'clienteapellido611@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (612, N'Nombre612', N'Apellido612', N'1000000612', N'Direccion 612                           ', N'2000612', N'clienteapellido612@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (613, N'Nombre613', N'Apellido613', N'1000000613', N'Direccion 613                           ', N'2000613', N'clienteapellido613@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (614, N'Nombre614', N'Apellido614', N'1000000614', N'Direccion 614                           ', N'2000614', N'clienteapellido614@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (615, N'Nombre615', N'Apellido615', N'1000000615', N'Direccion 615                           ', N'2000615', N'clienteapellido615@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (616, N'Nombre616', N'Apellido616', N'1000000616', N'Direccion 616                           ', N'2000616', N'clienteapellido616@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (617, N'Nombre617', N'Apellido617', N'1000000617', N'Direccion 617                           ', N'2000617', N'clienteapellido617@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (618, N'Nombre618', N'Apellido618', N'1000000618', N'Direccion 618                           ', N'2000618', N'clienteapellido618@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (619, N'Nombre619', N'Apellido619', N'1000000619', N'Direccion 619                           ', N'2000619', N'clienteapellido619@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (620, N'Nombre620', N'Apellido620', N'1000000620', N'Direccion 620                           ', N'2000620', N'clienteapellido620@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (621, N'Nombre621', N'Apellido621', N'1000000621', N'Direccion 621                           ', N'2000621', N'clienteapellido621@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (622, N'Nombre622', N'Apellido622', N'1000000622', N'Direccion 622                           ', N'2000622', N'clienteapellido622@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (623, N'Nombre623', N'Apellido623', N'1000000623', N'Direccion 623                           ', N'2000623', N'clienteapellido623@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (624, N'Nombre624', N'Apellido624', N'1000000624', N'Direccion 624                           ', N'2000624', N'clienteapellido624@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (625, N'Nombre625', N'Apellido625', N'1000000625', N'Direccion 625                           ', N'2000625', N'clienteapellido625@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (626, N'Nombre626', N'Apellido626', N'1000000626', N'Direccion 626                           ', N'2000626', N'clienteapellido626@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (627, N'Nombre627', N'Apellido627', N'1000000627', N'Direccion 627                           ', N'2000627', N'clienteapellido627@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (628, N'Nombre628', N'Apellido628', N'1000000628', N'Direccion 628                           ', N'2000628', N'clienteapellido628@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (629, N'Nombre629', N'Apellido629', N'1000000629', N'Direccion 629                           ', N'2000629', N'clienteapellido629@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (630, N'Nombre630', N'Apellido630', N'1000000630', N'Direccion 630                           ', N'2000630', N'clienteapellido630@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (631, N'Nombre631', N'Apellido631', N'1000000631', N'Direccion 631                           ', N'2000631', N'clienteapellido631@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (632, N'Nombre632', N'Apellido632', N'1000000632', N'Direccion 632                           ', N'2000632', N'clienteapellido632@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (633, N'Nombre633', N'Apellido633', N'1000000633', N'Direccion 633                           ', N'2000633', N'clienteapellido633@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (634, N'Nombre634', N'Apellido634', N'1000000634', N'Direccion 634                           ', N'2000634', N'clienteapellido634@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (635, N'Nombre635', N'Apellido635', N'1000000635', N'Direccion 635                           ', N'2000635', N'clienteapellido635@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (636, N'Nombre636', N'Apellido636', N'1000000636', N'Direccion 636                           ', N'2000636', N'clienteapellido636@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (637, N'Nombre637', N'Apellido637', N'1000000637', N'Direccion 637                           ', N'2000637', N'clienteapellido637@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (638, N'Nombre638', N'Apellido638', N'1000000638', N'Direccion 638                           ', N'2000638', N'clienteapellido638@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (639, N'Nombre639', N'Apellido639', N'1000000639', N'Direccion 639                           ', N'2000639', N'clienteapellido639@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (640, N'Nombre640', N'Apellido640', N'1000000640', N'Direccion 640                           ', N'2000640', N'clienteapellido640@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (641, N'Nombre641', N'Apellido641', N'1000000641', N'Direccion 641                           ', N'2000641', N'clienteapellido641@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (642, N'Nombre642', N'Apellido642', N'1000000642', N'Direccion 642                           ', N'2000642', N'clienteapellido642@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (643, N'Nombre643', N'Apellido643', N'1000000643', N'Direccion 643                           ', N'2000643', N'clienteapellido643@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (644, N'Nombre644', N'Apellido644', N'1000000644', N'Direccion 644                           ', N'2000644', N'clienteapellido644@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (645, N'Nombre645', N'Apellido645', N'1000000645', N'Direccion 645                           ', N'2000645', N'clienteapellido645@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (646, N'Nombre646', N'Apellido646', N'1000000646', N'Direccion 646                           ', N'2000646', N'clienteapellido646@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (647, N'Nombre647', N'Apellido647', N'1000000647', N'Direccion 647                           ', N'2000647', N'clienteapellido647@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (648, N'Nombre648', N'Apellido648', N'1000000648', N'Direccion 648                           ', N'2000648', N'clienteapellido648@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (649, N'Nombre649', N'Apellido649', N'1000000649', N'Direccion 649                           ', N'2000649', N'clienteapellido649@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (650, N'Nombre650', N'Apellido650', N'1000000650', N'Direccion 650                           ', N'2000650', N'clienteapellido650@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (651, N'Nombre651', N'Apellido651', N'1000000651', N'Direccion 651                           ', N'2000651', N'clienteapellido651@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (652, N'Nombre652', N'Apellido652', N'1000000652', N'Direccion 652                           ', N'2000652', N'clienteapellido652@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (653, N'Nombre653', N'Apellido653', N'1000000653', N'Direccion 653                           ', N'2000653', N'clienteapellido653@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (654, N'Nombre654', N'Apellido654', N'1000000654', N'Direccion 654                           ', N'2000654', N'clienteapellido654@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (655, N'Nombre655', N'Apellido655', N'1000000655', N'Direccion 655                           ', N'2000655', N'clienteapellido655@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (656, N'Nombre656', N'Apellido656', N'1000000656', N'Direccion 656                           ', N'2000656', N'clienteapellido656@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (657, N'Nombre657', N'Apellido657', N'1000000657', N'Direccion 657                           ', N'2000657', N'clienteapellido657@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (658, N'Nombre658', N'Apellido658', N'1000000658', N'Direccion 658                           ', N'2000658', N'clienteapellido658@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (659, N'Nombre659', N'Apellido659', N'1000000659', N'Direccion 659                           ', N'2000659', N'clienteapellido659@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (660, N'Nombre660', N'Apellido660', N'1000000660', N'Direccion 660                           ', N'2000660', N'clienteapellido660@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (661, N'Nombre661', N'Apellido661', N'1000000661', N'Direccion 661                           ', N'2000661', N'clienteapellido661@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (662, N'Nombre662', N'Apellido662', N'1000000662', N'Direccion 662                           ', N'2000662', N'clienteapellido662@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (663, N'Nombre663', N'Apellido663', N'1000000663', N'Direccion 663                           ', N'2000663', N'clienteapellido663@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (664, N'Nombre664', N'Apellido664', N'1000000664', N'Direccion 664                           ', N'2000664', N'clienteapellido664@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (665, N'Nombre665', N'Apellido665', N'1000000665', N'Direccion 665                           ', N'2000665', N'clienteapellido665@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (666, N'Nombre666', N'Apellido666', N'1000000666', N'Direccion 666                           ', N'2000666', N'clienteapellido666@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (667, N'Nombre667', N'Apellido667', N'1000000667', N'Direccion 667                           ', N'2000667', N'clienteapellido667@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (668, N'Nombre668', N'Apellido668', N'1000000668', N'Direccion 668                           ', N'2000668', N'clienteapellido668@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (669, N'Nombre669', N'Apellido669', N'1000000669', N'Direccion 669                           ', N'2000669', N'clienteapellido669@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (670, N'Nombre670', N'Apellido670', N'1000000670', N'Direccion 670                           ', N'2000670', N'clienteapellido670@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (671, N'Nombre671', N'Apellido671', N'1000000671', N'Direccion 671                           ', N'2000671', N'clienteapellido671@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (672, N'Nombre672', N'Apellido672', N'1000000672', N'Direccion 672                           ', N'2000672', N'clienteapellido672@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (673, N'Nombre673', N'Apellido673', N'1000000673', N'Direccion 673                           ', N'2000673', N'clienteapellido673@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (674, N'Nombre674', N'Apellido674', N'1000000674', N'Direccion 674                           ', N'2000674', N'clienteapellido674@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (675, N'Nombre675', N'Apellido675', N'1000000675', N'Direccion 675                           ', N'2000675', N'clienteapellido675@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (676, N'Nombre676', N'Apellido676', N'1000000676', N'Direccion 676                           ', N'2000676', N'clienteapellido676@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (677, N'Nombre677', N'Apellido677', N'1000000677', N'Direccion 677                           ', N'2000677', N'clienteapellido677@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (678, N'Nombre678', N'Apellido678', N'1000000678', N'Direccion 678                           ', N'2000678', N'clienteapellido678@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (679, N'Nombre679', N'Apellido679', N'1000000679', N'Direccion 679                           ', N'2000679', N'clienteapellido679@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (680, N'Nombre680', N'Apellido680', N'1000000680', N'Direccion 680                           ', N'2000680', N'clienteapellido680@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (681, N'Nombre681', N'Apellido681', N'1000000681', N'Direccion 681                           ', N'2000681', N'clienteapellido681@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (682, N'Nombre682', N'Apellido682', N'1000000682', N'Direccion 682                           ', N'2000682', N'clienteapellido682@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (683, N'Nombre683', N'Apellido683', N'1000000683', N'Direccion 683                           ', N'2000683', N'clienteapellido683@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (684, N'Nombre684', N'Apellido684', N'1000000684', N'Direccion 684                           ', N'2000684', N'clienteapellido684@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (685, N'Nombre685', N'Apellido685', N'1000000685', N'Direccion 685                           ', N'2000685', N'clienteapellido685@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (686, N'Nombre686', N'Apellido686', N'1000000686', N'Direccion 686                           ', N'2000686', N'clienteapellido686@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (687, N'Nombre687', N'Apellido687', N'1000000687', N'Direccion 687                           ', N'2000687', N'clienteapellido687@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (688, N'Nombre688', N'Apellido688', N'1000000688', N'Direccion 688                           ', N'2000688', N'clienteapellido688@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (689, N'Nombre689', N'Apellido689', N'1000000689', N'Direccion 689                           ', N'2000689', N'clienteapellido689@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (690, N'Nombre690', N'Apellido690', N'1000000690', N'Direccion 690                           ', N'2000690', N'clienteapellido690@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (691, N'Nombre691', N'Apellido691', N'1000000691', N'Direccion 691                           ', N'2000691', N'clienteapellido691@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (692, N'Nombre692', N'Apellido692', N'1000000692', N'Direccion 692                           ', N'2000692', N'clienteapellido692@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (693, N'Nombre693', N'Apellido693', N'1000000693', N'Direccion 693                           ', N'2000693', N'clienteapellido693@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (694, N'Nombre694', N'Apellido694', N'1000000694', N'Direccion 694                           ', N'2000694', N'clienteapellido694@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (695, N'Nombre695', N'Apellido695', N'1000000695', N'Direccion 695                           ', N'2000695', N'clienteapellido695@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (696, N'Nombre696', N'Apellido696', N'1000000696', N'Direccion 696                           ', N'2000696', N'clienteapellido696@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (697, N'Nombre697', N'Apellido697', N'1000000697', N'Direccion 697                           ', N'2000697', N'clienteapellido697@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (698, N'Nombre698', N'Apellido698', N'1000000698', N'Direccion 698                           ', N'2000698', N'clienteapellido698@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (699, N'Nombre699', N'Apellido699', N'1000000699', N'Direccion 699                           ', N'2000699', N'clienteapellido699@udlanet.ec')
GO
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (700, N'Nombre700', N'Apellido700', N'1000000700', N'Direccion 700                           ', N'2000700', N'clienteapellido700@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (701, N'Nombre701', N'Apellido701', N'1000000701', N'Direccion 701                           ', N'2000701', N'clienteapellido701@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (702, N'Nombre702', N'Apellido702', N'1000000702', N'Direccion 702                           ', N'2000702', N'clienteapellido702@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (703, N'Nombre703', N'Apellido703', N'1000000703', N'Direccion 703                           ', N'2000703', N'clienteapellido703@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (704, N'Nombre704', N'Apellido704', N'1000000704', N'Direccion 704                           ', N'2000704', N'clienteapellido704@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (705, N'Nombre705', N'Apellido705', N'1000000705', N'Direccion 705                           ', N'2000705', N'clienteapellido705@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (706, N'Nombre706', N'Apellido706', N'1000000706', N'Direccion 706                           ', N'2000706', N'clienteapellido706@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (707, N'Nombre707', N'Apellido707', N'1000000707', N'Direccion 707                           ', N'2000707', N'clienteapellido707@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (708, N'Nombre708', N'Apellido708', N'1000000708', N'Direccion 708                           ', N'2000708', N'clienteapellido708@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (709, N'Nombre709', N'Apellido709', N'1000000709', N'Direccion 709                           ', N'2000709', N'clienteapellido709@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (710, N'Nombre710', N'Apellido710', N'1000000710', N'Direccion 710                           ', N'2000710', N'clienteapellido710@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (711, N'Nombre711', N'Apellido711', N'1000000711', N'Direccion 711                           ', N'2000711', N'clienteapellido711@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (712, N'Nombre712', N'Apellido712', N'1000000712', N'Direccion 712                           ', N'2000712', N'clienteapellido712@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (713, N'Nombre713', N'Apellido713', N'1000000713', N'Direccion 713                           ', N'2000713', N'clienteapellido713@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (714, N'Nombre714', N'Apellido714', N'1000000714', N'Direccion 714                           ', N'2000714', N'clienteapellido714@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (715, N'Nombre715', N'Apellido715', N'1000000715', N'Direccion 715                           ', N'2000715', N'clienteapellido715@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (716, N'Nombre716', N'Apellido716', N'1000000716', N'Direccion 716                           ', N'2000716', N'clienteapellido716@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (717, N'Nombre717', N'Apellido717', N'1000000717', N'Direccion 717                           ', N'2000717', N'clienteapellido717@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (718, N'Nombre718', N'Apellido718', N'1000000718', N'Direccion 718                           ', N'2000718', N'clienteapellido718@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (719, N'Nombre719', N'Apellido719', N'1000000719', N'Direccion 719                           ', N'2000719', N'clienteapellido719@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (720, N'Nombre720', N'Apellido720', N'1000000720', N'Direccion 720                           ', N'2000720', N'clienteapellido720@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (721, N'Nombre721', N'Apellido721', N'1000000721', N'Direccion 721                           ', N'2000721', N'clienteapellido721@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (722, N'Nombre722', N'Apellido722', N'1000000722', N'Direccion 722                           ', N'2000722', N'clienteapellido722@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (723, N'Nombre723', N'Apellido723', N'1000000723', N'Direccion 723                           ', N'2000723', N'clienteapellido723@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (724, N'Nombre724', N'Apellido724', N'1000000724', N'Direccion 724                           ', N'2000724', N'clienteapellido724@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (725, N'Nombre725', N'Apellido725', N'1000000725', N'Direccion 725                           ', N'2000725', N'clienteapellido725@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (726, N'Nombre726', N'Apellido726', N'1000000726', N'Direccion 726                           ', N'2000726', N'clienteapellido726@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (727, N'Nombre727', N'Apellido727', N'1000000727', N'Direccion 727                           ', N'2000727', N'clienteapellido727@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (728, N'Nombre728', N'Apellido728', N'1000000728', N'Direccion 728                           ', N'2000728', N'clienteapellido728@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (729, N'Nombre729', N'Apellido729', N'1000000729', N'Direccion 729                           ', N'2000729', N'clienteapellido729@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (730, N'Nombre730', N'Apellido730', N'1000000730', N'Direccion 730                           ', N'2000730', N'clienteapellido730@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (731, N'Nombre731', N'Apellido731', N'1000000731', N'Direccion 731                           ', N'2000731', N'clienteapellido731@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (732, N'Nombre732', N'Apellido732', N'1000000732', N'Direccion 732                           ', N'2000732', N'clienteapellido732@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (733, N'Nombre733', N'Apellido733', N'1000000733', N'Direccion 733                           ', N'2000733', N'clienteapellido733@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (734, N'Nombre734', N'Apellido734', N'1000000734', N'Direccion 734                           ', N'2000734', N'clienteapellido734@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (735, N'Nombre735', N'Apellido735', N'1000000735', N'Direccion 735                           ', N'2000735', N'clienteapellido735@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (736, N'Nombre736', N'Apellido736', N'1000000736', N'Direccion 736                           ', N'2000736', N'clienteapellido736@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (737, N'Nombre737', N'Apellido737', N'1000000737', N'Direccion 737                           ', N'2000737', N'clienteapellido737@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (738, N'Nombre738', N'Apellido738', N'1000000738', N'Direccion 738                           ', N'2000738', N'clienteapellido738@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (739, N'Nombre739', N'Apellido739', N'1000000739', N'Direccion 739                           ', N'2000739', N'clienteapellido739@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (740, N'Nombre740', N'Apellido740', N'1000000740', N'Direccion 740                           ', N'2000740', N'clienteapellido740@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (741, N'Nombre741', N'Apellido741', N'1000000741', N'Direccion 741                           ', N'2000741', N'clienteapellido741@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (742, N'Nombre742', N'Apellido742', N'1000000742', N'Direccion 742                           ', N'2000742', N'clienteapellido742@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (743, N'Nombre743', N'Apellido743', N'1000000743', N'Direccion 743                           ', N'2000743', N'clienteapellido743@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (744, N'Nombre744', N'Apellido744', N'1000000744', N'Direccion 744                           ', N'2000744', N'clienteapellido744@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (745, N'Nombre745', N'Apellido745', N'1000000745', N'Direccion 745                           ', N'2000745', N'clienteapellido745@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (746, N'Nombre746', N'Apellido746', N'1000000746', N'Direccion 746                           ', N'2000746', N'clienteapellido746@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (747, N'Nombre747', N'Apellido747', N'1000000747', N'Direccion 747                           ', N'2000747', N'clienteapellido747@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (748, N'Nombre748', N'Apellido748', N'1000000748', N'Direccion 748                           ', N'2000748', N'clienteapellido748@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (749, N'Nombre749', N'Apellido749', N'1000000749', N'Direccion 749                           ', N'2000749', N'clienteapellido749@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (750, N'Nombre750', N'Apellido750', N'1000000750', N'Direccion 750                           ', N'2000750', N'clienteapellido750@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (751, N'Nombre751', N'Apellido751', N'1000000751', N'Direccion 751                           ', N'2000751', N'clienteapellido751@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (752, N'Nombre752', N'Apellido752', N'1000000752', N'Direccion 752                           ', N'2000752', N'clienteapellido752@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (753, N'Nombre753', N'Apellido753', N'1000000753', N'Direccion 753                           ', N'2000753', N'clienteapellido753@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (754, N'Nombre754', N'Apellido754', N'1000000754', N'Direccion 754                           ', N'2000754', N'clienteapellido754@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (755, N'Nombre755', N'Apellido755', N'1000000755', N'Direccion 755                           ', N'2000755', N'clienteapellido755@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (756, N'Nombre756', N'Apellido756', N'1000000756', N'Direccion 756                           ', N'2000756', N'clienteapellido756@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (757, N'Nombre757', N'Apellido757', N'1000000757', N'Direccion 757                           ', N'2000757', N'clienteapellido757@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (758, N'Nombre758', N'Apellido758', N'1000000758', N'Direccion 758                           ', N'2000758', N'clienteapellido758@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (759, N'Nombre759', N'Apellido759', N'1000000759', N'Direccion 759                           ', N'2000759', N'clienteapellido759@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (760, N'Nombre760', N'Apellido760', N'1000000760', N'Direccion 760                           ', N'2000760', N'clienteapellido760@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (761, N'Nombre761', N'Apellido761', N'1000000761', N'Direccion 761                           ', N'2000761', N'clienteapellido761@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (762, N'Nombre762', N'Apellido762', N'1000000762', N'Direccion 762                           ', N'2000762', N'clienteapellido762@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (763, N'Nombre763', N'Apellido763', N'1000000763', N'Direccion 763                           ', N'2000763', N'clienteapellido763@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (764, N'Nombre764', N'Apellido764', N'1000000764', N'Direccion 764                           ', N'2000764', N'clienteapellido764@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (765, N'Nombre765', N'Apellido765', N'1000000765', N'Direccion 765                           ', N'2000765', N'clienteapellido765@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (766, N'Nombre766', N'Apellido766', N'1000000766', N'Direccion 766                           ', N'2000766', N'clienteapellido766@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (767, N'Nombre767', N'Apellido767', N'1000000767', N'Direccion 767                           ', N'2000767', N'clienteapellido767@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (768, N'Nombre768', N'Apellido768', N'1000000768', N'Direccion 768                           ', N'2000768', N'clienteapellido768@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (769, N'Nombre769', N'Apellido769', N'1000000769', N'Direccion 769                           ', N'2000769', N'clienteapellido769@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (770, N'Nombre770', N'Apellido770', N'1000000770', N'Direccion 770                           ', N'2000770', N'clienteapellido770@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (771, N'Nombre771', N'Apellido771', N'1000000771', N'Direccion 771                           ', N'2000771', N'clienteapellido771@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (772, N'Nombre772', N'Apellido772', N'1000000772', N'Direccion 772                           ', N'2000772', N'clienteapellido772@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (773, N'Nombre773', N'Apellido773', N'1000000773', N'Direccion 773                           ', N'2000773', N'clienteapellido773@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (774, N'Nombre774', N'Apellido774', N'1000000774', N'Direccion 774                           ', N'2000774', N'clienteapellido774@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (775, N'Nombre775', N'Apellido775', N'1000000775', N'Direccion 775                           ', N'2000775', N'clienteapellido775@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (776, N'Nombre776', N'Apellido776', N'1000000776', N'Direccion 776                           ', N'2000776', N'clienteapellido776@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (777, N'Nombre777', N'Apellido777', N'1000000777', N'Direccion 777                           ', N'2000777', N'clienteapellido777@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (778, N'Nombre778', N'Apellido778', N'1000000778', N'Direccion 778                           ', N'2000778', N'clienteapellido778@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (779, N'Nombre779', N'Apellido779', N'1000000779', N'Direccion 779                           ', N'2000779', N'clienteapellido779@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (780, N'Nombre780', N'Apellido780', N'1000000780', N'Direccion 780                           ', N'2000780', N'clienteapellido780@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (781, N'Nombre781', N'Apellido781', N'1000000781', N'Direccion 781                           ', N'2000781', N'clienteapellido781@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (782, N'Nombre782', N'Apellido782', N'1000000782', N'Direccion 782                           ', N'2000782', N'clienteapellido782@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (783, N'Nombre783', N'Apellido783', N'1000000783', N'Direccion 783                           ', N'2000783', N'clienteapellido783@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (784, N'Nombre784', N'Apellido784', N'1000000784', N'Direccion 784                           ', N'2000784', N'clienteapellido784@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (785, N'Nombre785', N'Apellido785', N'1000000785', N'Direccion 785                           ', N'2000785', N'clienteapellido785@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (786, N'Nombre786', N'Apellido786', N'1000000786', N'Direccion 786                           ', N'2000786', N'clienteapellido786@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (787, N'Nombre787', N'Apellido787', N'1000000787', N'Direccion 787                           ', N'2000787', N'clienteapellido787@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (788, N'Nombre788', N'Apellido788', N'1000000788', N'Direccion 788                           ', N'2000788', N'clienteapellido788@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (789, N'Nombre789', N'Apellido789', N'1000000789', N'Direccion 789                           ', N'2000789', N'clienteapellido789@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (790, N'Nombre790', N'Apellido790', N'1000000790', N'Direccion 790                           ', N'2000790', N'clienteapellido790@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (791, N'Nombre791', N'Apellido791', N'1000000791', N'Direccion 791                           ', N'2000791', N'clienteapellido791@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (792, N'Nombre792', N'Apellido792', N'1000000792', N'Direccion 792                           ', N'2000792', N'clienteapellido792@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (793, N'Nombre793', N'Apellido793', N'1000000793', N'Direccion 793                           ', N'2000793', N'clienteapellido793@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (794, N'Nombre794', N'Apellido794', N'1000000794', N'Direccion 794                           ', N'2000794', N'clienteapellido794@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (795, N'Nombre795', N'Apellido795', N'1000000795', N'Direccion 795                           ', N'2000795', N'clienteapellido795@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (796, N'Nombre796', N'Apellido796', N'1000000796', N'Direccion 796                           ', N'2000796', N'clienteapellido796@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (797, N'Nombre797', N'Apellido797', N'1000000797', N'Direccion 797                           ', N'2000797', N'clienteapellido797@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (798, N'Nombre798', N'Apellido798', N'1000000798', N'Direccion 798                           ', N'2000798', N'clienteapellido798@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (799, N'Nombre799', N'Apellido799', N'1000000799', N'Direccion 799                           ', N'2000799', N'clienteapellido799@udlanet.ec')
GO
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (800, N'Nombre800', N'Apellido800', N'1000000800', N'Direccion 800                           ', N'2000800', N'clienteapellido800@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (801, N'Nombre801', N'Apellido801', N'1000000801', N'Direccion 801                           ', N'2000801', N'clienteapellido801@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (802, N'Nombre802', N'Apellido802', N'1000000802', N'Direccion 802                           ', N'2000802', N'clienteapellido802@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (803, N'Nombre803', N'Apellido803', N'1000000803', N'Direccion 803                           ', N'2000803', N'clienteapellido803@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (804, N'Nombre804', N'Apellido804', N'1000000804', N'Direccion 804                           ', N'2000804', N'clienteapellido804@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (805, N'Nombre805', N'Apellido805', N'1000000805', N'Direccion 805                           ', N'2000805', N'clienteapellido805@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (806, N'Nombre806', N'Apellido806', N'1000000806', N'Direccion 806                           ', N'2000806', N'clienteapellido806@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (807, N'Nombre807', N'Apellido807', N'1000000807', N'Direccion 807                           ', N'2000807', N'clienteapellido807@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (808, N'Nombre808', N'Apellido808', N'1000000808', N'Direccion 808                           ', N'2000808', N'clienteapellido808@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (809, N'Nombre809', N'Apellido809', N'1000000809', N'Direccion 809                           ', N'2000809', N'clienteapellido809@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (810, N'Nombre810', N'Apellido810', N'1000000810', N'Direccion 810                           ', N'2000810', N'clienteapellido810@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (811, N'Nombre811', N'Apellido811', N'1000000811', N'Direccion 811                           ', N'2000811', N'clienteapellido811@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (812, N'Nombre812', N'Apellido812', N'1000000812', N'Direccion 812                           ', N'2000812', N'clienteapellido812@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (813, N'Nombre813', N'Apellido813', N'1000000813', N'Direccion 813                           ', N'2000813', N'clienteapellido813@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (814, N'Nombre814', N'Apellido814', N'1000000814', N'Direccion 814                           ', N'2000814', N'clienteapellido814@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (815, N'Nombre815', N'Apellido815', N'1000000815', N'Direccion 815                           ', N'2000815', N'clienteapellido815@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (816, N'Nombre816', N'Apellido816', N'1000000816', N'Direccion 816                           ', N'2000816', N'clienteapellido816@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (817, N'Nombre817', N'Apellido817', N'1000000817', N'Direccion 817                           ', N'2000817', N'clienteapellido817@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (818, N'Nombre818', N'Apellido818', N'1000000818', N'Direccion 818                           ', N'2000818', N'clienteapellido818@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (819, N'Nombre819', N'Apellido819', N'1000000819', N'Direccion 819                           ', N'2000819', N'clienteapellido819@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (820, N'Nombre820', N'Apellido820', N'1000000820', N'Direccion 820                           ', N'2000820', N'clienteapellido820@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (821, N'Nombre821', N'Apellido821', N'1000000821', N'Direccion 821                           ', N'2000821', N'clienteapellido821@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (822, N'Nombre822', N'Apellido822', N'1000000822', N'Direccion 822                           ', N'2000822', N'clienteapellido822@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (823, N'Nombre823', N'Apellido823', N'1000000823', N'Direccion 823                           ', N'2000823', N'clienteapellido823@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (824, N'Nombre824', N'Apellido824', N'1000000824', N'Direccion 824                           ', N'2000824', N'clienteapellido824@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (825, N'Nombre825', N'Apellido825', N'1000000825', N'Direccion 825                           ', N'2000825', N'clienteapellido825@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (826, N'Nombre826', N'Apellido826', N'1000000826', N'Direccion 826                           ', N'2000826', N'clienteapellido826@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (827, N'Nombre827', N'Apellido827', N'1000000827', N'Direccion 827                           ', N'2000827', N'clienteapellido827@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (828, N'Nombre828', N'Apellido828', N'1000000828', N'Direccion 828                           ', N'2000828', N'clienteapellido828@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (829, N'Nombre829', N'Apellido829', N'1000000829', N'Direccion 829                           ', N'2000829', N'clienteapellido829@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (830, N'Nombre830', N'Apellido830', N'1000000830', N'Direccion 830                           ', N'2000830', N'clienteapellido830@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (831, N'Nombre831', N'Apellido831', N'1000000831', N'Direccion 831                           ', N'2000831', N'clienteapellido831@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (832, N'Nombre832', N'Apellido832', N'1000000832', N'Direccion 832                           ', N'2000832', N'clienteapellido832@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (833, N'Nombre833', N'Apellido833', N'1000000833', N'Direccion 833                           ', N'2000833', N'clienteapellido833@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (834, N'Nombre834', N'Apellido834', N'1000000834', N'Direccion 834                           ', N'2000834', N'clienteapellido834@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (835, N'Nombre835', N'Apellido835', N'1000000835', N'Direccion 835                           ', N'2000835', N'clienteapellido835@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (836, N'Nombre836', N'Apellido836', N'1000000836', N'Direccion 836                           ', N'2000836', N'clienteapellido836@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (837, N'Nombre837', N'Apellido837', N'1000000837', N'Direccion 837                           ', N'2000837', N'clienteapellido837@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (838, N'Nombre838', N'Apellido838', N'1000000838', N'Direccion 838                           ', N'2000838', N'clienteapellido838@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (839, N'Nombre839', N'Apellido839', N'1000000839', N'Direccion 839                           ', N'2000839', N'clienteapellido839@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (840, N'Nombre840', N'Apellido840', N'1000000840', N'Direccion 840                           ', N'2000840', N'clienteapellido840@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (841, N'Nombre841', N'Apellido841', N'1000000841', N'Direccion 841                           ', N'2000841', N'clienteapellido841@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (842, N'Nombre842', N'Apellido842', N'1000000842', N'Direccion 842                           ', N'2000842', N'clienteapellido842@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (843, N'Nombre843', N'Apellido843', N'1000000843', N'Direccion 843                           ', N'2000843', N'clienteapellido843@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (844, N'Nombre844', N'Apellido844', N'1000000844', N'Direccion 844                           ', N'2000844', N'clienteapellido844@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (845, N'Nombre845', N'Apellido845', N'1000000845', N'Direccion 845                           ', N'2000845', N'clienteapellido845@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (846, N'Nombre846', N'Apellido846', N'1000000846', N'Direccion 846                           ', N'2000846', N'clienteapellido846@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (847, N'Nombre847', N'Apellido847', N'1000000847', N'Direccion 847                           ', N'2000847', N'clienteapellido847@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (848, N'Nombre848', N'Apellido848', N'1000000848', N'Direccion 848                           ', N'2000848', N'clienteapellido848@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (849, N'Nombre849', N'Apellido849', N'1000000849', N'Direccion 849                           ', N'2000849', N'clienteapellido849@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (850, N'Nombre850', N'Apellido850', N'1000000850', N'Direccion 850                           ', N'2000850', N'clienteapellido850@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (851, N'Nombre851', N'Apellido851', N'1000000851', N'Direccion 851                           ', N'2000851', N'clienteapellido851@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (852, N'Nombre852', N'Apellido852', N'1000000852', N'Direccion 852                           ', N'2000852', N'clienteapellido852@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (853, N'Nombre853', N'Apellido853', N'1000000853', N'Direccion 853                           ', N'2000853', N'clienteapellido853@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (854, N'Nombre854', N'Apellido854', N'1000000854', N'Direccion 854                           ', N'2000854', N'clienteapellido854@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (855, N'Nombre855', N'Apellido855', N'1000000855', N'Direccion 855                           ', N'2000855', N'clienteapellido855@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (856, N'Nombre856', N'Apellido856', N'1000000856', N'Direccion 856                           ', N'2000856', N'clienteapellido856@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (857, N'Nombre857', N'Apellido857', N'1000000857', N'Direccion 857                           ', N'2000857', N'clienteapellido857@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (858, N'Nombre858', N'Apellido858', N'1000000858', N'Direccion 858                           ', N'2000858', N'clienteapellido858@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (859, N'Nombre859', N'Apellido859', N'1000000859', N'Direccion 859                           ', N'2000859', N'clienteapellido859@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (860, N'Nombre860', N'Apellido860', N'1000000860', N'Direccion 860                           ', N'2000860', N'clienteapellido860@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (861, N'Nombre861', N'Apellido861', N'1000000861', N'Direccion 861                           ', N'2000861', N'clienteapellido861@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (862, N'Nombre862', N'Apellido862', N'1000000862', N'Direccion 862                           ', N'2000862', N'clienteapellido862@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (863, N'Nombre863', N'Apellido863', N'1000000863', N'Direccion 863                           ', N'2000863', N'clienteapellido863@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (864, N'Nombre864', N'Apellido864', N'1000000864', N'Direccion 864                           ', N'2000864', N'clienteapellido864@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (865, N'Nombre865', N'Apellido865', N'1000000865', N'Direccion 865                           ', N'2000865', N'clienteapellido865@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (866, N'Nombre866', N'Apellido866', N'1000000866', N'Direccion 866                           ', N'2000866', N'clienteapellido866@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (867, N'Nombre867', N'Apellido867', N'1000000867', N'Direccion 867                           ', N'2000867', N'clienteapellido867@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (868, N'Nombre868', N'Apellido868', N'1000000868', N'Direccion 868                           ', N'2000868', N'clienteapellido868@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (869, N'Nombre869', N'Apellido869', N'1000000869', N'Direccion 869                           ', N'2000869', N'clienteapellido869@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (870, N'Nombre870', N'Apellido870', N'1000000870', N'Direccion 870                           ', N'2000870', N'clienteapellido870@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (871, N'Nombre871', N'Apellido871', N'1000000871', N'Direccion 871                           ', N'2000871', N'clienteapellido871@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (872, N'Nombre872', N'Apellido872', N'1000000872', N'Direccion 872                           ', N'2000872', N'clienteapellido872@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (873, N'Nombre873', N'Apellido873', N'1000000873', N'Direccion 873                           ', N'2000873', N'clienteapellido873@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (874, N'Nombre874', N'Apellido874', N'1000000874', N'Direccion 874                           ', N'2000874', N'clienteapellido874@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (875, N'Nombre875', N'Apellido875', N'1000000875', N'Direccion 875                           ', N'2000875', N'clienteapellido875@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (876, N'Nombre876', N'Apellido876', N'1000000876', N'Direccion 876                           ', N'2000876', N'clienteapellido876@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (877, N'Nombre877', N'Apellido877', N'1000000877', N'Direccion 877                           ', N'2000877', N'clienteapellido877@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (878, N'Nombre878', N'Apellido878', N'1000000878', N'Direccion 878                           ', N'2000878', N'clienteapellido878@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (879, N'Nombre879', N'Apellido879', N'1000000879', N'Direccion 879                           ', N'2000879', N'clienteapellido879@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (880, N'Nombre880', N'Apellido880', N'1000000880', N'Direccion 880                           ', N'2000880', N'clienteapellido880@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (881, N'Nombre881', N'Apellido881', N'1000000881', N'Direccion 881                           ', N'2000881', N'clienteapellido881@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (882, N'Nombre882', N'Apellido882', N'1000000882', N'Direccion 882                           ', N'2000882', N'clienteapellido882@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (883, N'Nombre883', N'Apellido883', N'1000000883', N'Direccion 883                           ', N'2000883', N'clienteapellido883@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (884, N'Nombre884', N'Apellido884', N'1000000884', N'Direccion 884                           ', N'2000884', N'clienteapellido884@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (885, N'Nombre885', N'Apellido885', N'1000000885', N'Direccion 885                           ', N'2000885', N'clienteapellido885@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (886, N'Nombre886', N'Apellido886', N'1000000886', N'Direccion 886                           ', N'2000886', N'clienteapellido886@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (887, N'Nombre887', N'Apellido887', N'1000000887', N'Direccion 887                           ', N'2000887', N'clienteapellido887@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (888, N'Nombre888', N'Apellido888', N'1000000888', N'Direccion 888                           ', N'2000888', N'clienteapellido888@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (889, N'Nombre889', N'Apellido889', N'1000000889', N'Direccion 889                           ', N'2000889', N'clienteapellido889@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (890, N'Nombre890', N'Apellido890', N'1000000890', N'Direccion 890                           ', N'2000890', N'clienteapellido890@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (891, N'Nombre891', N'Apellido891', N'1000000891', N'Direccion 891                           ', N'2000891', N'clienteapellido891@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (892, N'Nombre892', N'Apellido892', N'1000000892', N'Direccion 892                           ', N'2000892', N'clienteapellido892@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (893, N'Nombre893', N'Apellido893', N'1000000893', N'Direccion 893                           ', N'2000893', N'clienteapellido893@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (894, N'Nombre894', N'Apellido894', N'1000000894', N'Direccion 894                           ', N'2000894', N'clienteapellido894@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (895, N'Nombre895', N'Apellido895', N'1000000895', N'Direccion 895                           ', N'2000895', N'clienteapellido895@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (896, N'Nombre896', N'Apellido896', N'1000000896', N'Direccion 896                           ', N'2000896', N'clienteapellido896@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (897, N'Nombre897', N'Apellido897', N'1000000897', N'Direccion 897                           ', N'2000897', N'clienteapellido897@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (898, N'Nombre898', N'Apellido898', N'1000000898', N'Direccion 898                           ', N'2000898', N'clienteapellido898@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (899, N'Nombre899', N'Apellido899', N'1000000899', N'Direccion 899                           ', N'2000899', N'clienteapellido899@udlanet.ec')
GO
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (900, N'Nombre900', N'Apellido900', N'1000000900', N'Direccion 900                           ', N'2000900', N'clienteapellido900@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (901, N'Nombre901', N'Apellido901', N'1000000901', N'Direccion 901                           ', N'2000901', N'clienteapellido901@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (902, N'Nombre902', N'Apellido902', N'1000000902', N'Direccion 902                           ', N'2000902', N'clienteapellido902@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (903, N'Nombre903', N'Apellido903', N'1000000903', N'Direccion 903                           ', N'2000903', N'clienteapellido903@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (904, N'Nombre904', N'Apellido904', N'1000000904', N'Direccion 904                           ', N'2000904', N'clienteapellido904@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (905, N'Nombre905', N'Apellido905', N'1000000905', N'Direccion 905                           ', N'2000905', N'clienteapellido905@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (906, N'Nombre906', N'Apellido906', N'1000000906', N'Direccion 906                           ', N'2000906', N'clienteapellido906@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (907, N'Nombre907', N'Apellido907', N'1000000907', N'Direccion 907                           ', N'2000907', N'clienteapellido907@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (908, N'Nombre908', N'Apellido908', N'1000000908', N'Direccion 908                           ', N'2000908', N'clienteapellido908@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (909, N'Nombre909', N'Apellido909', N'1000000909', N'Direccion 909                           ', N'2000909', N'clienteapellido909@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (910, N'Nombre910', N'Apellido910', N'1000000910', N'Direccion 910                           ', N'2000910', N'clienteapellido910@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (911, N'Nombre911', N'Apellido911', N'1000000911', N'Direccion 911                           ', N'2000911', N'clienteapellido911@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (912, N'Nombre912', N'Apellido912', N'1000000912', N'Direccion 912                           ', N'2000912', N'clienteapellido912@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (913, N'Nombre913', N'Apellido913', N'1000000913', N'Direccion 913                           ', N'2000913', N'clienteapellido913@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (914, N'Nombre914', N'Apellido914', N'1000000914', N'Direccion 914                           ', N'2000914', N'clienteapellido914@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (915, N'Nombre915', N'Apellido915', N'1000000915', N'Direccion 915                           ', N'2000915', N'clienteapellido915@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (916, N'Nombre916', N'Apellido916', N'1000000916', N'Direccion 916                           ', N'2000916', N'clienteapellido916@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (917, N'Nombre917', N'Apellido917', N'1000000917', N'Direccion 917                           ', N'2000917', N'clienteapellido917@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (918, N'Nombre918', N'Apellido918', N'1000000918', N'Direccion 918                           ', N'2000918', N'clienteapellido918@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (919, N'Nombre919', N'Apellido919', N'1000000919', N'Direccion 919                           ', N'2000919', N'clienteapellido919@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (920, N'Nombre920', N'Apellido920', N'1000000920', N'Direccion 920                           ', N'2000920', N'clienteapellido920@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (921, N'Nombre921', N'Apellido921', N'1000000921', N'Direccion 921                           ', N'2000921', N'clienteapellido921@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (922, N'Nombre922', N'Apellido922', N'1000000922', N'Direccion 922                           ', N'2000922', N'clienteapellido922@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (923, N'Nombre923', N'Apellido923', N'1000000923', N'Direccion 923                           ', N'2000923', N'clienteapellido923@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (924, N'Nombre924', N'Apellido924', N'1000000924', N'Direccion 924                           ', N'2000924', N'clienteapellido924@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (925, N'Nombre925', N'Apellido925', N'1000000925', N'Direccion 925                           ', N'2000925', N'clienteapellido925@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (926, N'Nombre926', N'Apellido926', N'1000000926', N'Direccion 926                           ', N'2000926', N'clienteapellido926@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (927, N'Nombre927', N'Apellido927', N'1000000927', N'Direccion 927                           ', N'2000927', N'clienteapellido927@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (928, N'Nombre928', N'Apellido928', N'1000000928', N'Direccion 928                           ', N'2000928', N'clienteapellido928@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (929, N'Nombre929', N'Apellido929', N'1000000929', N'Direccion 929                           ', N'2000929', N'clienteapellido929@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (930, N'Nombre930', N'Apellido930', N'1000000930', N'Direccion 930                           ', N'2000930', N'clienteapellido930@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (931, N'Nombre931', N'Apellido931', N'1000000931', N'Direccion 931                           ', N'2000931', N'clienteapellido931@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (932, N'Nombre932', N'Apellido932', N'1000000932', N'Direccion 932                           ', N'2000932', N'clienteapellido932@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (933, N'Nombre933', N'Apellido933', N'1000000933', N'Direccion 933                           ', N'2000933', N'clienteapellido933@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (934, N'Nombre934', N'Apellido934', N'1000000934', N'Direccion 934                           ', N'2000934', N'clienteapellido934@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (935, N'Nombre935', N'Apellido935', N'1000000935', N'Direccion 935                           ', N'2000935', N'clienteapellido935@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (936, N'Nombre936', N'Apellido936', N'1000000936', N'Direccion 936                           ', N'2000936', N'clienteapellido936@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (937, N'Nombre937', N'Apellido937', N'1000000937', N'Direccion 937                           ', N'2000937', N'clienteapellido937@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (938, N'Nombre938', N'Apellido938', N'1000000938', N'Direccion 938                           ', N'2000938', N'clienteapellido938@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (939, N'Nombre939', N'Apellido939', N'1000000939', N'Direccion 939                           ', N'2000939', N'clienteapellido939@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (940, N'Nombre940', N'Apellido940', N'1000000940', N'Direccion 940                           ', N'2000940', N'clienteapellido940@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (941, N'Nombre941', N'Apellido941', N'1000000941', N'Direccion 941                           ', N'2000941', N'clienteapellido941@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (942, N'Nombre942', N'Apellido942', N'1000000942', N'Direccion 942                           ', N'2000942', N'clienteapellido942@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (943, N'Nombre943', N'Apellido943', N'1000000943', N'Direccion 943                           ', N'2000943', N'clienteapellido943@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (944, N'Nombre944', N'Apellido944', N'1000000944', N'Direccion 944                           ', N'2000944', N'clienteapellido944@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (945, N'Nombre945', N'Apellido945', N'1000000945', N'Direccion 945                           ', N'2000945', N'clienteapellido945@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (946, N'Nombre946', N'Apellido946', N'1000000946', N'Direccion 946                           ', N'2000946', N'clienteapellido946@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (947, N'Nombre947', N'Apellido947', N'1000000947', N'Direccion 947                           ', N'2000947', N'clienteapellido947@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (948, N'Nombre948', N'Apellido948', N'1000000948', N'Direccion 948                           ', N'2000948', N'clienteapellido948@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (949, N'Nombre949', N'Apellido949', N'1000000949', N'Direccion 949                           ', N'2000949', N'clienteapellido949@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (950, N'Nombre950', N'Apellido950', N'1000000950', N'Direccion 950                           ', N'2000950', N'clienteapellido950@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (951, N'Nombre951', N'Apellido951', N'1000000951', N'Direccion 951                           ', N'2000951', N'clienteapellido951@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (952, N'Nombre952', N'Apellido952', N'1000000952', N'Direccion 952                           ', N'2000952', N'clienteapellido952@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (953, N'Nombre953', N'Apellido953', N'1000000953', N'Direccion 953                           ', N'2000953', N'clienteapellido953@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (954, N'Nombre954', N'Apellido954', N'1000000954', N'Direccion 954                           ', N'2000954', N'clienteapellido954@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (955, N'Nombre955', N'Apellido955', N'1000000955', N'Direccion 955                           ', N'2000955', N'clienteapellido955@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (956, N'Nombre956', N'Apellido956', N'1000000956', N'Direccion 956                           ', N'2000956', N'clienteapellido956@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (957, N'Nombre957', N'Apellido957', N'1000000957', N'Direccion 957                           ', N'2000957', N'clienteapellido957@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (958, N'Nombre958', N'Apellido958', N'1000000958', N'Direccion 958                           ', N'2000958', N'clienteapellido958@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (959, N'Nombre959', N'Apellido959', N'1000000959', N'Direccion 959                           ', N'2000959', N'clienteapellido959@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (960, N'Nombre960', N'Apellido960', N'1000000960', N'Direccion 960                           ', N'2000960', N'clienteapellido960@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (961, N'Nombre961', N'Apellido961', N'1000000961', N'Direccion 961                           ', N'2000961', N'clienteapellido961@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (962, N'Nombre962', N'Apellido962', N'1000000962', N'Direccion 962                           ', N'2000962', N'clienteapellido962@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (963, N'Nombre963', N'Apellido963', N'1000000963', N'Direccion 963                           ', N'2000963', N'clienteapellido963@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (964, N'Nombre964', N'Apellido964', N'1000000964', N'Direccion 964                           ', N'2000964', N'clienteapellido964@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (965, N'Nombre965', N'Apellido965', N'1000000965', N'Direccion 965                           ', N'2000965', N'clienteapellido965@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (966, N'Nombre966', N'Apellido966', N'1000000966', N'Direccion 966                           ', N'2000966', N'clienteapellido966@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (967, N'Nombre967', N'Apellido967', N'1000000967', N'Direccion 967                           ', N'2000967', N'clienteapellido967@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (968, N'Nombre968', N'Apellido968', N'1000000968', N'Direccion 968                           ', N'2000968', N'clienteapellido968@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (969, N'Nombre969', N'Apellido969', N'1000000969', N'Direccion 969                           ', N'2000969', N'clienteapellido969@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (970, N'Nombre970', N'Apellido970', N'1000000970', N'Direccion 970                           ', N'2000970', N'clienteapellido970@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (971, N'Nombre971', N'Apellido971', N'1000000971', N'Direccion 971                           ', N'2000971', N'clienteapellido971@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (972, N'Nombre972', N'Apellido972', N'1000000972', N'Direccion 972                           ', N'2000972', N'clienteapellido972@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (973, N'Nombre973', N'Apellido973', N'1000000973', N'Direccion 973                           ', N'2000973', N'clienteapellido973@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (974, N'Nombre974', N'Apellido974', N'1000000974', N'Direccion 974                           ', N'2000974', N'clienteapellido974@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (975, N'Nombre975', N'Apellido975', N'1000000975', N'Direccion 975                           ', N'2000975', N'clienteapellido975@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (976, N'Nombre976', N'Apellido976', N'1000000976', N'Direccion 976                           ', N'2000976', N'clienteapellido976@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (977, N'Nombre977', N'Apellido977', N'1000000977', N'Direccion 977                           ', N'2000977', N'clienteapellido977@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (978, N'Nombre978', N'Apellido978', N'1000000978', N'Direccion 978                           ', N'2000978', N'clienteapellido978@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (979, N'Nombre979', N'Apellido979', N'1000000979', N'Direccion 979                           ', N'2000979', N'clienteapellido979@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (980, N'Nombre980', N'Apellido980', N'1000000980', N'Direccion 980                           ', N'2000980', N'clienteapellido980@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (981, N'Nombre981', N'Apellido981', N'1000000981', N'Direccion 981                           ', N'2000981', N'clienteapellido981@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (982, N'Nombre982', N'Apellido982', N'1000000982', N'Direccion 982                           ', N'2000982', N'clienteapellido982@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (983, N'Nombre983', N'Apellido983', N'1000000983', N'Direccion 983                           ', N'2000983', N'clienteapellido983@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (984, N'Nombre984', N'Apellido984', N'1000000984', N'Direccion 984                           ', N'2000984', N'clienteapellido984@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (985, N'Nombre985', N'Apellido985', N'1000000985', N'Direccion 985                           ', N'2000985', N'clienteapellido985@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (986, N'Nombre986', N'Apellido986', N'1000000986', N'Direccion 986                           ', N'2000986', N'clienteapellido986@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (987, N'Nombre987', N'Apellido987', N'1000000987', N'Direccion 987                           ', N'2000987', N'clienteapellido987@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (988, N'Nombre988', N'Apellido988', N'1000000988', N'Direccion 988                           ', N'2000988', N'clienteapellido988@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (989, N'Nombre989', N'Apellido989', N'1000000989', N'Direccion 989                           ', N'2000989', N'clienteapellido989@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (990, N'Nombre990', N'Apellido990', N'1000000990', N'Direccion 990                           ', N'2000990', N'clienteapellido990@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (991, N'Nombre991', N'Apellido991', N'1000000991', N'Direccion 991                           ', N'2000991', N'clienteapellido991@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (992, N'Nombre992', N'Apellido992', N'1000000992', N'Direccion 992                           ', N'2000992', N'clienteapellido992@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (993, N'Nombre993', N'Apellido993', N'1000000993', N'Direccion 993                           ', N'2000993', N'clienteapellido993@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (994, N'Nombre994', N'Apellido994', N'1000000994', N'Direccion 994                           ', N'2000994', N'clienteapellido994@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (995, N'Nombre995', N'Apellido995', N'1000000995', N'Direccion 995                           ', N'2000995', N'clienteapellido995@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (996, N'Nombre996', N'Apellido996', N'1000000996', N'Direccion 996                           ', N'2000996', N'clienteapellido996@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (997, N'Nombre997', N'Apellido997', N'1000000997', N'Direccion 997                           ', N'2000997', N'clienteapellido997@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (998, N'Nombre998', N'Apellido998', N'1000000998', N'Direccion 998                           ', N'2000998', N'clienteapellido998@udlanet.ec')
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (999, N'Nombre999', N'Apellido999', N'1000000999', N'Direccion 999                           ', N'2000999', N'clienteapellido999@udlanet.ec')
GO
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApellidoCliente], [IdentificacionCliente], [DireccionCliente], [TelefonoCliente], [CorreoElectronicoCliente]) VALUES (1000, N'Nombre1000', N'Apellido1000', N'1000001000', N'Direccion 1000                          ', N'2001000', N'clienteapellido1000@udlanet.ec')
SET IDENTITY_INSERT [dbo].[Cliente] OFF
SET IDENTITY_INSERT [dbo].[Proveedor] ON 

INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (1, N'Proveedor 1', N'1000000000001', N'Direccion 1', N'2000001')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (2, N'Proveedor 2', N'1000000000002', N'Direccion 2', N'2000002')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (3, N'Proveedor 3', N'1000000000003', N'Direccion 3', N'2000003')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (4, N'Proveedor 4', N'1000000000004', N'Direccion 4', N'2000004')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (5, N'Proveedor 5', N'1000000000005', N'Direccion 5', N'2000005')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (6, N'Proveedor 6', N'1000000000006', N'Direccion 6', N'2000006')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (7, N'Proveedor 7', N'1000000000007', N'Direccion 7', N'2000007')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (8, N'Proveedor 8', N'1000000000008', N'Direccion 8', N'2000008')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (9, N'Proveedor 9', N'1000000000009', N'Direccion 9', N'2000009')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (10, N'Proveedor 10', N'1000000000010', N'Direccion 10', N'2000010')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (11, N'Proveedor 11', N'1000000000011', N'Direccion 11', N'2000011')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (12, N'Proveedor 12', N'1000000000012', N'Direccion 12', N'2000012')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (13, N'Proveedor 13', N'1000000000013', N'Direccion 13', N'2000013')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (14, N'Proveedor 14', N'1000000000014', N'Direccion 14', N'2000014')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (15, N'Proveedor 15', N'1000000000015', N'Direccion 15', N'2000015')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (16, N'Proveedor 16', N'1000000000016', N'Direccion 16', N'2000016')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (17, N'Proveedor 17', N'1000000000017', N'Direccion 17', N'2000017')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (18, N'Proveedor 18', N'1000000000018', N'Direccion 18', N'2000018')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (19, N'Proveedor 19', N'1000000000019', N'Direccion 19', N'2000019')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (20, N'Proveedor 20', N'1000000000020', N'Direccion 20', N'2000020')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (21, N'Proveedor 21', N'1000000000021', N'Direccion 21', N'2000021')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (22, N'Proveedor 22', N'1000000000022', N'Direccion 22', N'2000022')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (23, N'Proveedor 23', N'1000000000023', N'Direccion 23', N'2000023')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (24, N'Proveedor 24', N'1000000000024', N'Direccion 24', N'2000024')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (25, N'Proveedor 25', N'1000000000025', N'Direccion 25', N'2000025')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (26, N'Proveedor 26', N'1000000000026', N'Direccion 26', N'2000026')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (27, N'Proveedor 27', N'1000000000027', N'Direccion 27', N'2000027')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (28, N'Proveedor 28', N'1000000000028', N'Direccion 28', N'2000028')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (29, N'Proveedor 29', N'1000000000029', N'Direccion 29', N'2000029')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (30, N'Proveedor 30', N'1000000000030', N'Direccion 30', N'2000030')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (31, N'Proveedor 31', N'1000000000031', N'Direccion 31', N'2000031')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (32, N'Proveedor 32', N'1000000000032', N'Direccion 32', N'2000032')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (33, N'Proveedor 33', N'1000000000033', N'Direccion 33', N'2000033')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (34, N'Proveedor 34', N'1000000000034', N'Direccion 34', N'2000034')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (35, N'Proveedor 35', N'1000000000035', N'Direccion 35', N'2000035')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (36, N'Proveedor 36', N'1000000000036', N'Direccion 36', N'2000036')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (37, N'Proveedor 37', N'1000000000037', N'Direccion 37', N'2000037')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (38, N'Proveedor 38', N'1000000000038', N'Direccion 38', N'2000038')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (39, N'Proveedor 39', N'1000000000039', N'Direccion 39', N'2000039')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (40, N'Proveedor 40', N'1000000000040', N'Direccion 40', N'2000040')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (41, N'Proveedor 41', N'1000000000041', N'Direccion 41', N'2000041')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (42, N'Proveedor 42', N'1000000000042', N'Direccion 42', N'2000042')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (43, N'Proveedor 43', N'1000000000043', N'Direccion 43', N'2000043')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (44, N'Proveedor 44', N'1000000000044', N'Direccion 44', N'2000044')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (45, N'Proveedor 45', N'1000000000045', N'Direccion 45', N'2000045')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (46, N'Proveedor 46', N'1000000000046', N'Direccion 46', N'2000046')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (47, N'Proveedor 47', N'1000000000047', N'Direccion 47', N'2000047')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (48, N'Proveedor 48', N'1000000000048', N'Direccion 48', N'2000048')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (49, N'Proveedor 49', N'1000000000049', N'Direccion 49', N'2000049')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (50, N'Proveedor 50', N'1000000000050', N'Direccion 50', N'2000050')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (51, N'Proveedor 51', N'1000000000051', N'Direccion 51', N'2000051')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (52, N'Proveedor 52', N'1000000000052', N'Direccion 52', N'2000052')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (53, N'Proveedor 53', N'1000000000053', N'Direccion 53', N'2000053')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (54, N'Proveedor 54', N'1000000000054', N'Direccion 54', N'2000054')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (55, N'Proveedor 55', N'1000000000055', N'Direccion 55', N'2000055')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (56, N'Proveedor 56', N'1000000000056', N'Direccion 56', N'2000056')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (57, N'Proveedor 57', N'1000000000057', N'Direccion 57', N'2000057')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (58, N'Proveedor 58', N'1000000000058', N'Direccion 58', N'2000058')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (59, N'Proveedor 59', N'1000000000059', N'Direccion 59', N'2000059')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (60, N'Proveedor 60', N'1000000000060', N'Direccion 60', N'2000060')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (61, N'Proveedor 61', N'1000000000061', N'Direccion 61', N'2000061')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (62, N'Proveedor 62', N'1000000000062', N'Direccion 62', N'2000062')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (63, N'Proveedor 63', N'1000000000063', N'Direccion 63', N'2000063')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (64, N'Proveedor 64', N'1000000000064', N'Direccion 64', N'2000064')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (65, N'Proveedor 65', N'1000000000065', N'Direccion 65', N'2000065')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (66, N'Proveedor 66', N'1000000000066', N'Direccion 66', N'2000066')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (67, N'Proveedor 67', N'1000000000067', N'Direccion 67', N'2000067')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (68, N'Proveedor 68', N'1000000000068', N'Direccion 68', N'2000068')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (69, N'Proveedor 69', N'1000000000069', N'Direccion 69', N'2000069')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (70, N'Proveedor 70', N'1000000000070', N'Direccion 70', N'2000070')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (71, N'Proveedor 71', N'1000000000071', N'Direccion 71', N'2000071')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (72, N'Proveedor 72', N'1000000000072', N'Direccion 72', N'2000072')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (73, N'Proveedor 73', N'1000000000073', N'Direccion 73', N'2000073')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (74, N'Proveedor 74', N'1000000000074', N'Direccion 74', N'2000074')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (75, N'Proveedor 75', N'1000000000075', N'Direccion 75', N'2000075')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (76, N'Proveedor 76', N'1000000000076', N'Direccion 76', N'2000076')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (77, N'Proveedor 77', N'1000000000077', N'Direccion 77', N'2000077')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (78, N'Proveedor 78', N'1000000000078', N'Direccion 78', N'2000078')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (79, N'Proveedor 79', N'1000000000079', N'Direccion 79', N'2000079')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (80, N'Proveedor 80', N'1000000000080', N'Direccion 80', N'2000080')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (81, N'Proveedor 81', N'1000000000081', N'Direccion 81', N'2000081')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (82, N'Proveedor 82', N'1000000000082', N'Direccion 82', N'2000082')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (83, N'Proveedor 83', N'1000000000083', N'Direccion 83', N'2000083')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (84, N'Proveedor 84', N'1000000000084', N'Direccion 84', N'2000084')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (85, N'Proveedor 85', N'1000000000085', N'Direccion 85', N'2000085')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (86, N'Proveedor 86', N'1000000000086', N'Direccion 86', N'2000086')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (87, N'Proveedor 87', N'1000000000087', N'Direccion 87', N'2000087')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (88, N'Proveedor 88', N'1000000000088', N'Direccion 88', N'2000088')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (89, N'Proveedor 89', N'1000000000089', N'Direccion 89', N'2000089')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (90, N'Proveedor 90', N'1000000000090', N'Direccion 90', N'2000090')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (91, N'Proveedor 91', N'1000000000091', N'Direccion 91', N'2000091')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (92, N'Proveedor 92', N'1000000000092', N'Direccion 92', N'2000092')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (93, N'Proveedor 93', N'1000000000093', N'Direccion 93', N'2000093')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (94, N'Proveedor 94', N'1000000000094', N'Direccion 94', N'2000094')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (95, N'Proveedor 95', N'1000000000095', N'Direccion 95', N'2000095')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (96, N'Proveedor 96', N'1000000000096', N'Direccion 96', N'2000096')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (97, N'Proveedor 97', N'1000000000097', N'Direccion 97', N'2000097')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (98, N'Proveedor 98', N'1000000000098', N'Direccion 98', N'2000098')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (99, N'Proveedor 99', N'1000000000099', N'Direccion 99', N'2000099')
GO
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (100, N'Proveedor 100', N'1000000000100', N'Direccion 100', N'2000100')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (101, N'Proveedor 101', N'1000000000101', N'Direccion 101', N'2000101')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (102, N'Proveedor 102', N'1000000000102', N'Direccion 102', N'2000102')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (103, N'Proveedor 103', N'1000000000103', N'Direccion 103', N'2000103')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (104, N'Proveedor 104', N'1000000000104', N'Direccion 104', N'2000104')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (105, N'Proveedor 105', N'1000000000105', N'Direccion 105', N'2000105')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (106, N'Proveedor 106', N'1000000000106', N'Direccion 106', N'2000106')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (107, N'Proveedor 107', N'1000000000107', N'Direccion 107', N'2000107')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (108, N'Proveedor 108', N'1000000000108', N'Direccion 108', N'2000108')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (109, N'Proveedor 109', N'1000000000109', N'Direccion 109', N'2000109')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (110, N'Proveedor 110', N'1000000000110', N'Direccion 110', N'2000110')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (111, N'Proveedor 111', N'1000000000111', N'Direccion 111', N'2000111')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (112, N'Proveedor 112', N'1000000000112', N'Direccion 112', N'2000112')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (113, N'Proveedor 113', N'1000000000113', N'Direccion 113', N'2000113')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (114, N'Proveedor 114', N'1000000000114', N'Direccion 114', N'2000114')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (115, N'Proveedor 115', N'1000000000115', N'Direccion 115', N'2000115')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (116, N'Proveedor 116', N'1000000000116', N'Direccion 116', N'2000116')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (117, N'Proveedor 117', N'1000000000117', N'Direccion 117', N'2000117')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (118, N'Proveedor 118', N'1000000000118', N'Direccion 118', N'2000118')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (119, N'Proveedor 119', N'1000000000119', N'Direccion 119', N'2000119')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (120, N'Proveedor 120', N'1000000000120', N'Direccion 120', N'2000120')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (121, N'Proveedor 121', N'1000000000121', N'Direccion 121', N'2000121')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (122, N'Proveedor 122', N'1000000000122', N'Direccion 122', N'2000122')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (123, N'Proveedor 123', N'1000000000123', N'Direccion 123', N'2000123')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (124, N'Proveedor 124', N'1000000000124', N'Direccion 124', N'2000124')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (125, N'Proveedor 125', N'1000000000125', N'Direccion 125', N'2000125')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (126, N'Proveedor 126', N'1000000000126', N'Direccion 126', N'2000126')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (127, N'Proveedor 127', N'1000000000127', N'Direccion 127', N'2000127')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (128, N'Proveedor 128', N'1000000000128', N'Direccion 128', N'2000128')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (129, N'Proveedor 129', N'1000000000129', N'Direccion 129', N'2000129')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (130, N'Proveedor 130', N'1000000000130', N'Direccion 130', N'2000130')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (131, N'Proveedor 131', N'1000000000131', N'Direccion 131', N'2000131')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (132, N'Proveedor 132', N'1000000000132', N'Direccion 132', N'2000132')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (133, N'Proveedor 133', N'1000000000133', N'Direccion 133', N'2000133')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (134, N'Proveedor 134', N'1000000000134', N'Direccion 134', N'2000134')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (135, N'Proveedor 135', N'1000000000135', N'Direccion 135', N'2000135')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (136, N'Proveedor 136', N'1000000000136', N'Direccion 136', N'2000136')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (137, N'Proveedor 137', N'1000000000137', N'Direccion 137', N'2000137')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (138, N'Proveedor 138', N'1000000000138', N'Direccion 138', N'2000138')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (139, N'Proveedor 139', N'1000000000139', N'Direccion 139', N'2000139')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (140, N'Proveedor 140', N'1000000000140', N'Direccion 140', N'2000140')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (141, N'Proveedor 141', N'1000000000141', N'Direccion 141', N'2000141')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (142, N'Proveedor 142', N'1000000000142', N'Direccion 142', N'2000142')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (143, N'Proveedor 143', N'1000000000143', N'Direccion 143', N'2000143')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (144, N'Proveedor 144', N'1000000000144', N'Direccion 144', N'2000144')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (145, N'Proveedor 145', N'1000000000145', N'Direccion 145', N'2000145')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (146, N'Proveedor 146', N'1000000000146', N'Direccion 146', N'2000146')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (147, N'Proveedor 147', N'1000000000147', N'Direccion 147', N'2000147')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (148, N'Proveedor 148', N'1000000000148', N'Direccion 148', N'2000148')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (149, N'Proveedor 149', N'1000000000149', N'Direccion 149', N'2000149')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (150, N'Proveedor 150', N'1000000000150', N'Direccion 150', N'2000150')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (151, N'Proveedor 151', N'1000000000151', N'Direccion 151', N'2000151')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (152, N'Proveedor 152', N'1000000000152', N'Direccion 152', N'2000152')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (153, N'Proveedor 153', N'1000000000153', N'Direccion 153', N'2000153')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (154, N'Proveedor 154', N'1000000000154', N'Direccion 154', N'2000154')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (155, N'Proveedor 155', N'1000000000155', N'Direccion 155', N'2000155')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (156, N'Proveedor 156', N'1000000000156', N'Direccion 156', N'2000156')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (157, N'Proveedor 157', N'1000000000157', N'Direccion 157', N'2000157')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (158, N'Proveedor 158', N'1000000000158', N'Direccion 158', N'2000158')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (159, N'Proveedor 159', N'1000000000159', N'Direccion 159', N'2000159')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (160, N'Proveedor 160', N'1000000000160', N'Direccion 160', N'2000160')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (161, N'Proveedor 161', N'1000000000161', N'Direccion 161', N'2000161')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (162, N'Proveedor 162', N'1000000000162', N'Direccion 162', N'2000162')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (163, N'Proveedor 163', N'1000000000163', N'Direccion 163', N'2000163')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (164, N'Proveedor 164', N'1000000000164', N'Direccion 164', N'2000164')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (165, N'Proveedor 165', N'1000000000165', N'Direccion 165', N'2000165')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (166, N'Proveedor 166', N'1000000000166', N'Direccion 166', N'2000166')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (167, N'Proveedor 167', N'1000000000167', N'Direccion 167', N'2000167')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (168, N'Proveedor 168', N'1000000000168', N'Direccion 168', N'2000168')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (169, N'Proveedor 169', N'1000000000169', N'Direccion 169', N'2000169')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (170, N'Proveedor 170', N'1000000000170', N'Direccion 170', N'2000170')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (171, N'Proveedor 171', N'1000000000171', N'Direccion 171', N'2000171')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (172, N'Proveedor 172', N'1000000000172', N'Direccion 172', N'2000172')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (173, N'Proveedor 173', N'1000000000173', N'Direccion 173', N'2000173')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (174, N'Proveedor 174', N'1000000000174', N'Direccion 174', N'2000174')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (175, N'Proveedor 175', N'1000000000175', N'Direccion 175', N'2000175')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (176, N'Proveedor 176', N'1000000000176', N'Direccion 176', N'2000176')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (177, N'Proveedor 177', N'1000000000177', N'Direccion 177', N'2000177')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (178, N'Proveedor 178', N'1000000000178', N'Direccion 178', N'2000178')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (179, N'Proveedor 179', N'1000000000179', N'Direccion 179', N'2000179')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (180, N'Proveedor 180', N'1000000000180', N'Direccion 180', N'2000180')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (181, N'Proveedor 181', N'1000000000181', N'Direccion 181', N'2000181')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (182, N'Proveedor 182', N'1000000000182', N'Direccion 182', N'2000182')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (183, N'Proveedor 183', N'1000000000183', N'Direccion 183', N'2000183')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (184, N'Proveedor 184', N'1000000000184', N'Direccion 184', N'2000184')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (185, N'Proveedor 185', N'1000000000185', N'Direccion 185', N'2000185')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (186, N'Proveedor 186', N'1000000000186', N'Direccion 186', N'2000186')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (187, N'Proveedor 187', N'1000000000187', N'Direccion 187', N'2000187')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (188, N'Proveedor 188', N'1000000000188', N'Direccion 188', N'2000188')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (189, N'Proveedor 189', N'1000000000189', N'Direccion 189', N'2000189')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (190, N'Proveedor 190', N'1000000000190', N'Direccion 190', N'2000190')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (191, N'Proveedor 191', N'1000000000191', N'Direccion 191', N'2000191')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (192, N'Proveedor 192', N'1000000000192', N'Direccion 192', N'2000192')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (193, N'Proveedor 193', N'1000000000193', N'Direccion 193', N'2000193')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (194, N'Proveedor 194', N'1000000000194', N'Direccion 194', N'2000194')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (195, N'Proveedor 195', N'1000000000195', N'Direccion 195', N'2000195')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (196, N'Proveedor 196', N'1000000000196', N'Direccion 196', N'2000196')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (197, N'Proveedor 197', N'1000000000197', N'Direccion 197', N'2000197')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (198, N'Proveedor 198', N'1000000000198', N'Direccion 198', N'2000198')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (199, N'Proveedor 199', N'1000000000199', N'Direccion 199', N'2000199')
GO
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (200, N'Proveedor 200', N'1000000000200', N'Direccion 200', N'2000200')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (201, N'Proveedor 201', N'1000000000201', N'Direccion 201', N'2000201')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (202, N'Proveedor 202', N'1000000000202', N'Direccion 202', N'2000202')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (203, N'Proveedor 203', N'1000000000203', N'Direccion 203', N'2000203')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (204, N'Proveedor 204', N'1000000000204', N'Direccion 204', N'2000204')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (205, N'Proveedor 205', N'1000000000205', N'Direccion 205', N'2000205')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (206, N'Proveedor 206', N'1000000000206', N'Direccion 206', N'2000206')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (207, N'Proveedor 207', N'1000000000207', N'Direccion 207', N'2000207')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (208, N'Proveedor 208', N'1000000000208', N'Direccion 208', N'2000208')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (209, N'Proveedor 209', N'1000000000209', N'Direccion 209', N'2000209')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (210, N'Proveedor 210', N'1000000000210', N'Direccion 210', N'2000210')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (211, N'Proveedor 211', N'1000000000211', N'Direccion 211', N'2000211')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (212, N'Proveedor 212', N'1000000000212', N'Direccion 212', N'2000212')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (213, N'Proveedor 213', N'1000000000213', N'Direccion 213', N'2000213')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (214, N'Proveedor 214', N'1000000000214', N'Direccion 214', N'2000214')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (215, N'Proveedor 215', N'1000000000215', N'Direccion 215', N'2000215')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (216, N'Proveedor 216', N'1000000000216', N'Direccion 216', N'2000216')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (217, N'Proveedor 217', N'1000000000217', N'Direccion 217', N'2000217')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (218, N'Proveedor 218', N'1000000000218', N'Direccion 218', N'2000218')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (219, N'Proveedor 219', N'1000000000219', N'Direccion 219', N'2000219')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (220, N'Proveedor 220', N'1000000000220', N'Direccion 220', N'2000220')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (221, N'Proveedor 221', N'1000000000221', N'Direccion 221', N'2000221')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (222, N'Proveedor 222', N'1000000000222', N'Direccion 222', N'2000222')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (223, N'Proveedor 223', N'1000000000223', N'Direccion 223', N'2000223')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (224, N'Proveedor 224', N'1000000000224', N'Direccion 224', N'2000224')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (225, N'Proveedor 225', N'1000000000225', N'Direccion 225', N'2000225')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (226, N'Proveedor 226', N'1000000000226', N'Direccion 226', N'2000226')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (227, N'Proveedor 227', N'1000000000227', N'Direccion 227', N'2000227')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (228, N'Proveedor 228', N'1000000000228', N'Direccion 228', N'2000228')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (229, N'Proveedor 229', N'1000000000229', N'Direccion 229', N'2000229')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (230, N'Proveedor 230', N'1000000000230', N'Direccion 230', N'2000230')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (231, N'Proveedor 231', N'1000000000231', N'Direccion 231', N'2000231')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (232, N'Proveedor 232', N'1000000000232', N'Direccion 232', N'2000232')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (233, N'Proveedor 233', N'1000000000233', N'Direccion 233', N'2000233')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (234, N'Proveedor 234', N'1000000000234', N'Direccion 234', N'2000234')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (235, N'Proveedor 235', N'1000000000235', N'Direccion 235', N'2000235')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (236, N'Proveedor 236', N'1000000000236', N'Direccion 236', N'2000236')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (237, N'Proveedor 237', N'1000000000237', N'Direccion 237', N'2000237')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (238, N'Proveedor 238', N'1000000000238', N'Direccion 238', N'2000238')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (239, N'Proveedor 239', N'1000000000239', N'Direccion 239', N'2000239')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (240, N'Proveedor 240', N'1000000000240', N'Direccion 240', N'2000240')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (241, N'Proveedor 241', N'1000000000241', N'Direccion 241', N'2000241')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (242, N'Proveedor 242', N'1000000000242', N'Direccion 242', N'2000242')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (243, N'Proveedor 243', N'1000000000243', N'Direccion 243', N'2000243')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (244, N'Proveedor 244', N'1000000000244', N'Direccion 244', N'2000244')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (245, N'Proveedor 245', N'1000000000245', N'Direccion 245', N'2000245')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (246, N'Proveedor 246', N'1000000000246', N'Direccion 246', N'2000246')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (247, N'Proveedor 247', N'1000000000247', N'Direccion 247', N'2000247')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (248, N'Proveedor 248', N'1000000000248', N'Direccion 248', N'2000248')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (249, N'Proveedor 249', N'1000000000249', N'Direccion 249', N'2000249')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (250, N'Proveedor 250', N'1000000000250', N'Direccion 250', N'2000250')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (251, N'Proveedor 251', N'1000000000251', N'Direccion 251', N'2000251')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (252, N'Proveedor 252', N'1000000000252', N'Direccion 252', N'2000252')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (253, N'Proveedor 253', N'1000000000253', N'Direccion 253', N'2000253')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (254, N'Proveedor 254', N'1000000000254', N'Direccion 254', N'2000254')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (255, N'Proveedor 255', N'1000000000255', N'Direccion 255', N'2000255')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (256, N'Proveedor 256', N'1000000000256', N'Direccion 256', N'2000256')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (257, N'Proveedor 257', N'1000000000257', N'Direccion 257', N'2000257')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (258, N'Proveedor 258', N'1000000000258', N'Direccion 258', N'2000258')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (259, N'Proveedor 259', N'1000000000259', N'Direccion 259', N'2000259')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (260, N'Proveedor 260', N'1000000000260', N'Direccion 260', N'2000260')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (261, N'Proveedor 261', N'1000000000261', N'Direccion 261', N'2000261')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (262, N'Proveedor 262', N'1000000000262', N'Direccion 262', N'2000262')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (263, N'Proveedor 263', N'1000000000263', N'Direccion 263', N'2000263')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (264, N'Proveedor 264', N'1000000000264', N'Direccion 264', N'2000264')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (265, N'Proveedor 265', N'1000000000265', N'Direccion 265', N'2000265')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (266, N'Proveedor 266', N'1000000000266', N'Direccion 266', N'2000266')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (267, N'Proveedor 267', N'1000000000267', N'Direccion 267', N'2000267')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (268, N'Proveedor 268', N'1000000000268', N'Direccion 268', N'2000268')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (269, N'Proveedor 269', N'1000000000269', N'Direccion 269', N'2000269')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (270, N'Proveedor 270', N'1000000000270', N'Direccion 270', N'2000270')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (271, N'Proveedor 271', N'1000000000271', N'Direccion 271', N'2000271')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (272, N'Proveedor 272', N'1000000000272', N'Direccion 272', N'2000272')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (273, N'Proveedor 273', N'1000000000273', N'Direccion 273', N'2000273')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (274, N'Proveedor 274', N'1000000000274', N'Direccion 274', N'2000274')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (275, N'Proveedor 275', N'1000000000275', N'Direccion 275', N'2000275')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (276, N'Proveedor 276', N'1000000000276', N'Direccion 276', N'2000276')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (277, N'Proveedor 277', N'1000000000277', N'Direccion 277', N'2000277')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (278, N'Proveedor 278', N'1000000000278', N'Direccion 278', N'2000278')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (279, N'Proveedor 279', N'1000000000279', N'Direccion 279', N'2000279')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (280, N'Proveedor 280', N'1000000000280', N'Direccion 280', N'2000280')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (281, N'Proveedor 281', N'1000000000281', N'Direccion 281', N'2000281')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (282, N'Proveedor 282', N'1000000000282', N'Direccion 282', N'2000282')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (283, N'Proveedor 283', N'1000000000283', N'Direccion 283', N'2000283')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (284, N'Proveedor 284', N'1000000000284', N'Direccion 284', N'2000284')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (285, N'Proveedor 285', N'1000000000285', N'Direccion 285', N'2000285')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (286, N'Proveedor 286', N'1000000000286', N'Direccion 286', N'2000286')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (287, N'Proveedor 287', N'1000000000287', N'Direccion 287', N'2000287')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (288, N'Proveedor 288', N'1000000000288', N'Direccion 288', N'2000288')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (289, N'Proveedor 289', N'1000000000289', N'Direccion 289', N'2000289')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (290, N'Proveedor 290', N'1000000000290', N'Direccion 290', N'2000290')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (291, N'Proveedor 291', N'1000000000291', N'Direccion 291', N'2000291')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (292, N'Proveedor 292', N'1000000000292', N'Direccion 292', N'2000292')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (293, N'Proveedor 293', N'1000000000293', N'Direccion 293', N'2000293')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (294, N'Proveedor 294', N'1000000000294', N'Direccion 294', N'2000294')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (295, N'Proveedor 295', N'1000000000295', N'Direccion 295', N'2000295')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (296, N'Proveedor 296', N'1000000000296', N'Direccion 296', N'2000296')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (297, N'Proveedor 297', N'1000000000297', N'Direccion 297', N'2000297')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (298, N'Proveedor 298', N'1000000000298', N'Direccion 298', N'2000298')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (299, N'Proveedor 299', N'1000000000299', N'Direccion 299', N'2000299')
GO
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (300, N'Proveedor 300', N'1000000000300', N'Direccion 300', N'2000300')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (301, N'Proveedor 301', N'1000000000301', N'Direccion 301', N'2000301')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (302, N'Proveedor 302', N'1000000000302', N'Direccion 302', N'2000302')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (303, N'Proveedor 303', N'1000000000303', N'Direccion 303', N'2000303')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (304, N'Proveedor 304', N'1000000000304', N'Direccion 304', N'2000304')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (305, N'Proveedor 305', N'1000000000305', N'Direccion 305', N'2000305')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (306, N'Proveedor 306', N'1000000000306', N'Direccion 306', N'2000306')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (307, N'Proveedor 307', N'1000000000307', N'Direccion 307', N'2000307')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (308, N'Proveedor 308', N'1000000000308', N'Direccion 308', N'2000308')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (309, N'Proveedor 309', N'1000000000309', N'Direccion 309', N'2000309')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (310, N'Proveedor 310', N'1000000000310', N'Direccion 310', N'2000310')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (311, N'Proveedor 311', N'1000000000311', N'Direccion 311', N'2000311')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (312, N'Proveedor 312', N'1000000000312', N'Direccion 312', N'2000312')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (313, N'Proveedor 313', N'1000000000313', N'Direccion 313', N'2000313')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (314, N'Proveedor 314', N'1000000000314', N'Direccion 314', N'2000314')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (315, N'Proveedor 315', N'1000000000315', N'Direccion 315', N'2000315')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (316, N'Proveedor 316', N'1000000000316', N'Direccion 316', N'2000316')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (317, N'Proveedor 317', N'1000000000317', N'Direccion 317', N'2000317')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (318, N'Proveedor 318', N'1000000000318', N'Direccion 318', N'2000318')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (319, N'Proveedor 319', N'1000000000319', N'Direccion 319', N'2000319')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (320, N'Proveedor 320', N'1000000000320', N'Direccion 320', N'2000320')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (321, N'Proveedor 321', N'1000000000321', N'Direccion 321', N'2000321')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (322, N'Proveedor 322', N'1000000000322', N'Direccion 322', N'2000322')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (323, N'Proveedor 323', N'1000000000323', N'Direccion 323', N'2000323')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (324, N'Proveedor 324', N'1000000000324', N'Direccion 324', N'2000324')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (325, N'Proveedor 325', N'1000000000325', N'Direccion 325', N'2000325')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (326, N'Proveedor 326', N'1000000000326', N'Direccion 326', N'2000326')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (327, N'Proveedor 327', N'1000000000327', N'Direccion 327', N'2000327')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (328, N'Proveedor 328', N'1000000000328', N'Direccion 328', N'2000328')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (329, N'Proveedor 329', N'1000000000329', N'Direccion 329', N'2000329')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (330, N'Proveedor 330', N'1000000000330', N'Direccion 330', N'2000330')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (331, N'Proveedor 331', N'1000000000331', N'Direccion 331', N'2000331')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (332, N'Proveedor 332', N'1000000000332', N'Direccion 332', N'2000332')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (333, N'Proveedor 333', N'1000000000333', N'Direccion 333', N'2000333')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (334, N'Proveedor 334', N'1000000000334', N'Direccion 334', N'2000334')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (335, N'Proveedor 335', N'1000000000335', N'Direccion 335', N'2000335')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (336, N'Proveedor 336', N'1000000000336', N'Direccion 336', N'2000336')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (337, N'Proveedor 337', N'1000000000337', N'Direccion 337', N'2000337')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (338, N'Proveedor 338', N'1000000000338', N'Direccion 338', N'2000338')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (339, N'Proveedor 339', N'1000000000339', N'Direccion 339', N'2000339')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (340, N'Proveedor 340', N'1000000000340', N'Direccion 340', N'2000340')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (341, N'Proveedor 341', N'1000000000341', N'Direccion 341', N'2000341')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (342, N'Proveedor 342', N'1000000000342', N'Direccion 342', N'2000342')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (343, N'Proveedor 343', N'1000000000343', N'Direccion 343', N'2000343')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (344, N'Proveedor 344', N'1000000000344', N'Direccion 344', N'2000344')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (345, N'Proveedor 345', N'1000000000345', N'Direccion 345', N'2000345')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (346, N'Proveedor 346', N'1000000000346', N'Direccion 346', N'2000346')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (347, N'Proveedor 347', N'1000000000347', N'Direccion 347', N'2000347')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (348, N'Proveedor 348', N'1000000000348', N'Direccion 348', N'2000348')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (349, N'Proveedor 349', N'1000000000349', N'Direccion 349', N'2000349')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (350, N'Proveedor 350', N'1000000000350', N'Direccion 350', N'2000350')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (351, N'Proveedor 351', N'1000000000351', N'Direccion 351', N'2000351')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (352, N'Proveedor 352', N'1000000000352', N'Direccion 352', N'2000352')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (353, N'Proveedor 353', N'1000000000353', N'Direccion 353', N'2000353')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (354, N'Proveedor 354', N'1000000000354', N'Direccion 354', N'2000354')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (355, N'Proveedor 355', N'1000000000355', N'Direccion 355', N'2000355')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (356, N'Proveedor 356', N'1000000000356', N'Direccion 356', N'2000356')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (357, N'Proveedor 357', N'1000000000357', N'Direccion 357', N'2000357')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (358, N'Proveedor 358', N'1000000000358', N'Direccion 358', N'2000358')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (359, N'Proveedor 359', N'1000000000359', N'Direccion 359', N'2000359')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (360, N'Proveedor 360', N'1000000000360', N'Direccion 360', N'2000360')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (361, N'Proveedor 361', N'1000000000361', N'Direccion 361', N'2000361')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (362, N'Proveedor 362', N'1000000000362', N'Direccion 362', N'2000362')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (363, N'Proveedor 363', N'1000000000363', N'Direccion 363', N'2000363')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (364, N'Proveedor 364', N'1000000000364', N'Direccion 364', N'2000364')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (365, N'Proveedor 365', N'1000000000365', N'Direccion 365', N'2000365')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (366, N'Proveedor 366', N'1000000000366', N'Direccion 366', N'2000366')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (367, N'Proveedor 367', N'1000000000367', N'Direccion 367', N'2000367')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (368, N'Proveedor 368', N'1000000000368', N'Direccion 368', N'2000368')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (369, N'Proveedor 369', N'1000000000369', N'Direccion 369', N'2000369')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (370, N'Proveedor 370', N'1000000000370', N'Direccion 370', N'2000370')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (371, N'Proveedor 371', N'1000000000371', N'Direccion 371', N'2000371')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (372, N'Proveedor 372', N'1000000000372', N'Direccion 372', N'2000372')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (373, N'Proveedor 373', N'1000000000373', N'Direccion 373', N'2000373')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (374, N'Proveedor 374', N'1000000000374', N'Direccion 374', N'2000374')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (375, N'Proveedor 375', N'1000000000375', N'Direccion 375', N'2000375')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (376, N'Proveedor 376', N'1000000000376', N'Direccion 376', N'2000376')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (377, N'Proveedor 377', N'1000000000377', N'Direccion 377', N'2000377')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (378, N'Proveedor 378', N'1000000000378', N'Direccion 378', N'2000378')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (379, N'Proveedor 379', N'1000000000379', N'Direccion 379', N'2000379')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (380, N'Proveedor 380', N'1000000000380', N'Direccion 380', N'2000380')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (381, N'Proveedor 381', N'1000000000381', N'Direccion 381', N'2000381')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (382, N'Proveedor 382', N'1000000000382', N'Direccion 382', N'2000382')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (383, N'Proveedor 383', N'1000000000383', N'Direccion 383', N'2000383')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (384, N'Proveedor 384', N'1000000000384', N'Direccion 384', N'2000384')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (385, N'Proveedor 385', N'1000000000385', N'Direccion 385', N'2000385')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (386, N'Proveedor 386', N'1000000000386', N'Direccion 386', N'2000386')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (387, N'Proveedor 387', N'1000000000387', N'Direccion 387', N'2000387')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (388, N'Proveedor 388', N'1000000000388', N'Direccion 388', N'2000388')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (389, N'Proveedor 389', N'1000000000389', N'Direccion 389', N'2000389')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (390, N'Proveedor 390', N'1000000000390', N'Direccion 390', N'2000390')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (391, N'Proveedor 391', N'1000000000391', N'Direccion 391', N'2000391')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (392, N'Proveedor 392', N'1000000000392', N'Direccion 392', N'2000392')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (393, N'Proveedor 393', N'1000000000393', N'Direccion 393', N'2000393')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (394, N'Proveedor 394', N'1000000000394', N'Direccion 394', N'2000394')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (395, N'Proveedor 395', N'1000000000395', N'Direccion 395', N'2000395')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (396, N'Proveedor 396', N'1000000000396', N'Direccion 396', N'2000396')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (397, N'Proveedor 397', N'1000000000397', N'Direccion 397', N'2000397')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (398, N'Proveedor 398', N'1000000000398', N'Direccion 398', N'2000398')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (399, N'Proveedor 399', N'1000000000399', N'Direccion 399', N'2000399')
GO
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (400, N'Proveedor 400', N'1000000000400', N'Direccion 400', N'2000400')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (401, N'Proveedor 401', N'1000000000401', N'Direccion 401', N'2000401')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (402, N'Proveedor 402', N'1000000000402', N'Direccion 402', N'2000402')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (403, N'Proveedor 403', N'1000000000403', N'Direccion 403', N'2000403')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (404, N'Proveedor 404', N'1000000000404', N'Direccion 404', N'2000404')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (405, N'Proveedor 405', N'1000000000405', N'Direccion 405', N'2000405')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (406, N'Proveedor 406', N'1000000000406', N'Direccion 406', N'2000406')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (407, N'Proveedor 407', N'1000000000407', N'Direccion 407', N'2000407')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (408, N'Proveedor 408', N'1000000000408', N'Direccion 408', N'2000408')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (409, N'Proveedor 409', N'1000000000409', N'Direccion 409', N'2000409')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (410, N'Proveedor 410', N'1000000000410', N'Direccion 410', N'2000410')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (411, N'Proveedor 411', N'1000000000411', N'Direccion 411', N'2000411')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (412, N'Proveedor 412', N'1000000000412', N'Direccion 412', N'2000412')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (413, N'Proveedor 413', N'1000000000413', N'Direccion 413', N'2000413')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (414, N'Proveedor 414', N'1000000000414', N'Direccion 414', N'2000414')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (415, N'Proveedor 415', N'1000000000415', N'Direccion 415', N'2000415')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (416, N'Proveedor 416', N'1000000000416', N'Direccion 416', N'2000416')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (417, N'Proveedor 417', N'1000000000417', N'Direccion 417', N'2000417')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (418, N'Proveedor 418', N'1000000000418', N'Direccion 418', N'2000418')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (419, N'Proveedor 419', N'1000000000419', N'Direccion 419', N'2000419')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (420, N'Proveedor 420', N'1000000000420', N'Direccion 420', N'2000420')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (421, N'Proveedor 421', N'1000000000421', N'Direccion 421', N'2000421')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (422, N'Proveedor 422', N'1000000000422', N'Direccion 422', N'2000422')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (423, N'Proveedor 423', N'1000000000423', N'Direccion 423', N'2000423')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (424, N'Proveedor 424', N'1000000000424', N'Direccion 424', N'2000424')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (425, N'Proveedor 425', N'1000000000425', N'Direccion 425', N'2000425')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (426, N'Proveedor 426', N'1000000000426', N'Direccion 426', N'2000426')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (427, N'Proveedor 427', N'1000000000427', N'Direccion 427', N'2000427')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (428, N'Proveedor 428', N'1000000000428', N'Direccion 428', N'2000428')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (429, N'Proveedor 429', N'1000000000429', N'Direccion 429', N'2000429')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (430, N'Proveedor 430', N'1000000000430', N'Direccion 430', N'2000430')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (431, N'Proveedor 431', N'1000000000431', N'Direccion 431', N'2000431')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (432, N'Proveedor 432', N'1000000000432', N'Direccion 432', N'2000432')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (433, N'Proveedor 433', N'1000000000433', N'Direccion 433', N'2000433')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (434, N'Proveedor 434', N'1000000000434', N'Direccion 434', N'2000434')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (435, N'Proveedor 435', N'1000000000435', N'Direccion 435', N'2000435')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (436, N'Proveedor 436', N'1000000000436', N'Direccion 436', N'2000436')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (437, N'Proveedor 437', N'1000000000437', N'Direccion 437', N'2000437')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (438, N'Proveedor 438', N'1000000000438', N'Direccion 438', N'2000438')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (439, N'Proveedor 439', N'1000000000439', N'Direccion 439', N'2000439')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (440, N'Proveedor 440', N'1000000000440', N'Direccion 440', N'2000440')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (441, N'Proveedor 441', N'1000000000441', N'Direccion 441', N'2000441')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (442, N'Proveedor 442', N'1000000000442', N'Direccion 442', N'2000442')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (443, N'Proveedor 443', N'1000000000443', N'Direccion 443', N'2000443')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (444, N'Proveedor 444', N'1000000000444', N'Direccion 444', N'2000444')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (445, N'Proveedor 445', N'1000000000445', N'Direccion 445', N'2000445')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (446, N'Proveedor 446', N'1000000000446', N'Direccion 446', N'2000446')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (447, N'Proveedor 447', N'1000000000447', N'Direccion 447', N'2000447')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (448, N'Proveedor 448', N'1000000000448', N'Direccion 448', N'2000448')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (449, N'Proveedor 449', N'1000000000449', N'Direccion 449', N'2000449')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (450, N'Proveedor 450', N'1000000000450', N'Direccion 450', N'2000450')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (451, N'Proveedor 451', N'1000000000451', N'Direccion 451', N'2000451')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (452, N'Proveedor 452', N'1000000000452', N'Direccion 452', N'2000452')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (453, N'Proveedor 453', N'1000000000453', N'Direccion 453', N'2000453')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (454, N'Proveedor 454', N'1000000000454', N'Direccion 454', N'2000454')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (455, N'Proveedor 455', N'1000000000455', N'Direccion 455', N'2000455')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (456, N'Proveedor 456', N'1000000000456', N'Direccion 456', N'2000456')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (457, N'Proveedor 457', N'1000000000457', N'Direccion 457', N'2000457')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (458, N'Proveedor 458', N'1000000000458', N'Direccion 458', N'2000458')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (459, N'Proveedor 459', N'1000000000459', N'Direccion 459', N'2000459')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (460, N'Proveedor 460', N'1000000000460', N'Direccion 460', N'2000460')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (461, N'Proveedor 461', N'1000000000461', N'Direccion 461', N'2000461')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (462, N'Proveedor 462', N'1000000000462', N'Direccion 462', N'2000462')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (463, N'Proveedor 463', N'1000000000463', N'Direccion 463', N'2000463')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (464, N'Proveedor 464', N'1000000000464', N'Direccion 464', N'2000464')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (465, N'Proveedor 465', N'1000000000465', N'Direccion 465', N'2000465')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (466, N'Proveedor 466', N'1000000000466', N'Direccion 466', N'2000466')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (467, N'Proveedor 467', N'1000000000467', N'Direccion 467', N'2000467')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (468, N'Proveedor 468', N'1000000000468', N'Direccion 468', N'2000468')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (469, N'Proveedor 469', N'1000000000469', N'Direccion 469', N'2000469')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (470, N'Proveedor 470', N'1000000000470', N'Direccion 470', N'2000470')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (471, N'Proveedor 471', N'1000000000471', N'Direccion 471', N'2000471')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (472, N'Proveedor 472', N'1000000000472', N'Direccion 472', N'2000472')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (473, N'Proveedor 473', N'1000000000473', N'Direccion 473', N'2000473')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (474, N'Proveedor 474', N'1000000000474', N'Direccion 474', N'2000474')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (475, N'Proveedor 475', N'1000000000475', N'Direccion 475', N'2000475')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (476, N'Proveedor 476', N'1000000000476', N'Direccion 476', N'2000476')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (477, N'Proveedor 477', N'1000000000477', N'Direccion 477', N'2000477')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (478, N'Proveedor 478', N'1000000000478', N'Direccion 478', N'2000478')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (479, N'Proveedor 479', N'1000000000479', N'Direccion 479', N'2000479')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (480, N'Proveedor 480', N'1000000000480', N'Direccion 480', N'2000480')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (481, N'Proveedor 481', N'1000000000481', N'Direccion 481', N'2000481')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (482, N'Proveedor 482', N'1000000000482', N'Direccion 482', N'2000482')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (483, N'Proveedor 483', N'1000000000483', N'Direccion 483', N'2000483')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (484, N'Proveedor 484', N'1000000000484', N'Direccion 484', N'2000484')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (485, N'Proveedor 485', N'1000000000485', N'Direccion 485', N'2000485')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (486, N'Proveedor 486', N'1000000000486', N'Direccion 486', N'2000486')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (487, N'Proveedor 487', N'1000000000487', N'Direccion 487', N'2000487')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (488, N'Proveedor 488', N'1000000000488', N'Direccion 488', N'2000488')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (489, N'Proveedor 489', N'1000000000489', N'Direccion 489', N'2000489')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (490, N'Proveedor 490', N'1000000000490', N'Direccion 490', N'2000490')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (491, N'Proveedor 491', N'1000000000491', N'Direccion 491', N'2000491')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (492, N'Proveedor 492', N'1000000000492', N'Direccion 492', N'2000492')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (493, N'Proveedor 493', N'1000000000493', N'Direccion 493', N'2000493')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (494, N'Proveedor 494', N'1000000000494', N'Direccion 494', N'2000494')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (495, N'Proveedor 495', N'1000000000495', N'Direccion 495', N'2000495')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (496, N'Proveedor 496', N'1000000000496', N'Direccion 496', N'2000496')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (497, N'Proveedor 497', N'1000000000497', N'Direccion 497', N'2000497')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (498, N'Proveedor 498', N'1000000000498', N'Direccion 498', N'2000498')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (499, N'Proveedor 499', N'1000000000499', N'Direccion 499', N'2000499')
GO
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (500, N'Proveedor 500', N'1000000000500', N'Direccion 500', N'2000500')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (501, N'Proveedor 501', N'1000000000501', N'Direccion 501', N'2000501')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (502, N'Proveedor 502', N'1000000000502', N'Direccion 502', N'2000502')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (503, N'Proveedor 503', N'1000000000503', N'Direccion 503', N'2000503')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (504, N'Proveedor 504', N'1000000000504', N'Direccion 504', N'2000504')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (505, N'Proveedor 505', N'1000000000505', N'Direccion 505', N'2000505')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (506, N'Proveedor 506', N'1000000000506', N'Direccion 506', N'2000506')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (507, N'Proveedor 507', N'1000000000507', N'Direccion 507', N'2000507')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (508, N'Proveedor 508', N'1000000000508', N'Direccion 508', N'2000508')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (509, N'Proveedor 509', N'1000000000509', N'Direccion 509', N'2000509')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (510, N'Proveedor 510', N'1000000000510', N'Direccion 510', N'2000510')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (511, N'Proveedor 511', N'1000000000511', N'Direccion 511', N'2000511')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (512, N'Proveedor 512', N'1000000000512', N'Direccion 512', N'2000512')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (513, N'Proveedor 513', N'1000000000513', N'Direccion 513', N'2000513')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (514, N'Proveedor 514', N'1000000000514', N'Direccion 514', N'2000514')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (515, N'Proveedor 515', N'1000000000515', N'Direccion 515', N'2000515')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (516, N'Proveedor 516', N'1000000000516', N'Direccion 516', N'2000516')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (517, N'Proveedor 517', N'1000000000517', N'Direccion 517', N'2000517')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (518, N'Proveedor 518', N'1000000000518', N'Direccion 518', N'2000518')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (519, N'Proveedor 519', N'1000000000519', N'Direccion 519', N'2000519')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (520, N'Proveedor 520', N'1000000000520', N'Direccion 520', N'2000520')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (521, N'Proveedor 521', N'1000000000521', N'Direccion 521', N'2000521')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (522, N'Proveedor 522', N'1000000000522', N'Direccion 522', N'2000522')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (523, N'Proveedor 523', N'1000000000523', N'Direccion 523', N'2000523')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (524, N'Proveedor 524', N'1000000000524', N'Direccion 524', N'2000524')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (525, N'Proveedor 525', N'1000000000525', N'Direccion 525', N'2000525')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (526, N'Proveedor 526', N'1000000000526', N'Direccion 526', N'2000526')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (527, N'Proveedor 527', N'1000000000527', N'Direccion 527', N'2000527')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (528, N'Proveedor 528', N'1000000000528', N'Direccion 528', N'2000528')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (529, N'Proveedor 529', N'1000000000529', N'Direccion 529', N'2000529')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (530, N'Proveedor 530', N'1000000000530', N'Direccion 530', N'2000530')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (531, N'Proveedor 531', N'1000000000531', N'Direccion 531', N'2000531')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (532, N'Proveedor 532', N'1000000000532', N'Direccion 532', N'2000532')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (533, N'Proveedor 533', N'1000000000533', N'Direccion 533', N'2000533')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (534, N'Proveedor 534', N'1000000000534', N'Direccion 534', N'2000534')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (535, N'Proveedor 535', N'1000000000535', N'Direccion 535', N'2000535')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (536, N'Proveedor 536', N'1000000000536', N'Direccion 536', N'2000536')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (537, N'Proveedor 537', N'1000000000537', N'Direccion 537', N'2000537')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (538, N'Proveedor 538', N'1000000000538', N'Direccion 538', N'2000538')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (539, N'Proveedor 539', N'1000000000539', N'Direccion 539', N'2000539')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (540, N'Proveedor 540', N'1000000000540', N'Direccion 540', N'2000540')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (541, N'Proveedor 541', N'1000000000541', N'Direccion 541', N'2000541')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (542, N'Proveedor 542', N'1000000000542', N'Direccion 542', N'2000542')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (543, N'Proveedor 543', N'1000000000543', N'Direccion 543', N'2000543')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (544, N'Proveedor 544', N'1000000000544', N'Direccion 544', N'2000544')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (545, N'Proveedor 545', N'1000000000545', N'Direccion 545', N'2000545')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (546, N'Proveedor 546', N'1000000000546', N'Direccion 546', N'2000546')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (547, N'Proveedor 547', N'1000000000547', N'Direccion 547', N'2000547')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (548, N'Proveedor 548', N'1000000000548', N'Direccion 548', N'2000548')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (549, N'Proveedor 549', N'1000000000549', N'Direccion 549', N'2000549')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (550, N'Proveedor 550', N'1000000000550', N'Direccion 550', N'2000550')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (551, N'Proveedor 551', N'1000000000551', N'Direccion 551', N'2000551')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (552, N'Proveedor 552', N'1000000000552', N'Direccion 552', N'2000552')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (553, N'Proveedor 553', N'1000000000553', N'Direccion 553', N'2000553')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (554, N'Proveedor 554', N'1000000000554', N'Direccion 554', N'2000554')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (555, N'Proveedor 555', N'1000000000555', N'Direccion 555', N'2000555')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (556, N'Proveedor 556', N'1000000000556', N'Direccion 556', N'2000556')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (557, N'Proveedor 557', N'1000000000557', N'Direccion 557', N'2000557')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (558, N'Proveedor 558', N'1000000000558', N'Direccion 558', N'2000558')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (559, N'Proveedor 559', N'1000000000559', N'Direccion 559', N'2000559')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (560, N'Proveedor 560', N'1000000000560', N'Direccion 560', N'2000560')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (561, N'Proveedor 561', N'1000000000561', N'Direccion 561', N'2000561')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (562, N'Proveedor 562', N'1000000000562', N'Direccion 562', N'2000562')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (563, N'Proveedor 563', N'1000000000563', N'Direccion 563', N'2000563')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (564, N'Proveedor 564', N'1000000000564', N'Direccion 564', N'2000564')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (565, N'Proveedor 565', N'1000000000565', N'Direccion 565', N'2000565')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (566, N'Proveedor 566', N'1000000000566', N'Direccion 566', N'2000566')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (567, N'Proveedor 567', N'1000000000567', N'Direccion 567', N'2000567')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (568, N'Proveedor 568', N'1000000000568', N'Direccion 568', N'2000568')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (569, N'Proveedor 569', N'1000000000569', N'Direccion 569', N'2000569')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (570, N'Proveedor 570', N'1000000000570', N'Direccion 570', N'2000570')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (571, N'Proveedor 571', N'1000000000571', N'Direccion 571', N'2000571')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (572, N'Proveedor 572', N'1000000000572', N'Direccion 572', N'2000572')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (573, N'Proveedor 573', N'1000000000573', N'Direccion 573', N'2000573')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (574, N'Proveedor 574', N'1000000000574', N'Direccion 574', N'2000574')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (575, N'Proveedor 575', N'1000000000575', N'Direccion 575', N'2000575')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (576, N'Proveedor 576', N'1000000000576', N'Direccion 576', N'2000576')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (577, N'Proveedor 577', N'1000000000577', N'Direccion 577', N'2000577')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (578, N'Proveedor 578', N'1000000000578', N'Direccion 578', N'2000578')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (579, N'Proveedor 579', N'1000000000579', N'Direccion 579', N'2000579')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (580, N'Proveedor 580', N'1000000000580', N'Direccion 580', N'2000580')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (581, N'Proveedor 581', N'1000000000581', N'Direccion 581', N'2000581')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (582, N'Proveedor 582', N'1000000000582', N'Direccion 582', N'2000582')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (583, N'Proveedor 583', N'1000000000583', N'Direccion 583', N'2000583')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (584, N'Proveedor 584', N'1000000000584', N'Direccion 584', N'2000584')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (585, N'Proveedor 585', N'1000000000585', N'Direccion 585', N'2000585')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (586, N'Proveedor 586', N'1000000000586', N'Direccion 586', N'2000586')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (587, N'Proveedor 587', N'1000000000587', N'Direccion 587', N'2000587')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (588, N'Proveedor 588', N'1000000000588', N'Direccion 588', N'2000588')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (589, N'Proveedor 589', N'1000000000589', N'Direccion 589', N'2000589')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (590, N'Proveedor 590', N'1000000000590', N'Direccion 590', N'2000590')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (591, N'Proveedor 591', N'1000000000591', N'Direccion 591', N'2000591')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (592, N'Proveedor 592', N'1000000000592', N'Direccion 592', N'2000592')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (593, N'Proveedor 593', N'1000000000593', N'Direccion 593', N'2000593')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (594, N'Proveedor 594', N'1000000000594', N'Direccion 594', N'2000594')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (595, N'Proveedor 595', N'1000000000595', N'Direccion 595', N'2000595')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (596, N'Proveedor 596', N'1000000000596', N'Direccion 596', N'2000596')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (597, N'Proveedor 597', N'1000000000597', N'Direccion 597', N'2000597')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (598, N'Proveedor 598', N'1000000000598', N'Direccion 598', N'2000598')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (599, N'Proveedor 599', N'1000000000599', N'Direccion 599', N'2000599')
GO
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (600, N'Proveedor 600', N'1000000000600', N'Direccion 600', N'2000600')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (601, N'Proveedor 601', N'1000000000601', N'Direccion 601', N'2000601')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (602, N'Proveedor 602', N'1000000000602', N'Direccion 602', N'2000602')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (603, N'Proveedor 603', N'1000000000603', N'Direccion 603', N'2000603')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (604, N'Proveedor 604', N'1000000000604', N'Direccion 604', N'2000604')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (605, N'Proveedor 605', N'1000000000605', N'Direccion 605', N'2000605')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (606, N'Proveedor 606', N'1000000000606', N'Direccion 606', N'2000606')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (607, N'Proveedor 607', N'1000000000607', N'Direccion 607', N'2000607')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (608, N'Proveedor 608', N'1000000000608', N'Direccion 608', N'2000608')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (609, N'Proveedor 609', N'1000000000609', N'Direccion 609', N'2000609')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (610, N'Proveedor 610', N'1000000000610', N'Direccion 610', N'2000610')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (611, N'Proveedor 611', N'1000000000611', N'Direccion 611', N'2000611')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (612, N'Proveedor 612', N'1000000000612', N'Direccion 612', N'2000612')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (613, N'Proveedor 613', N'1000000000613', N'Direccion 613', N'2000613')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (614, N'Proveedor 614', N'1000000000614', N'Direccion 614', N'2000614')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (615, N'Proveedor 615', N'1000000000615', N'Direccion 615', N'2000615')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (616, N'Proveedor 616', N'1000000000616', N'Direccion 616', N'2000616')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (617, N'Proveedor 617', N'1000000000617', N'Direccion 617', N'2000617')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (618, N'Proveedor 618', N'1000000000618', N'Direccion 618', N'2000618')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (619, N'Proveedor 619', N'1000000000619', N'Direccion 619', N'2000619')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (620, N'Proveedor 620', N'1000000000620', N'Direccion 620', N'2000620')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (621, N'Proveedor 621', N'1000000000621', N'Direccion 621', N'2000621')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (622, N'Proveedor 622', N'1000000000622', N'Direccion 622', N'2000622')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (623, N'Proveedor 623', N'1000000000623', N'Direccion 623', N'2000623')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (624, N'Proveedor 624', N'1000000000624', N'Direccion 624', N'2000624')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (625, N'Proveedor 625', N'1000000000625', N'Direccion 625', N'2000625')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (626, N'Proveedor 626', N'1000000000626', N'Direccion 626', N'2000626')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (627, N'Proveedor 627', N'1000000000627', N'Direccion 627', N'2000627')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (628, N'Proveedor 628', N'1000000000628', N'Direccion 628', N'2000628')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (629, N'Proveedor 629', N'1000000000629', N'Direccion 629', N'2000629')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (630, N'Proveedor 630', N'1000000000630', N'Direccion 630', N'2000630')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (631, N'Proveedor 631', N'1000000000631', N'Direccion 631', N'2000631')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (632, N'Proveedor 632', N'1000000000632', N'Direccion 632', N'2000632')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (633, N'Proveedor 633', N'1000000000633', N'Direccion 633', N'2000633')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (634, N'Proveedor 634', N'1000000000634', N'Direccion 634', N'2000634')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (635, N'Proveedor 635', N'1000000000635', N'Direccion 635', N'2000635')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (636, N'Proveedor 636', N'1000000000636', N'Direccion 636', N'2000636')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (637, N'Proveedor 637', N'1000000000637', N'Direccion 637', N'2000637')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (638, N'Proveedor 638', N'1000000000638', N'Direccion 638', N'2000638')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (639, N'Proveedor 639', N'1000000000639', N'Direccion 639', N'2000639')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (640, N'Proveedor 640', N'1000000000640', N'Direccion 640', N'2000640')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (641, N'Proveedor 641', N'1000000000641', N'Direccion 641', N'2000641')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (642, N'Proveedor 642', N'1000000000642', N'Direccion 642', N'2000642')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (643, N'Proveedor 643', N'1000000000643', N'Direccion 643', N'2000643')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (644, N'Proveedor 644', N'1000000000644', N'Direccion 644', N'2000644')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (645, N'Proveedor 645', N'1000000000645', N'Direccion 645', N'2000645')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (646, N'Proveedor 646', N'1000000000646', N'Direccion 646', N'2000646')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (647, N'Proveedor 647', N'1000000000647', N'Direccion 647', N'2000647')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (648, N'Proveedor 648', N'1000000000648', N'Direccion 648', N'2000648')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (649, N'Proveedor 649', N'1000000000649', N'Direccion 649', N'2000649')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (650, N'Proveedor 650', N'1000000000650', N'Direccion 650', N'2000650')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (651, N'Proveedor 651', N'1000000000651', N'Direccion 651', N'2000651')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (652, N'Proveedor 652', N'1000000000652', N'Direccion 652', N'2000652')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (653, N'Proveedor 653', N'1000000000653', N'Direccion 653', N'2000653')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (654, N'Proveedor 654', N'1000000000654', N'Direccion 654', N'2000654')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (655, N'Proveedor 655', N'1000000000655', N'Direccion 655', N'2000655')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (656, N'Proveedor 656', N'1000000000656', N'Direccion 656', N'2000656')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (657, N'Proveedor 657', N'1000000000657', N'Direccion 657', N'2000657')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (658, N'Proveedor 658', N'1000000000658', N'Direccion 658', N'2000658')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (659, N'Proveedor 659', N'1000000000659', N'Direccion 659', N'2000659')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (660, N'Proveedor 660', N'1000000000660', N'Direccion 660', N'2000660')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (661, N'Proveedor 661', N'1000000000661', N'Direccion 661', N'2000661')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (662, N'Proveedor 662', N'1000000000662', N'Direccion 662', N'2000662')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (663, N'Proveedor 663', N'1000000000663', N'Direccion 663', N'2000663')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (664, N'Proveedor 664', N'1000000000664', N'Direccion 664', N'2000664')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (665, N'Proveedor 665', N'1000000000665', N'Direccion 665', N'2000665')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (666, N'Proveedor 666', N'1000000000666', N'Direccion 666', N'2000666')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (667, N'Proveedor 667', N'1000000000667', N'Direccion 667', N'2000667')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (668, N'Proveedor 668', N'1000000000668', N'Direccion 668', N'2000668')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (669, N'Proveedor 669', N'1000000000669', N'Direccion 669', N'2000669')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (670, N'Proveedor 670', N'1000000000670', N'Direccion 670', N'2000670')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (671, N'Proveedor 671', N'1000000000671', N'Direccion 671', N'2000671')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (672, N'Proveedor 672', N'1000000000672', N'Direccion 672', N'2000672')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (673, N'Proveedor 673', N'1000000000673', N'Direccion 673', N'2000673')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (674, N'Proveedor 674', N'1000000000674', N'Direccion 674', N'2000674')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (675, N'Proveedor 675', N'1000000000675', N'Direccion 675', N'2000675')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (676, N'Proveedor 676', N'1000000000676', N'Direccion 676', N'2000676')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (677, N'Proveedor 677', N'1000000000677', N'Direccion 677', N'2000677')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (678, N'Proveedor 678', N'1000000000678', N'Direccion 678', N'2000678')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (679, N'Proveedor 679', N'1000000000679', N'Direccion 679', N'2000679')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (680, N'Proveedor 680', N'1000000000680', N'Direccion 680', N'2000680')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (681, N'Proveedor 681', N'1000000000681', N'Direccion 681', N'2000681')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (682, N'Proveedor 682', N'1000000000682', N'Direccion 682', N'2000682')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (683, N'Proveedor 683', N'1000000000683', N'Direccion 683', N'2000683')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (684, N'Proveedor 684', N'1000000000684', N'Direccion 684', N'2000684')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (685, N'Proveedor 685', N'1000000000685', N'Direccion 685', N'2000685')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (686, N'Proveedor 686', N'1000000000686', N'Direccion 686', N'2000686')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (687, N'Proveedor 687', N'1000000000687', N'Direccion 687', N'2000687')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (688, N'Proveedor 688', N'1000000000688', N'Direccion 688', N'2000688')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (689, N'Proveedor 689', N'1000000000689', N'Direccion 689', N'2000689')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (690, N'Proveedor 690', N'1000000000690', N'Direccion 690', N'2000690')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (691, N'Proveedor 691', N'1000000000691', N'Direccion 691', N'2000691')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (692, N'Proveedor 692', N'1000000000692', N'Direccion 692', N'2000692')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (693, N'Proveedor 693', N'1000000000693', N'Direccion 693', N'2000693')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (694, N'Proveedor 694', N'1000000000694', N'Direccion 694', N'2000694')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (695, N'Proveedor 695', N'1000000000695', N'Direccion 695', N'2000695')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (696, N'Proveedor 696', N'1000000000696', N'Direccion 696', N'2000696')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (697, N'Proveedor 697', N'1000000000697', N'Direccion 697', N'2000697')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (698, N'Proveedor 698', N'1000000000698', N'Direccion 698', N'2000698')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (699, N'Proveedor 699', N'1000000000699', N'Direccion 699', N'2000699')
GO
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (700, N'Proveedor 700', N'1000000000700', N'Direccion 700', N'2000700')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (701, N'Proveedor 701', N'1000000000701', N'Direccion 701', N'2000701')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (702, N'Proveedor 702', N'1000000000702', N'Direccion 702', N'2000702')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (703, N'Proveedor 703', N'1000000000703', N'Direccion 703', N'2000703')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (704, N'Proveedor 704', N'1000000000704', N'Direccion 704', N'2000704')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (705, N'Proveedor 705', N'1000000000705', N'Direccion 705', N'2000705')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (706, N'Proveedor 706', N'1000000000706', N'Direccion 706', N'2000706')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (707, N'Proveedor 707', N'1000000000707', N'Direccion 707', N'2000707')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (708, N'Proveedor 708', N'1000000000708', N'Direccion 708', N'2000708')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (709, N'Proveedor 709', N'1000000000709', N'Direccion 709', N'2000709')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (710, N'Proveedor 710', N'1000000000710', N'Direccion 710', N'2000710')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (711, N'Proveedor 711', N'1000000000711', N'Direccion 711', N'2000711')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (712, N'Proveedor 712', N'1000000000712', N'Direccion 712', N'2000712')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (713, N'Proveedor 713', N'1000000000713', N'Direccion 713', N'2000713')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (714, N'Proveedor 714', N'1000000000714', N'Direccion 714', N'2000714')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (715, N'Proveedor 715', N'1000000000715', N'Direccion 715', N'2000715')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (716, N'Proveedor 716', N'1000000000716', N'Direccion 716', N'2000716')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (717, N'Proveedor 717', N'1000000000717', N'Direccion 717', N'2000717')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (718, N'Proveedor 718', N'1000000000718', N'Direccion 718', N'2000718')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (719, N'Proveedor 719', N'1000000000719', N'Direccion 719', N'2000719')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (720, N'Proveedor 720', N'1000000000720', N'Direccion 720', N'2000720')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (721, N'Proveedor 721', N'1000000000721', N'Direccion 721', N'2000721')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (722, N'Proveedor 722', N'1000000000722', N'Direccion 722', N'2000722')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (723, N'Proveedor 723', N'1000000000723', N'Direccion 723', N'2000723')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (724, N'Proveedor 724', N'1000000000724', N'Direccion 724', N'2000724')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (725, N'Proveedor 725', N'1000000000725', N'Direccion 725', N'2000725')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (726, N'Proveedor 726', N'1000000000726', N'Direccion 726', N'2000726')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (727, N'Proveedor 727', N'1000000000727', N'Direccion 727', N'2000727')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (728, N'Proveedor 728', N'1000000000728', N'Direccion 728', N'2000728')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (729, N'Proveedor 729', N'1000000000729', N'Direccion 729', N'2000729')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (730, N'Proveedor 730', N'1000000000730', N'Direccion 730', N'2000730')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (731, N'Proveedor 731', N'1000000000731', N'Direccion 731', N'2000731')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (732, N'Proveedor 732', N'1000000000732', N'Direccion 732', N'2000732')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (733, N'Proveedor 733', N'1000000000733', N'Direccion 733', N'2000733')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (734, N'Proveedor 734', N'1000000000734', N'Direccion 734', N'2000734')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (735, N'Proveedor 735', N'1000000000735', N'Direccion 735', N'2000735')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (736, N'Proveedor 736', N'1000000000736', N'Direccion 736', N'2000736')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (737, N'Proveedor 737', N'1000000000737', N'Direccion 737', N'2000737')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (738, N'Proveedor 738', N'1000000000738', N'Direccion 738', N'2000738')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (739, N'Proveedor 739', N'1000000000739', N'Direccion 739', N'2000739')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (740, N'Proveedor 740', N'1000000000740', N'Direccion 740', N'2000740')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (741, N'Proveedor 741', N'1000000000741', N'Direccion 741', N'2000741')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (742, N'Proveedor 742', N'1000000000742', N'Direccion 742', N'2000742')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (743, N'Proveedor 743', N'1000000000743', N'Direccion 743', N'2000743')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (744, N'Proveedor 744', N'1000000000744', N'Direccion 744', N'2000744')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (745, N'Proveedor 745', N'1000000000745', N'Direccion 745', N'2000745')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (746, N'Proveedor 746', N'1000000000746', N'Direccion 746', N'2000746')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (747, N'Proveedor 747', N'1000000000747', N'Direccion 747', N'2000747')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (748, N'Proveedor 748', N'1000000000748', N'Direccion 748', N'2000748')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (749, N'Proveedor 749', N'1000000000749', N'Direccion 749', N'2000749')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (750, N'Proveedor 750', N'1000000000750', N'Direccion 750', N'2000750')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (751, N'Proveedor 751', N'1000000000751', N'Direccion 751', N'2000751')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (752, N'Proveedor 752', N'1000000000752', N'Direccion 752', N'2000752')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (753, N'Proveedor 753', N'1000000000753', N'Direccion 753', N'2000753')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (754, N'Proveedor 754', N'1000000000754', N'Direccion 754', N'2000754')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (755, N'Proveedor 755', N'1000000000755', N'Direccion 755', N'2000755')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (756, N'Proveedor 756', N'1000000000756', N'Direccion 756', N'2000756')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (757, N'Proveedor 757', N'1000000000757', N'Direccion 757', N'2000757')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (758, N'Proveedor 758', N'1000000000758', N'Direccion 758', N'2000758')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (759, N'Proveedor 759', N'1000000000759', N'Direccion 759', N'2000759')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (760, N'Proveedor 760', N'1000000000760', N'Direccion 760', N'2000760')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (761, N'Proveedor 761', N'1000000000761', N'Direccion 761', N'2000761')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (762, N'Proveedor 762', N'1000000000762', N'Direccion 762', N'2000762')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (763, N'Proveedor 763', N'1000000000763', N'Direccion 763', N'2000763')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (764, N'Proveedor 764', N'1000000000764', N'Direccion 764', N'2000764')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (765, N'Proveedor 765', N'1000000000765', N'Direccion 765', N'2000765')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (766, N'Proveedor 766', N'1000000000766', N'Direccion 766', N'2000766')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (767, N'Proveedor 767', N'1000000000767', N'Direccion 767', N'2000767')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (768, N'Proveedor 768', N'1000000000768', N'Direccion 768', N'2000768')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (769, N'Proveedor 769', N'1000000000769', N'Direccion 769', N'2000769')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (770, N'Proveedor 770', N'1000000000770', N'Direccion 770', N'2000770')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (771, N'Proveedor 771', N'1000000000771', N'Direccion 771', N'2000771')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (772, N'Proveedor 772', N'1000000000772', N'Direccion 772', N'2000772')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (773, N'Proveedor 773', N'1000000000773', N'Direccion 773', N'2000773')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (774, N'Proveedor 774', N'1000000000774', N'Direccion 774', N'2000774')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (775, N'Proveedor 775', N'1000000000775', N'Direccion 775', N'2000775')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (776, N'Proveedor 776', N'1000000000776', N'Direccion 776', N'2000776')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (777, N'Proveedor 777', N'1000000000777', N'Direccion 777', N'2000777')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (778, N'Proveedor 778', N'1000000000778', N'Direccion 778', N'2000778')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (779, N'Proveedor 779', N'1000000000779', N'Direccion 779', N'2000779')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (780, N'Proveedor 780', N'1000000000780', N'Direccion 780', N'2000780')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (781, N'Proveedor 781', N'1000000000781', N'Direccion 781', N'2000781')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (782, N'Proveedor 782', N'1000000000782', N'Direccion 782', N'2000782')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (783, N'Proveedor 783', N'1000000000783', N'Direccion 783', N'2000783')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (784, N'Proveedor 784', N'1000000000784', N'Direccion 784', N'2000784')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (785, N'Proveedor 785', N'1000000000785', N'Direccion 785', N'2000785')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (786, N'Proveedor 786', N'1000000000786', N'Direccion 786', N'2000786')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (787, N'Proveedor 787', N'1000000000787', N'Direccion 787', N'2000787')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (788, N'Proveedor 788', N'1000000000788', N'Direccion 788', N'2000788')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (789, N'Proveedor 789', N'1000000000789', N'Direccion 789', N'2000789')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (790, N'Proveedor 790', N'1000000000790', N'Direccion 790', N'2000790')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (791, N'Proveedor 791', N'1000000000791', N'Direccion 791', N'2000791')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (792, N'Proveedor 792', N'1000000000792', N'Direccion 792', N'2000792')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (793, N'Proveedor 793', N'1000000000793', N'Direccion 793', N'2000793')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (794, N'Proveedor 794', N'1000000000794', N'Direccion 794', N'2000794')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (795, N'Proveedor 795', N'1000000000795', N'Direccion 795', N'2000795')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (796, N'Proveedor 796', N'1000000000796', N'Direccion 796', N'2000796')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (797, N'Proveedor 797', N'1000000000797', N'Direccion 797', N'2000797')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (798, N'Proveedor 798', N'1000000000798', N'Direccion 798', N'2000798')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (799, N'Proveedor 799', N'1000000000799', N'Direccion 799', N'2000799')
GO
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (800, N'Proveedor 800', N'1000000000800', N'Direccion 800', N'2000800')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (801, N'Proveedor 801', N'1000000000801', N'Direccion 801', N'2000801')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (802, N'Proveedor 802', N'1000000000802', N'Direccion 802', N'2000802')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (803, N'Proveedor 803', N'1000000000803', N'Direccion 803', N'2000803')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (804, N'Proveedor 804', N'1000000000804', N'Direccion 804', N'2000804')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (805, N'Proveedor 805', N'1000000000805', N'Direccion 805', N'2000805')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (806, N'Proveedor 806', N'1000000000806', N'Direccion 806', N'2000806')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (807, N'Proveedor 807', N'1000000000807', N'Direccion 807', N'2000807')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (808, N'Proveedor 808', N'1000000000808', N'Direccion 808', N'2000808')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (809, N'Proveedor 809', N'1000000000809', N'Direccion 809', N'2000809')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (810, N'Proveedor 810', N'1000000000810', N'Direccion 810', N'2000810')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (811, N'Proveedor 811', N'1000000000811', N'Direccion 811', N'2000811')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (812, N'Proveedor 812', N'1000000000812', N'Direccion 812', N'2000812')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (813, N'Proveedor 813', N'1000000000813', N'Direccion 813', N'2000813')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (814, N'Proveedor 814', N'1000000000814', N'Direccion 814', N'2000814')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (815, N'Proveedor 815', N'1000000000815', N'Direccion 815', N'2000815')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (816, N'Proveedor 816', N'1000000000816', N'Direccion 816', N'2000816')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (817, N'Proveedor 817', N'1000000000817', N'Direccion 817', N'2000817')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (818, N'Proveedor 818', N'1000000000818', N'Direccion 818', N'2000818')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (819, N'Proveedor 819', N'1000000000819', N'Direccion 819', N'2000819')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (820, N'Proveedor 820', N'1000000000820', N'Direccion 820', N'2000820')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (821, N'Proveedor 821', N'1000000000821', N'Direccion 821', N'2000821')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (822, N'Proveedor 822', N'1000000000822', N'Direccion 822', N'2000822')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (823, N'Proveedor 823', N'1000000000823', N'Direccion 823', N'2000823')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (824, N'Proveedor 824', N'1000000000824', N'Direccion 824', N'2000824')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (825, N'Proveedor 825', N'1000000000825', N'Direccion 825', N'2000825')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (826, N'Proveedor 826', N'1000000000826', N'Direccion 826', N'2000826')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (827, N'Proveedor 827', N'1000000000827', N'Direccion 827', N'2000827')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (828, N'Proveedor 828', N'1000000000828', N'Direccion 828', N'2000828')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (829, N'Proveedor 829', N'1000000000829', N'Direccion 829', N'2000829')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (830, N'Proveedor 830', N'1000000000830', N'Direccion 830', N'2000830')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (831, N'Proveedor 831', N'1000000000831', N'Direccion 831', N'2000831')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (832, N'Proveedor 832', N'1000000000832', N'Direccion 832', N'2000832')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (833, N'Proveedor 833', N'1000000000833', N'Direccion 833', N'2000833')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (834, N'Proveedor 834', N'1000000000834', N'Direccion 834', N'2000834')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (835, N'Proveedor 835', N'1000000000835', N'Direccion 835', N'2000835')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (836, N'Proveedor 836', N'1000000000836', N'Direccion 836', N'2000836')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (837, N'Proveedor 837', N'1000000000837', N'Direccion 837', N'2000837')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (838, N'Proveedor 838', N'1000000000838', N'Direccion 838', N'2000838')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (839, N'Proveedor 839', N'1000000000839', N'Direccion 839', N'2000839')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (840, N'Proveedor 840', N'1000000000840', N'Direccion 840', N'2000840')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (841, N'Proveedor 841', N'1000000000841', N'Direccion 841', N'2000841')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (842, N'Proveedor 842', N'1000000000842', N'Direccion 842', N'2000842')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (843, N'Proveedor 843', N'1000000000843', N'Direccion 843', N'2000843')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (844, N'Proveedor 844', N'1000000000844', N'Direccion 844', N'2000844')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (845, N'Proveedor 845', N'1000000000845', N'Direccion 845', N'2000845')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (846, N'Proveedor 846', N'1000000000846', N'Direccion 846', N'2000846')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (847, N'Proveedor 847', N'1000000000847', N'Direccion 847', N'2000847')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (848, N'Proveedor 848', N'1000000000848', N'Direccion 848', N'2000848')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (849, N'Proveedor 849', N'1000000000849', N'Direccion 849', N'2000849')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (850, N'Proveedor 850', N'1000000000850', N'Direccion 850', N'2000850')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (851, N'Proveedor 851', N'1000000000851', N'Direccion 851', N'2000851')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (852, N'Proveedor 852', N'1000000000852', N'Direccion 852', N'2000852')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (853, N'Proveedor 853', N'1000000000853', N'Direccion 853', N'2000853')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (854, N'Proveedor 854', N'1000000000854', N'Direccion 854', N'2000854')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (855, N'Proveedor 855', N'1000000000855', N'Direccion 855', N'2000855')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (856, N'Proveedor 856', N'1000000000856', N'Direccion 856', N'2000856')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (857, N'Proveedor 857', N'1000000000857', N'Direccion 857', N'2000857')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (858, N'Proveedor 858', N'1000000000858', N'Direccion 858', N'2000858')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (859, N'Proveedor 859', N'1000000000859', N'Direccion 859', N'2000859')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (860, N'Proveedor 860', N'1000000000860', N'Direccion 860', N'2000860')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (861, N'Proveedor 861', N'1000000000861', N'Direccion 861', N'2000861')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (862, N'Proveedor 862', N'1000000000862', N'Direccion 862', N'2000862')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (863, N'Proveedor 863', N'1000000000863', N'Direccion 863', N'2000863')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (864, N'Proveedor 864', N'1000000000864', N'Direccion 864', N'2000864')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (865, N'Proveedor 865', N'1000000000865', N'Direccion 865', N'2000865')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (866, N'Proveedor 866', N'1000000000866', N'Direccion 866', N'2000866')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (867, N'Proveedor 867', N'1000000000867', N'Direccion 867', N'2000867')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (868, N'Proveedor 868', N'1000000000868', N'Direccion 868', N'2000868')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (869, N'Proveedor 869', N'1000000000869', N'Direccion 869', N'2000869')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (870, N'Proveedor 870', N'1000000000870', N'Direccion 870', N'2000870')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (871, N'Proveedor 871', N'1000000000871', N'Direccion 871', N'2000871')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (872, N'Proveedor 872', N'1000000000872', N'Direccion 872', N'2000872')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (873, N'Proveedor 873', N'1000000000873', N'Direccion 873', N'2000873')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (874, N'Proveedor 874', N'1000000000874', N'Direccion 874', N'2000874')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (875, N'Proveedor 875', N'1000000000875', N'Direccion 875', N'2000875')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (876, N'Proveedor 876', N'1000000000876', N'Direccion 876', N'2000876')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (877, N'Proveedor 877', N'1000000000877', N'Direccion 877', N'2000877')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (878, N'Proveedor 878', N'1000000000878', N'Direccion 878', N'2000878')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (879, N'Proveedor 879', N'1000000000879', N'Direccion 879', N'2000879')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (880, N'Proveedor 880', N'1000000000880', N'Direccion 880', N'2000880')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (881, N'Proveedor 881', N'1000000000881', N'Direccion 881', N'2000881')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (882, N'Proveedor 882', N'1000000000882', N'Direccion 882', N'2000882')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (883, N'Proveedor 883', N'1000000000883', N'Direccion 883', N'2000883')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (884, N'Proveedor 884', N'1000000000884', N'Direccion 884', N'2000884')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (885, N'Proveedor 885', N'1000000000885', N'Direccion 885', N'2000885')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (886, N'Proveedor 886', N'1000000000886', N'Direccion 886', N'2000886')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (887, N'Proveedor 887', N'1000000000887', N'Direccion 887', N'2000887')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (888, N'Proveedor 888', N'1000000000888', N'Direccion 888', N'2000888')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (889, N'Proveedor 889', N'1000000000889', N'Direccion 889', N'2000889')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (890, N'Proveedor 890', N'1000000000890', N'Direccion 890', N'2000890')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (891, N'Proveedor 891', N'1000000000891', N'Direccion 891', N'2000891')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (892, N'Proveedor 892', N'1000000000892', N'Direccion 892', N'2000892')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (893, N'Proveedor 893', N'1000000000893', N'Direccion 893', N'2000893')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (894, N'Proveedor 894', N'1000000000894', N'Direccion 894', N'2000894')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (895, N'Proveedor 895', N'1000000000895', N'Direccion 895', N'2000895')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (896, N'Proveedor 896', N'1000000000896', N'Direccion 896', N'2000896')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (897, N'Proveedor 897', N'1000000000897', N'Direccion 897', N'2000897')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (898, N'Proveedor 898', N'1000000000898', N'Direccion 898', N'2000898')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (899, N'Proveedor 899', N'1000000000899', N'Direccion 899', N'2000899')
GO
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (900, N'Proveedor 900', N'1000000000900', N'Direccion 900', N'2000900')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (901, N'Proveedor 901', N'1000000000901', N'Direccion 901', N'2000901')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (902, N'Proveedor 902', N'1000000000902', N'Direccion 902', N'2000902')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (903, N'Proveedor 903', N'1000000000903', N'Direccion 903', N'2000903')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (904, N'Proveedor 904', N'1000000000904', N'Direccion 904', N'2000904')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (905, N'Proveedor 905', N'1000000000905', N'Direccion 905', N'2000905')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (906, N'Proveedor 906', N'1000000000906', N'Direccion 906', N'2000906')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (907, N'Proveedor 907', N'1000000000907', N'Direccion 907', N'2000907')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (908, N'Proveedor 908', N'1000000000908', N'Direccion 908', N'2000908')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (909, N'Proveedor 909', N'1000000000909', N'Direccion 909', N'2000909')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (910, N'Proveedor 910', N'1000000000910', N'Direccion 910', N'2000910')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (911, N'Proveedor 911', N'1000000000911', N'Direccion 911', N'2000911')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (912, N'Proveedor 912', N'1000000000912', N'Direccion 912', N'2000912')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (913, N'Proveedor 913', N'1000000000913', N'Direccion 913', N'2000913')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (914, N'Proveedor 914', N'1000000000914', N'Direccion 914', N'2000914')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (915, N'Proveedor 915', N'1000000000915', N'Direccion 915', N'2000915')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (916, N'Proveedor 916', N'1000000000916', N'Direccion 916', N'2000916')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (917, N'Proveedor 917', N'1000000000917', N'Direccion 917', N'2000917')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (918, N'Proveedor 918', N'1000000000918', N'Direccion 918', N'2000918')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (919, N'Proveedor 919', N'1000000000919', N'Direccion 919', N'2000919')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (920, N'Proveedor 920', N'1000000000920', N'Direccion 920', N'2000920')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (921, N'Proveedor 921', N'1000000000921', N'Direccion 921', N'2000921')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (922, N'Proveedor 922', N'1000000000922', N'Direccion 922', N'2000922')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (923, N'Proveedor 923', N'1000000000923', N'Direccion 923', N'2000923')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (924, N'Proveedor 924', N'1000000000924', N'Direccion 924', N'2000924')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (925, N'Proveedor 925', N'1000000000925', N'Direccion 925', N'2000925')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (926, N'Proveedor 926', N'1000000000926', N'Direccion 926', N'2000926')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (927, N'Proveedor 927', N'1000000000927', N'Direccion 927', N'2000927')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (928, N'Proveedor 928', N'1000000000928', N'Direccion 928', N'2000928')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (929, N'Proveedor 929', N'1000000000929', N'Direccion 929', N'2000929')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (930, N'Proveedor 930', N'1000000000930', N'Direccion 930', N'2000930')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (931, N'Proveedor 931', N'1000000000931', N'Direccion 931', N'2000931')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (932, N'Proveedor 932', N'1000000000932', N'Direccion 932', N'2000932')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (933, N'Proveedor 933', N'1000000000933', N'Direccion 933', N'2000933')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (934, N'Proveedor 934', N'1000000000934', N'Direccion 934', N'2000934')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (935, N'Proveedor 935', N'1000000000935', N'Direccion 935', N'2000935')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (936, N'Proveedor 936', N'1000000000936', N'Direccion 936', N'2000936')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (937, N'Proveedor 937', N'1000000000937', N'Direccion 937', N'2000937')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (938, N'Proveedor 938', N'1000000000938', N'Direccion 938', N'2000938')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (939, N'Proveedor 939', N'1000000000939', N'Direccion 939', N'2000939')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (940, N'Proveedor 940', N'1000000000940', N'Direccion 940', N'2000940')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (941, N'Proveedor 941', N'1000000000941', N'Direccion 941', N'2000941')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (942, N'Proveedor 942', N'1000000000942', N'Direccion 942', N'2000942')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (943, N'Proveedor 943', N'1000000000943', N'Direccion 943', N'2000943')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (944, N'Proveedor 944', N'1000000000944', N'Direccion 944', N'2000944')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (945, N'Proveedor 945', N'1000000000945', N'Direccion 945', N'2000945')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (946, N'Proveedor 946', N'1000000000946', N'Direccion 946', N'2000946')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (947, N'Proveedor 947', N'1000000000947', N'Direccion 947', N'2000947')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (948, N'Proveedor 948', N'1000000000948', N'Direccion 948', N'2000948')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (949, N'Proveedor 949', N'1000000000949', N'Direccion 949', N'2000949')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (950, N'Proveedor 950', N'1000000000950', N'Direccion 950', N'2000950')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (951, N'Proveedor 951', N'1000000000951', N'Direccion 951', N'2000951')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (952, N'Proveedor 952', N'1000000000952', N'Direccion 952', N'2000952')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (953, N'Proveedor 953', N'1000000000953', N'Direccion 953', N'2000953')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (954, N'Proveedor 954', N'1000000000954', N'Direccion 954', N'2000954')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (955, N'Proveedor 955', N'1000000000955', N'Direccion 955', N'2000955')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (956, N'Proveedor 956', N'1000000000956', N'Direccion 956', N'2000956')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (957, N'Proveedor 957', N'1000000000957', N'Direccion 957', N'2000957')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (958, N'Proveedor 958', N'1000000000958', N'Direccion 958', N'2000958')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (959, N'Proveedor 959', N'1000000000959', N'Direccion 959', N'2000959')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (960, N'Proveedor 960', N'1000000000960', N'Direccion 960', N'2000960')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (961, N'Proveedor 961', N'1000000000961', N'Direccion 961', N'2000961')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (962, N'Proveedor 962', N'1000000000962', N'Direccion 962', N'2000962')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (963, N'Proveedor 963', N'1000000000963', N'Direccion 963', N'2000963')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (964, N'Proveedor 964', N'1000000000964', N'Direccion 964', N'2000964')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (965, N'Proveedor 965', N'1000000000965', N'Direccion 965', N'2000965')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (966, N'Proveedor 966', N'1000000000966', N'Direccion 966', N'2000966')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (967, N'Proveedor 967', N'1000000000967', N'Direccion 967', N'2000967')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (968, N'Proveedor 968', N'1000000000968', N'Direccion 968', N'2000968')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (969, N'Proveedor 969', N'1000000000969', N'Direccion 969', N'2000969')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (970, N'Proveedor 970', N'1000000000970', N'Direccion 970', N'2000970')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (971, N'Proveedor 971', N'1000000000971', N'Direccion 971', N'2000971')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (972, N'Proveedor 972', N'1000000000972', N'Direccion 972', N'2000972')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (973, N'Proveedor 973', N'1000000000973', N'Direccion 973', N'2000973')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (974, N'Proveedor 974', N'1000000000974', N'Direccion 974', N'2000974')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (975, N'Proveedor 975', N'1000000000975', N'Direccion 975', N'2000975')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (976, N'Proveedor 976', N'1000000000976', N'Direccion 976', N'2000976')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (977, N'Proveedor 977', N'1000000000977', N'Direccion 977', N'2000977')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (978, N'Proveedor 978', N'1000000000978', N'Direccion 978', N'2000978')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (979, N'Proveedor 979', N'1000000000979', N'Direccion 979', N'2000979')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (980, N'Proveedor 980', N'1000000000980', N'Direccion 980', N'2000980')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (981, N'Proveedor 981', N'1000000000981', N'Direccion 981', N'2000981')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (982, N'Proveedor 982', N'1000000000982', N'Direccion 982', N'2000982')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (983, N'Proveedor 983', N'1000000000983', N'Direccion 983', N'2000983')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (984, N'Proveedor 984', N'1000000000984', N'Direccion 984', N'2000984')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (985, N'Proveedor 985', N'1000000000985', N'Direccion 985', N'2000985')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (986, N'Proveedor 986', N'1000000000986', N'Direccion 986', N'2000986')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (987, N'Proveedor 987', N'1000000000987', N'Direccion 987', N'2000987')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (988, N'Proveedor 988', N'1000000000988', N'Direccion 988', N'2000988')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (989, N'Proveedor 989', N'1000000000989', N'Direccion 989', N'2000989')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (990, N'Proveedor 990', N'1000000000990', N'Direccion 990', N'2000990')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (991, N'Proveedor 991', N'1000000000991', N'Direccion 991', N'2000991')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (992, N'Proveedor 992', N'1000000000992', N'Direccion 992', N'2000992')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (993, N'Proveedor 993', N'1000000000993', N'Direccion 993', N'2000993')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (994, N'Proveedor 994', N'1000000000994', N'Direccion 994', N'2000994')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (995, N'Proveedor 995', N'1000000000995', N'Direccion 995', N'2000995')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (996, N'Proveedor 996', N'1000000000996', N'Direccion 996', N'2000996')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (997, N'Proveedor 997', N'1000000000997', N'Direccion 997', N'2000997')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (998, N'Proveedor 998', N'1000000000998', N'Direccion 998', N'2000998')
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (999, N'Proveedor 999', N'1000000000999', N'Direccion 999', N'2000999')
GO
INSERT [dbo].[Proveedor] ([Id_Proveedor], [NombreProveedor], [RUCProveedor], [DireccionProveedor], [TelefonoProveedor]) VALUES (1000, N'Proveedor 1000', N'1000000001000', N'Direccion 1000', N'2001000')
SET IDENTITY_INSERT [dbo].[Proveedor] OFF
SET IDENTITY_INSERT [dbo].[TipoLlanta] ON 

INSERT [dbo].[TipoLlanta] ([Id_TipoLlanta], [Id_Bodega], [Id_Categoria], [Id_Usuario], [Id_Proveedor], [NombreTipoLlanta], [Stock], [Marca], [Rin], [PrecioCompra], [PrecioUnitario], [Color]) VALUES (1, 4, 3, 5, 6, N'Llanta para lluvia', 1500, N'Michelin', 14, CAST(45.00 AS Decimal(30, 2)), CAST(47.00 AS Decimal(30, 2)), N'Negro')
INSERT [dbo].[TipoLlanta] ([Id_TipoLlanta], [Id_Bodega], [Id_Categoria], [Id_Usuario], [Id_Proveedor], [NombreTipoLlanta], [Stock], [Marca], [Rin], [PrecioCompra], [PrecioUnitario], [Color]) VALUES (2, 2, 4, 5, 9, N'Llanta para cemento', 1196, N'Marca 1', 13, CAST(32.00 AS Decimal(30, 2)), CAST(35.00 AS Decimal(30, 2)), N'Gris')
SET IDENTITY_INSERT [dbo].[TipoLlanta] OFF
SET IDENTITY_INSERT [dbo].[Usuario] ON 

INSERT [dbo].[Usuario] ([Id_Usuario], [UserId]) VALUES (5, N'2bd49b6c-c24b-4689-bbdf-0fb56c395285')
INSERT [dbo].[Usuario] ([Id_Usuario], [UserId]) VALUES (12, N'3e717751-33ec-49e6-8b96-25e783e0dd23')
INSERT [dbo].[Usuario] ([Id_Usuario], [UserId]) VALUES (14, N'd11de2b9-de81-4a42-aa12-a1b6a0797668')
INSERT [dbo].[Usuario] ([Id_Usuario], [UserId]) VALUES (9, N'4198bd77-dde7-495b-87b9-d242493a45d3')
SET IDENTITY_INSERT [dbo].[Usuario] OFF
SET IDENTITY_INSERT [dbo].[Venta] ON 

INSERT [dbo].[Venta] ([Id_Venta], [Id_Usuario], [Id_Cliente], [FechaFactura], [TotalFactura], [Devuelto]) VALUES (1, 9, 6, CAST(N'2017-02-02' AS Date), CAST(140.00 AS Decimal(30, 2)), 0)
SET IDENTITY_INSERT [dbo].[Venta] OFF
INSERT [dbo].[VentaTipoLlanta] ([Id_Venta], [Id_TipoLlanta], [Cantidad]) VALUES (1, 2, 4)
/****** Object:  Index [PK__aspnet_A__C93A4C983F6D4C38]    Script Date: 02/02/2017 5:33:08 ******/
ALTER TABLE [dbo].[aspnet_Applications] ADD PRIMARY KEY NONCLUSTERED 
(
	[ApplicationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [UQ__aspnet_A__17477DE43CB86BD5]    Script Date: 02/02/2017 5:33:08 ******/
ALTER TABLE [dbo].[aspnet_Applications] ADD UNIQUE NONCLUSTERED 
(
	[LoweredApplicationName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [UQ__aspnet_A__309103319FDF03A3]    Script Date: 02/02/2017 5:33:08 ******/
ALTER TABLE [dbo].[aspnet_Applications] ADD UNIQUE NONCLUSTERED 
(
	[ApplicationName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [PK__aspnet_M__1788CC4DD6A4E525]    Script Date: 02/02/2017 5:33:08 ******/
ALTER TABLE [dbo].[aspnet_Membership] ADD PRIMARY KEY NONCLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [PK__aspnet_P__CD67DC588B96ACE2]    Script Date: 02/02/2017 5:33:08 ******/
ALTER TABLE [dbo].[aspnet_Paths] ADD PRIMARY KEY NONCLUSTERED 
(
	[PathId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [PK__aspnet_P__3214EC06DE5C62EE]    Script Date: 02/02/2017 5:33:08 ******/
ALTER TABLE [dbo].[aspnet_PersonalizationPerUser] ADD PRIMARY KEY NONCLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [aspnet_PersonalizationPerUser_ncindex2]    Script Date: 02/02/2017 5:33:08 ******/
CREATE UNIQUE NONCLUSTERED INDEX [aspnet_PersonalizationPerUser_ncindex2] ON [dbo].[aspnet_PersonalizationPerUser]
(
	[UserId] ASC,
	[PathId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [PK__aspnet_R__8AFACE1B7B48C173]    Script Date: 02/02/2017 5:33:08 ******/
ALTER TABLE [dbo].[aspnet_Roles] ADD PRIMARY KEY NONCLUSTERED 
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [PK__aspnet_U__1788CC4DE4AB355B]    Script Date: 02/02/2017 5:33:08 ******/
ALTER TABLE [dbo].[aspnet_Users] ADD PRIMARY KEY NONCLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [aspnet_Users_Index2]    Script Date: 02/02/2017 5:33:08 ******/
CREATE NONCLUSTERED INDEX [aspnet_Users_Index2] ON [dbo].[aspnet_Users]
(
	[ApplicationId] ASC,
	[LastActivityDate] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [aspnet_UsersInRoles_index]    Script Date: 02/02/2017 5:33:08 ******/
CREATE NONCLUSTERED INDEX [aspnet_UsersInRoles_index] ON [dbo].[aspnet_UsersInRoles]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [UQ__Usuario__1788CC4DDD825011]    Script Date: 02/02/2017 5:33:08 ******/
ALTER TABLE [dbo].[Usuario] ADD UNIQUE NONCLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[aspnet_Applications] ADD  DEFAULT (newid()) FOR [ApplicationId]
GO
ALTER TABLE [dbo].[aspnet_Membership] ADD  DEFAULT ((0)) FOR [PasswordFormat]
GO
ALTER TABLE [dbo].[aspnet_Paths] ADD  DEFAULT (newid()) FOR [PathId]
GO
ALTER TABLE [dbo].[aspnet_PersonalizationPerUser] ADD  DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [dbo].[aspnet_Roles] ADD  DEFAULT (newid()) FOR [RoleId]
GO
ALTER TABLE [dbo].[aspnet_Users] ADD  DEFAULT (newid()) FOR [UserId]
GO
ALTER TABLE [dbo].[aspnet_Users] ADD  DEFAULT (NULL) FOR [MobileAlias]
GO
ALTER TABLE [dbo].[aspnet_Users] ADD  DEFAULT ((0)) FOR [IsAnonymous]
GO
ALTER TABLE [dbo].[Venta] ADD  DEFAULT ((0)) FOR [Devuelto]
GO
ALTER TABLE [dbo].[aspnet_Membership]  WITH CHECK ADD FOREIGN KEY([ApplicationId])
REFERENCES [dbo].[aspnet_Applications] ([ApplicationId])
GO
ALTER TABLE [dbo].[aspnet_Membership]  WITH CHECK ADD FOREIGN KEY([UserId])
REFERENCES [dbo].[aspnet_Users] ([UserId])
GO
ALTER TABLE [dbo].[aspnet_Paths]  WITH CHECK ADD FOREIGN KEY([ApplicationId])
REFERENCES [dbo].[aspnet_Applications] ([ApplicationId])
GO
ALTER TABLE [dbo].[aspnet_PersonalizationAllUsers]  WITH CHECK ADD FOREIGN KEY([PathId])
REFERENCES [dbo].[aspnet_Paths] ([PathId])
GO
ALTER TABLE [dbo].[aspnet_PersonalizationPerUser]  WITH CHECK ADD FOREIGN KEY([PathId])
REFERENCES [dbo].[aspnet_Paths] ([PathId])
GO
ALTER TABLE [dbo].[aspnet_PersonalizationPerUser]  WITH CHECK ADD FOREIGN KEY([UserId])
REFERENCES [dbo].[aspnet_Users] ([UserId])
GO
ALTER TABLE [dbo].[aspnet_Profile]  WITH CHECK ADD FOREIGN KEY([UserId])
REFERENCES [dbo].[aspnet_Users] ([UserId])
GO
ALTER TABLE [dbo].[aspnet_Roles]  WITH CHECK ADD FOREIGN KEY([ApplicationId])
REFERENCES [dbo].[aspnet_Applications] ([ApplicationId])
GO
ALTER TABLE [dbo].[aspnet_Users]  WITH CHECK ADD FOREIGN KEY([ApplicationId])
REFERENCES [dbo].[aspnet_Applications] ([ApplicationId])
GO
ALTER TABLE [dbo].[aspnet_UsersInRoles]  WITH CHECK ADD FOREIGN KEY([RoleId])
REFERENCES [dbo].[aspnet_Roles] ([RoleId])
GO
ALTER TABLE [dbo].[aspnet_UsersInRoles]  WITH CHECK ADD FOREIGN KEY([UserId])
REFERENCES [dbo].[aspnet_Users] ([UserId])
GO
ALTER TABLE [dbo].[NotaCredito]  WITH CHECK ADD FOREIGN KEY([Id_Venta])
REFERENCES [dbo].[Venta] ([Id_Venta])
GO
ALTER TABLE [dbo].[TipoLlanta]  WITH CHECK ADD FOREIGN KEY([Id_Bodega])
REFERENCES [dbo].[Bodega] ([Id_Bodega])
GO
ALTER TABLE [dbo].[TipoLlanta]  WITH CHECK ADD FOREIGN KEY([Id_Categoria])
REFERENCES [dbo].[Categoria] ([Id_Categoria])
GO
ALTER TABLE [dbo].[TipoLlanta]  WITH CHECK ADD FOREIGN KEY([Id_Proveedor])
REFERENCES [dbo].[Proveedor] ([Id_Proveedor])
GO
ALTER TABLE [dbo].[TipoLlanta]  WITH CHECK ADD FOREIGN KEY([Id_Usuario])
REFERENCES [dbo].[Usuario] ([Id_Usuario])
GO
ALTER TABLE [dbo].[Usuario]  WITH CHECK ADD  CONSTRAINT [FK_Usuario_aspnet_Users] FOREIGN KEY([UserId])
REFERENCES [dbo].[aspnet_Users] ([UserId])
GO
ALTER TABLE [dbo].[Usuario] CHECK CONSTRAINT [FK_Usuario_aspnet_Users]
GO
ALTER TABLE [dbo].[Venta]  WITH CHECK ADD FOREIGN KEY([Id_Cliente])
REFERENCES [dbo].[Cliente] ([Id_Cliente])
GO
ALTER TABLE [dbo].[Venta]  WITH CHECK ADD FOREIGN KEY([Id_Usuario])
REFERENCES [dbo].[Usuario] ([Id_Usuario])
GO
ALTER TABLE [dbo].[VentaTipoLlanta]  WITH CHECK ADD FOREIGN KEY([Id_TipoLlanta])
REFERENCES [dbo].[TipoLlanta] ([Id_TipoLlanta])
GO
ALTER TABLE [dbo].[VentaTipoLlanta]  WITH CHECK ADD FOREIGN KEY([Id_Venta])
REFERENCES [dbo].[Venta] ([Id_Venta])
GO
ALTER TABLE [dbo].[Bodega]  WITH CHECK ADD CHECK  ((len([DireccionBodega])>(0)))
GO
ALTER TABLE [dbo].[Bodega]  WITH CHECK ADD CHECK  ((len([NombreBodega])>(0)))
GO
ALTER TABLE [dbo].[Bodega]  WITH CHECK ADD CHECK  ((len([TelefonoBodega])>=(7)))
GO
ALTER TABLE [dbo].[Categoria]  WITH CHECK ADD CHECK  ((len([DescripcionCategoria])>(0)))
GO
ALTER TABLE [dbo].[Categoria]  WITH CHECK ADD CHECK  ((len([NombreCategoria])>(0)))
GO
ALTER TABLE [dbo].[Cliente]  WITH CHECK ADD CHECK  ((len([ApellidoCliente])>(0)))
GO
ALTER TABLE [dbo].[Cliente]  WITH CHECK ADD CHECK  ((len([CorreoElectronicoCliente])>(0)))
GO
ALTER TABLE [dbo].[Cliente]  WITH CHECK ADD CHECK  ((len([DireccionCliente])>(0)))
GO
ALTER TABLE [dbo].[Cliente]  WITH CHECK ADD CHECK  ((len([IdentificacionCliente])=(10) OR len([IdentificacionCliente])=(13)))
GO
ALTER TABLE [dbo].[Cliente]  WITH CHECK ADD CHECK  ((len([NombreCliente])>(0)))
GO
ALTER TABLE [dbo].[Cliente]  WITH CHECK ADD CHECK  ((len([TelefonoCliente])>=(7)))
GO
ALTER TABLE [dbo].[Proveedor]  WITH CHECK ADD CHECK  ((len([DireccionProveedor])>(0)))
GO
ALTER TABLE [dbo].[Proveedor]  WITH CHECK ADD CHECK  ((len([NombreProveedor])>(0)))
GO
ALTER TABLE [dbo].[Proveedor]  WITH CHECK ADD CHECK  ((len([RUCProveedor])=(13)))
GO
ALTER TABLE [dbo].[Proveedor]  WITH CHECK ADD CHECK  ((len([TelefonoProveedor])>=(7)))
GO
ALTER TABLE [dbo].[TipoLlanta]  WITH CHECK ADD CHECK  ((len([Color])>(0)))
GO
ALTER TABLE [dbo].[TipoLlanta]  WITH CHECK ADD CHECK  ((len([Marca])>(0)))
GO
ALTER TABLE [dbo].[TipoLlanta]  WITH CHECK ADD CHECK  ((len([NombreTipoLlanta])>(0)))
GO
ALTER TABLE [dbo].[TipoLlanta]  WITH CHECK ADD CHECK  (([PrecioCompra]>(0)))
GO
ALTER TABLE [dbo].[TipoLlanta]  WITH CHECK ADD CHECK  (([PrecioUnitario]>(0)))
GO
/****** Object:  StoredProcedure [dbo].[aspnet_AnyDataInTables]    Script Date: 02/02/2017 5:33:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_AnyDataInTables]
    @TablesToCheck int
AS
BEGIN
    -- Check Membership table if (@TablesToCheck & 1) is set
    IF ((@TablesToCheck & 1) <> 0 AND
        (EXISTS (SELECT name FROM sysobjects WHERE (name = N'vw_aspnet_MembershipUsers') AND (type = 'V'))))
    BEGIN
        IF (EXISTS(SELECT TOP 1 UserId FROM dbo.aspnet_Membership))
        BEGIN
            SELECT N'aspnet_Membership'
            RETURN
        END
    END

    -- Check aspnet_Roles table if (@TablesToCheck & 2) is set
    IF ((@TablesToCheck & 2) <> 0  AND
        (EXISTS (SELECT name FROM sysobjects WHERE (name = N'vw_aspnet_Roles') AND (type = 'V'))) )
    BEGIN
        IF (EXISTS(SELECT TOP 1 RoleId FROM dbo.aspnet_Roles))
        BEGIN
            SELECT N'aspnet_Roles'
            RETURN
        END
    END

    -- Check aspnet_Profile table if (@TablesToCheck & 4) is set
    IF ((@TablesToCheck & 4) <> 0  AND
        (EXISTS (SELECT name FROM sysobjects WHERE (name = N'vw_aspnet_Profiles') AND (type = 'V'))) )
    BEGIN
        IF (EXISTS(SELECT TOP 1 UserId FROM dbo.aspnet_Profile))
        BEGIN
            SELECT N'aspnet_Profile'
            RETURN
        END
    END

    -- Check aspnet_PersonalizationPerUser table if (@TablesToCheck & 8) is set
    IF ((@TablesToCheck & 8) <> 0  AND
        (EXISTS (SELECT name FROM sysobjects WHERE (name = N'vw_aspnet_WebPartState_User') AND (type = 'V'))) )
    BEGIN
        IF (EXISTS(SELECT TOP 1 UserId FROM dbo.aspnet_PersonalizationPerUser))
        BEGIN
            SELECT N'aspnet_PersonalizationPerUser'
            RETURN
        END
    END

    -- Check aspnet_PersonalizationPerUser table if (@TablesToCheck & 16) is set
    IF ((@TablesToCheck & 16) <> 0  AND
        (EXISTS (SELECT name FROM sysobjects WHERE (name = N'aspnet_WebEvent_LogEvent') AND (type = 'P'))) )
    BEGIN
        IF (EXISTS(SELECT TOP 1 * FROM dbo.aspnet_WebEvent_Events))
        BEGIN
            SELECT N'aspnet_WebEvent_Events'
            RETURN
        END
    END

    -- Check aspnet_Users table if (@TablesToCheck & 1,2,4 & 8) are all set
    IF ((@TablesToCheck & 1) <> 0 AND
        (@TablesToCheck & 2) <> 0 AND
        (@TablesToCheck & 4) <> 0 AND
        (@TablesToCheck & 8) <> 0 AND
        (@TablesToCheck & 32) <> 0 AND
        (@TablesToCheck & 128) <> 0 AND
        (@TablesToCheck & 256) <> 0 AND
        (@TablesToCheck & 512) <> 0 AND
        (@TablesToCheck & 1024) <> 0)
    BEGIN
        IF (EXISTS(SELECT TOP 1 UserId FROM dbo.aspnet_Users))
        BEGIN
            SELECT N'aspnet_Users'
            RETURN
        END
        IF (EXISTS(SELECT TOP 1 ApplicationId FROM dbo.aspnet_Applications))
        BEGIN
            SELECT N'aspnet_Applications'
            RETURN
        END
    END
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Applications_CreateApplication]    Script Date: 02/02/2017 5:33:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE PROCEDURE [dbo].[aspnet_Applications_CreateApplication]
    @ApplicationName      nvarchar(256),
    @ApplicationId        uniqueidentifier OUTPUT
AS
BEGIN
    SELECT  @ApplicationId = ApplicationId FROM dbo.aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName

    IF(@ApplicationId IS NULL)
    BEGIN
        DECLARE @TranStarted   bit
        SET @TranStarted = 0

        IF( @@TRANCOUNT = 0 )
        BEGIN
	        BEGIN TRANSACTION
	        SET @TranStarted = 1
        END
        ELSE
    	    SET @TranStarted = 0

        SELECT  @ApplicationId = ApplicationId
        FROM dbo.aspnet_Applications WITH (UPDLOCK, HOLDLOCK)
        WHERE LOWER(@ApplicationName) = LoweredApplicationName

        IF(@ApplicationId IS NULL)
        BEGIN
            SELECT  @ApplicationId = NEWID()
            INSERT  dbo.aspnet_Applications (ApplicationId, ApplicationName, LoweredApplicationName)
            VALUES  (@ApplicationId, @ApplicationName, LOWER(@ApplicationName))
        END


        IF( @TranStarted = 1 )
        BEGIN
            IF(@@ERROR = 0)
            BEGIN
	        SET @TranStarted = 0
	        COMMIT TRANSACTION
            END
            ELSE
            BEGIN
                SET @TranStarted = 0
                ROLLBACK TRANSACTION
            END
        END
    END
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_CheckSchemaVersion]    Script Date: 02/02/2017 5:33:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE PROCEDURE [dbo].[aspnet_CheckSchemaVersion]
    @Feature                   nvarchar(128),
    @CompatibleSchemaVersion   nvarchar(128)
AS
BEGIN
    IF (EXISTS( SELECT  *
                FROM    dbo.aspnet_SchemaVersions
                WHERE   Feature = LOWER( @Feature ) AND
                        CompatibleSchemaVersion = @CompatibleSchemaVersion ))
        RETURN 0

    RETURN 1
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_ChangePasswordQuestionAndAnswer]    Script Date: 02/02/2017 5:33:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_ChangePasswordQuestionAndAnswer]
    @ApplicationName       nvarchar(256),
    @UserName              nvarchar(256),
    @NewPasswordQuestion   nvarchar(256),
    @NewPasswordAnswer     nvarchar(128)
AS
BEGIN
    DECLARE @UserId uniqueidentifier
    SELECT  @UserId = NULL
    SELECT  @UserId = u.UserId
    FROM    dbo.aspnet_Membership m, dbo.aspnet_Users u, dbo.aspnet_Applications a
    WHERE   LoweredUserName = LOWER(@UserName) AND
            u.ApplicationId = a.ApplicationId  AND
            LOWER(@ApplicationName) = a.LoweredApplicationName AND
            u.UserId = m.UserId
    IF (@UserId IS NULL)
    BEGIN
        RETURN(1)
    END

    UPDATE dbo.aspnet_Membership
    SET    PasswordQuestion = @NewPasswordQuestion, PasswordAnswer = @NewPasswordAnswer
    WHERE  UserId=@UserId
    RETURN(0)
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_CreateUser]    Script Date: 02/02/2017 5:33:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_CreateUser]
    @ApplicationName                        nvarchar(256),
    @UserName                               nvarchar(256),
    @Password                               nvarchar(128),
    @PasswordSalt                           nvarchar(128),
    @Email                                  nvarchar(256),
    @PasswordQuestion                       nvarchar(256),
    @PasswordAnswer                         nvarchar(128),
    @IsApproved                             bit,
    @CurrentTimeUtc                         datetime,
    @CreateDate                             datetime = NULL,
    @UniqueEmail                            int      = 0,
    @PasswordFormat                         int      = 0,
    @UserId                                 uniqueidentifier OUTPUT
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL

    DECLARE @NewUserId uniqueidentifier
    SELECT @NewUserId = NULL

    DECLARE @IsLockedOut bit
    SET @IsLockedOut = 0

    DECLARE @LastLockoutDate  datetime
    SET @LastLockoutDate = CONVERT( datetime, '17540101', 112 )

    DECLARE @FailedPasswordAttemptCount int
    SET @FailedPasswordAttemptCount = 0

    DECLARE @FailedPasswordAttemptWindowStart  datetime
    SET @FailedPasswordAttemptWindowStart = CONVERT( datetime, '17540101', 112 )

    DECLARE @FailedPasswordAnswerAttemptCount int
    SET @FailedPasswordAnswerAttemptCount = 0

    DECLARE @FailedPasswordAnswerAttemptWindowStart  datetime
    SET @FailedPasswordAnswerAttemptWindowStart = CONVERT( datetime, '17540101', 112 )

    DECLARE @NewUserCreated bit
    DECLARE @ReturnValue   int
    SET @ReturnValue = 0

    DECLARE @ErrorCode     int
    SET @ErrorCode = 0

    DECLARE @TranStarted   bit
    SET @TranStarted = 0

    IF( @@TRANCOUNT = 0 )
    BEGIN
	    BEGIN TRANSACTION
	    SET @TranStarted = 1
    END
    ELSE
    	SET @TranStarted = 0

    EXEC dbo.aspnet_Applications_CreateApplication @ApplicationName, @ApplicationId OUTPUT

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    SET @CreateDate = @CurrentTimeUtc

    SELECT  @NewUserId = UserId FROM dbo.aspnet_Users WHERE LOWER(@UserName) = LoweredUserName AND @ApplicationId = ApplicationId
    IF ( @NewUserId IS NULL )
    BEGIN
        SET @NewUserId = @UserId
        EXEC @ReturnValue = dbo.aspnet_Users_CreateUser @ApplicationId, @UserName, 0, @CreateDate, @NewUserId OUTPUT
        SET @NewUserCreated = 1
    END
    ELSE
    BEGIN
        SET @NewUserCreated = 0
        IF( @NewUserId <> @UserId AND @UserId IS NOT NULL )
        BEGIN
            SET @ErrorCode = 6
            GOTO Cleanup
        END
    END

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    IF( @ReturnValue = -1 )
    BEGIN
        SET @ErrorCode = 10
        GOTO Cleanup
    END

    IF ( EXISTS ( SELECT UserId
                  FROM   dbo.aspnet_Membership
                  WHERE  @NewUserId = UserId ) )
    BEGIN
        SET @ErrorCode = 6
        GOTO Cleanup
    END

    SET @UserId = @NewUserId

    IF (@UniqueEmail = 1)
    BEGIN
        IF (EXISTS (SELECT *
                    FROM  dbo.aspnet_Membership m WITH ( UPDLOCK, HOLDLOCK )
                    WHERE ApplicationId = @ApplicationId AND LoweredEmail = LOWER(@Email)))
        BEGIN
            SET @ErrorCode = 7
            GOTO Cleanup
        END
    END

    IF (@NewUserCreated = 0)
    BEGIN
        UPDATE dbo.aspnet_Users
        SET    LastActivityDate = @CreateDate
        WHERE  @UserId = UserId
        IF( @@ERROR <> 0 )
        BEGIN
            SET @ErrorCode = -1
            GOTO Cleanup
        END
    END

    INSERT INTO dbo.aspnet_Membership
                ( ApplicationId,
                  UserId,
                  Password,
                  PasswordSalt,
                  Email,
                  LoweredEmail,
                  PasswordQuestion,
                  PasswordAnswer,
                  PasswordFormat,
                  IsApproved,
                  IsLockedOut,
                  CreateDate,
                  LastLoginDate,
                  LastPasswordChangedDate,
                  LastLockoutDate,
                  FailedPasswordAttemptCount,
                  FailedPasswordAttemptWindowStart,
                  FailedPasswordAnswerAttemptCount,
                  FailedPasswordAnswerAttemptWindowStart )
         VALUES ( @ApplicationId,
                  @UserId,
                  @Password,
                  @PasswordSalt,
                  @Email,
                  LOWER(@Email),
                  @PasswordQuestion,
                  @PasswordAnswer,
                  @PasswordFormat,
                  @IsApproved,
                  @IsLockedOut,
                  @CreateDate,
                  @CreateDate,
                  @CreateDate,
                  @LastLockoutDate,
                  @FailedPasswordAttemptCount,
                  @FailedPasswordAttemptWindowStart,
                  @FailedPasswordAnswerAttemptCount,
                  @FailedPasswordAnswerAttemptWindowStart )

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    IF( @TranStarted = 1 )
    BEGIN
	    SET @TranStarted = 0
	    COMMIT TRANSACTION
    END

    RETURN 0

Cleanup:

    IF( @TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
    	ROLLBACK TRANSACTION
    END

    RETURN @ErrorCode

END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_FindUsersByEmail]    Script Date: 02/02/2017 5:33:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_FindUsersByEmail]
    @ApplicationName       nvarchar(256),
    @EmailToMatch          nvarchar(256),
    @PageIndex             int,
    @PageSize              int
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM dbo.aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN 0

    -- Set the page bounds
    DECLARE @PageLowerBound int
    DECLARE @PageUpperBound int
    DECLARE @TotalRecords   int
    SET @PageLowerBound = @PageSize * @PageIndex
    SET @PageUpperBound = @PageSize - 1 + @PageLowerBound

    -- Create a temp table TO store the select results
    CREATE TABLE #PageIndexForUsers
    (
        IndexId int IDENTITY (0, 1) NOT NULL,
        UserId uniqueidentifier
    )

    -- Insert into our temp table
    IF( @EmailToMatch IS NULL )
        INSERT INTO #PageIndexForUsers (UserId)
            SELECT u.UserId
            FROM   dbo.aspnet_Users u, dbo.aspnet_Membership m
            WHERE  u.ApplicationId = @ApplicationId AND m.UserId = u.UserId AND m.Email IS NULL
            ORDER BY m.LoweredEmail
    ELSE
        INSERT INTO #PageIndexForUsers (UserId)
            SELECT u.UserId
            FROM   dbo.aspnet_Users u, dbo.aspnet_Membership m
            WHERE  u.ApplicationId = @ApplicationId AND m.UserId = u.UserId AND m.LoweredEmail LIKE LOWER(@EmailToMatch)
            ORDER BY m.LoweredEmail

    SELECT  u.UserName, m.Email, m.PasswordQuestion, m.Comment, m.IsApproved,
            m.CreateDate,
            m.LastLoginDate,
            u.LastActivityDate,
            m.LastPasswordChangedDate,
            u.UserId, m.IsLockedOut,
            m.LastLockoutDate
    FROM   dbo.aspnet_Membership m, dbo.aspnet_Users u, #PageIndexForUsers p
    WHERE  u.UserId = p.UserId AND u.UserId = m.UserId AND
           p.IndexId >= @PageLowerBound AND p.IndexId <= @PageUpperBound
    ORDER BY m.LoweredEmail

    SELECT  @TotalRecords = COUNT(*)
    FROM    #PageIndexForUsers
    RETURN @TotalRecords
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_FindUsersByName]    Script Date: 02/02/2017 5:33:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_FindUsersByName]
    @ApplicationName       nvarchar(256),
    @UserNameToMatch       nvarchar(256),
    @PageIndex             int,
    @PageSize              int
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM dbo.aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN 0

    -- Set the page bounds
    DECLARE @PageLowerBound int
    DECLARE @PageUpperBound int
    DECLARE @TotalRecords   int
    SET @PageLowerBound = @PageSize * @PageIndex
    SET @PageUpperBound = @PageSize - 1 + @PageLowerBound

    -- Create a temp table TO store the select results
    CREATE TABLE #PageIndexForUsers
    (
        IndexId int IDENTITY (0, 1) NOT NULL,
        UserId uniqueidentifier
    )

    -- Insert into our temp table
    INSERT INTO #PageIndexForUsers (UserId)
        SELECT u.UserId
        FROM   dbo.aspnet_Users u, dbo.aspnet_Membership m
        WHERE  u.ApplicationId = @ApplicationId AND m.UserId = u.UserId AND u.LoweredUserName LIKE LOWER(@UserNameToMatch)
        ORDER BY u.UserName


    SELECT  u.UserName, m.Email, m.PasswordQuestion, m.Comment, m.IsApproved,
            m.CreateDate,
            m.LastLoginDate,
            u.LastActivityDate,
            m.LastPasswordChangedDate,
            u.UserId, m.IsLockedOut,
            m.LastLockoutDate
    FROM   dbo.aspnet_Membership m, dbo.aspnet_Users u, #PageIndexForUsers p
    WHERE  u.UserId = p.UserId AND u.UserId = m.UserId AND
           p.IndexId >= @PageLowerBound AND p.IndexId <= @PageUpperBound
    ORDER BY u.UserName

    SELECT  @TotalRecords = COUNT(*)
    FROM    #PageIndexForUsers
    RETURN @TotalRecords
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_GetAllUsers]    Script Date: 02/02/2017 5:33:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_GetAllUsers]
    @ApplicationName       nvarchar(256),
    @PageIndex             int,
    @PageSize              int
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM dbo.aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN 0


    -- Set the page bounds
    DECLARE @PageLowerBound int
    DECLARE @PageUpperBound int
    DECLARE @TotalRecords   int
    SET @PageLowerBound = @PageSize * @PageIndex
    SET @PageUpperBound = @PageSize - 1 + @PageLowerBound

    -- Create a temp table TO store the select results
    CREATE TABLE #PageIndexForUsers
    (
        IndexId int IDENTITY (0, 1) NOT NULL,
        UserId uniqueidentifier
    )

    -- Insert into our temp table
    INSERT INTO #PageIndexForUsers (UserId)
    SELECT u.UserId
    FROM   dbo.aspnet_Membership m, dbo.aspnet_Users u
    WHERE  u.ApplicationId = @ApplicationId AND u.UserId = m.UserId
    ORDER BY u.UserName

    SELECT @TotalRecords = @@ROWCOUNT

    SELECT u.UserName, m.Email, m.PasswordQuestion, m.Comment, m.IsApproved,
            m.CreateDate,
            m.LastLoginDate,
            u.LastActivityDate,
            m.LastPasswordChangedDate,
            u.UserId, m.IsLockedOut,
            m.LastLockoutDate
    FROM   dbo.aspnet_Membership m, dbo.aspnet_Users u, #PageIndexForUsers p
    WHERE  u.UserId = p.UserId AND u.UserId = m.UserId AND
           p.IndexId >= @PageLowerBound AND p.IndexId <= @PageUpperBound
    ORDER BY u.UserName
    RETURN @TotalRecords
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_GetNumberOfUsersOnline]    Script Date: 02/02/2017 5:33:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_GetNumberOfUsersOnline]
    @ApplicationName            nvarchar(256),
    @MinutesSinceLastInActive   int,
    @CurrentTimeUtc             datetime
AS
BEGIN
    DECLARE @DateActive datetime
    SELECT  @DateActive = DATEADD(minute,  -(@MinutesSinceLastInActive), @CurrentTimeUtc)

    DECLARE @NumOnline int
    SELECT  @NumOnline = COUNT(*)
    FROM    dbo.aspnet_Users u(NOLOCK),
            dbo.aspnet_Applications a(NOLOCK),
            dbo.aspnet_Membership m(NOLOCK)
    WHERE   u.ApplicationId = a.ApplicationId                  AND
            LastActivityDate > @DateActive                     AND
            a.LoweredApplicationName = LOWER(@ApplicationName) AND
            u.UserId = m.UserId
    RETURN(@NumOnline)
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_GetPassword]    Script Date: 02/02/2017 5:33:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_GetPassword]
    @ApplicationName                nvarchar(256),
    @UserName                       nvarchar(256),
    @MaxInvalidPasswordAttempts     int,
    @PasswordAttemptWindow          int,
    @CurrentTimeUtc                 datetime,
    @PasswordAnswer                 nvarchar(128) = NULL
AS
BEGIN
    DECLARE @UserId                                 uniqueidentifier
    DECLARE @PasswordFormat                         int
    DECLARE @Password                               nvarchar(128)
    DECLARE @passAns                                nvarchar(128)
    DECLARE @IsLockedOut                            bit
    DECLARE @LastLockoutDate                        datetime
    DECLARE @FailedPasswordAttemptCount             int
    DECLARE @FailedPasswordAttemptWindowStart       datetime
    DECLARE @FailedPasswordAnswerAttemptCount       int
    DECLARE @FailedPasswordAnswerAttemptWindowStart datetime

    DECLARE @ErrorCode     int
    SET @ErrorCode = 0

    DECLARE @TranStarted   bit
    SET @TranStarted = 0

    IF( @@TRANCOUNT = 0 )
    BEGIN
	    BEGIN TRANSACTION
	    SET @TranStarted = 1
    END
    ELSE
    	SET @TranStarted = 0

    SELECT  @UserId = u.UserId,
            @Password = m.Password,
            @passAns = m.PasswordAnswer,
            @PasswordFormat = m.PasswordFormat,
            @IsLockedOut = m.IsLockedOut,
            @LastLockoutDate = m.LastLockoutDate,
            @FailedPasswordAttemptCount = m.FailedPasswordAttemptCount,
            @FailedPasswordAttemptWindowStart = m.FailedPasswordAttemptWindowStart,
            @FailedPasswordAnswerAttemptCount = m.FailedPasswordAnswerAttemptCount,
            @FailedPasswordAnswerAttemptWindowStart = m.FailedPasswordAnswerAttemptWindowStart
    FROM    dbo.aspnet_Applications a, dbo.aspnet_Users u, dbo.aspnet_Membership m WITH ( UPDLOCK )
    WHERE   LOWER(@ApplicationName) = a.LoweredApplicationName AND
            u.ApplicationId = a.ApplicationId    AND
            u.UserId = m.UserId AND
            LOWER(@UserName) = u.LoweredUserName

    IF ( @@rowcount = 0 )
    BEGIN
        SET @ErrorCode = 1
        GOTO Cleanup
    END

    IF( @IsLockedOut = 1 )
    BEGIN
        SET @ErrorCode = 99
        GOTO Cleanup
    END

    IF ( NOT( @PasswordAnswer IS NULL ) )
    BEGIN
        IF( ( @passAns IS NULL ) OR ( LOWER( @passAns ) <> LOWER( @PasswordAnswer ) ) )
        BEGIN
            IF( @CurrentTimeUtc > DATEADD( minute, @PasswordAttemptWindow, @FailedPasswordAnswerAttemptWindowStart ) )
            BEGIN
                SET @FailedPasswordAnswerAttemptWindowStart = @CurrentTimeUtc
                SET @FailedPasswordAnswerAttemptCount = 1
            END
            ELSE
            BEGIN
                SET @FailedPasswordAnswerAttemptCount = @FailedPasswordAnswerAttemptCount + 1
                SET @FailedPasswordAnswerAttemptWindowStart = @CurrentTimeUtc
            END

            BEGIN
                IF( @FailedPasswordAnswerAttemptCount >= @MaxInvalidPasswordAttempts )
                BEGIN
                    SET @IsLockedOut = 1
                    SET @LastLockoutDate = @CurrentTimeUtc
                END
            END

            SET @ErrorCode = 3
        END
        ELSE
        BEGIN
            IF( @FailedPasswordAnswerAttemptCount > 0 )
            BEGIN
                SET @FailedPasswordAnswerAttemptCount = 0
                SET @FailedPasswordAnswerAttemptWindowStart = CONVERT( datetime, '17540101', 112 )
            END
        END

        UPDATE dbo.aspnet_Membership
        SET IsLockedOut = @IsLockedOut, LastLockoutDate = @LastLockoutDate,
            FailedPasswordAttemptCount = @FailedPasswordAttemptCount,
            FailedPasswordAttemptWindowStart = @FailedPasswordAttemptWindowStart,
            FailedPasswordAnswerAttemptCount = @FailedPasswordAnswerAttemptCount,
            FailedPasswordAnswerAttemptWindowStart = @FailedPasswordAnswerAttemptWindowStart
        WHERE @UserId = UserId

        IF( @@ERROR <> 0 )
        BEGIN
            SET @ErrorCode = -1
            GOTO Cleanup
        END
    END

    IF( @TranStarted = 1 )
    BEGIN
	SET @TranStarted = 0
	COMMIT TRANSACTION
    END

    IF( @ErrorCode = 0 )
        SELECT @Password, @PasswordFormat

    RETURN @ErrorCode

Cleanup:

    IF( @TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
    	ROLLBACK TRANSACTION
    END

    RETURN @ErrorCode

END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_GetPasswordWithFormat]    Script Date: 02/02/2017 5:33:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_GetPasswordWithFormat]
    @ApplicationName                nvarchar(256),
    @UserName                       nvarchar(256),
    @UpdateLastLoginActivityDate    bit,
    @CurrentTimeUtc                 datetime
AS
BEGIN
    DECLARE @IsLockedOut                        bit
    DECLARE @UserId                             uniqueidentifier
    DECLARE @Password                           nvarchar(128)
    DECLARE @PasswordSalt                       nvarchar(128)
    DECLARE @PasswordFormat                     int
    DECLARE @FailedPasswordAttemptCount         int
    DECLARE @FailedPasswordAnswerAttemptCount   int
    DECLARE @IsApproved                         bit
    DECLARE @LastActivityDate                   datetime
    DECLARE @LastLoginDate                      datetime

    SELECT  @UserId          = NULL

    SELECT  @UserId = u.UserId, @IsLockedOut = m.IsLockedOut, @Password=Password, @PasswordFormat=PasswordFormat,
            @PasswordSalt=PasswordSalt, @FailedPasswordAttemptCount=FailedPasswordAttemptCount,
		    @FailedPasswordAnswerAttemptCount=FailedPasswordAnswerAttemptCount, @IsApproved=IsApproved,
            @LastActivityDate = LastActivityDate, @LastLoginDate = LastLoginDate
    FROM    dbo.aspnet_Applications a, dbo.aspnet_Users u, dbo.aspnet_Membership m
    WHERE   LOWER(@ApplicationName) = a.LoweredApplicationName AND
            u.ApplicationId = a.ApplicationId    AND
            u.UserId = m.UserId AND
            LOWER(@UserName) = u.LoweredUserName

    IF (@UserId IS NULL)
        RETURN 1

    IF (@IsLockedOut = 1)
        RETURN 99

    SELECT   @Password, @PasswordFormat, @PasswordSalt, @FailedPasswordAttemptCount,
             @FailedPasswordAnswerAttemptCount, @IsApproved, @LastLoginDate, @LastActivityDate

    IF (@UpdateLastLoginActivityDate = 1 AND @IsApproved = 1)
    BEGIN
        UPDATE  dbo.aspnet_Membership
        SET     LastLoginDate = @CurrentTimeUtc
        WHERE   UserId = @UserId

        UPDATE  dbo.aspnet_Users
        SET     LastActivityDate = @CurrentTimeUtc
        WHERE   @UserId = UserId
    END


    RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_GetUserByEmail]    Script Date: 02/02/2017 5:33:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_GetUserByEmail]
    @ApplicationName  nvarchar(256),
    @Email            nvarchar(256)
AS
BEGIN
    IF( @Email IS NULL )
        SELECT  u.UserName
        FROM    dbo.aspnet_Applications a, dbo.aspnet_Users u, dbo.aspnet_Membership m
        WHERE   LOWER(@ApplicationName) = a.LoweredApplicationName AND
                u.ApplicationId = a.ApplicationId    AND
                u.UserId = m.UserId AND
                m.ApplicationId = a.ApplicationId AND
                m.LoweredEmail IS NULL
    ELSE
        SELECT  u.UserName
        FROM    dbo.aspnet_Applications a, dbo.aspnet_Users u, dbo.aspnet_Membership m
        WHERE   LOWER(@ApplicationName) = a.LoweredApplicationName AND
                u.ApplicationId = a.ApplicationId    AND
                u.UserId = m.UserId AND
                m.ApplicationId = a.ApplicationId AND
                LOWER(@Email) = m.LoweredEmail

    IF (@@rowcount = 0)
        RETURN(1)
    RETURN(0)
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_GetUserByName]    Script Date: 02/02/2017 5:33:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_GetUserByName]
    @ApplicationName      nvarchar(256),
    @UserName             nvarchar(256),
    @CurrentTimeUtc       datetime,
    @UpdateLastActivity   bit = 0
AS
BEGIN
    DECLARE @UserId uniqueidentifier

    IF (@UpdateLastActivity = 1)
    BEGIN
        -- select user ID from aspnet_users table
        SELECT TOP 1 @UserId = u.UserId
        FROM    dbo.aspnet_Applications a, dbo.aspnet_Users u, dbo.aspnet_Membership m
        WHERE    LOWER(@ApplicationName) = a.LoweredApplicationName AND
                u.ApplicationId = a.ApplicationId    AND
                LOWER(@UserName) = u.LoweredUserName AND u.UserId = m.UserId

        IF (@@ROWCOUNT = 0) -- Username not found
            RETURN -1

        UPDATE   dbo.aspnet_Users
        SET      LastActivityDate = @CurrentTimeUtc
        WHERE    @UserId = UserId

        SELECT m.Email, m.PasswordQuestion, m.Comment, m.IsApproved,
                m.CreateDate, m.LastLoginDate, u.LastActivityDate, m.LastPasswordChangedDate,
                u.UserId, m.IsLockedOut, m.LastLockoutDate
        FROM    dbo.aspnet_Applications a, dbo.aspnet_Users u, dbo.aspnet_Membership m
        WHERE  @UserId = u.UserId AND u.UserId = m.UserId 
    END
    ELSE
    BEGIN
        SELECT TOP 1 m.Email, m.PasswordQuestion, m.Comment, m.IsApproved,
                m.CreateDate, m.LastLoginDate, u.LastActivityDate, m.LastPasswordChangedDate,
                u.UserId, m.IsLockedOut,m.LastLockoutDate
        FROM    dbo.aspnet_Applications a, dbo.aspnet_Users u, dbo.aspnet_Membership m
        WHERE    LOWER(@ApplicationName) = a.LoweredApplicationName AND
                u.ApplicationId = a.ApplicationId    AND
                LOWER(@UserName) = u.LoweredUserName AND u.UserId = m.UserId

        IF (@@ROWCOUNT = 0) -- Username not found
            RETURN -1
    END

    RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_GetUserByUserId]    Script Date: 02/02/2017 5:33:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_GetUserByUserId]
    @UserId               uniqueidentifier,
    @CurrentTimeUtc       datetime,
    @UpdateLastActivity   bit = 0
AS
BEGIN
    IF ( @UpdateLastActivity = 1 )
    BEGIN
        UPDATE   dbo.aspnet_Users
        SET      LastActivityDate = @CurrentTimeUtc
        FROM     dbo.aspnet_Users
        WHERE    @UserId = UserId

        IF ( @@ROWCOUNT = 0 ) -- User ID not found
            RETURN -1
    END

    SELECT  m.Email, m.PasswordQuestion, m.Comment, m.IsApproved,
            m.CreateDate, m.LastLoginDate, u.LastActivityDate,
            m.LastPasswordChangedDate, u.UserName, m.IsLockedOut,
            m.LastLockoutDate
    FROM    dbo.aspnet_Users u, dbo.aspnet_Membership m
    WHERE   @UserId = u.UserId AND u.UserId = m.UserId

    IF ( @@ROWCOUNT = 0 ) -- User ID not found
       RETURN -1

    RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_ResetPassword]    Script Date: 02/02/2017 5:33:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_ResetPassword]
    @ApplicationName             nvarchar(256),
    @UserName                    nvarchar(256),
    @NewPassword                 nvarchar(128),
    @MaxInvalidPasswordAttempts  int,
    @PasswordAttemptWindow       int,
    @PasswordSalt                nvarchar(128),
    @CurrentTimeUtc              datetime,
    @PasswordFormat              int = 0,
    @PasswordAnswer              nvarchar(128) = NULL
AS
BEGIN
    DECLARE @IsLockedOut                            bit
    DECLARE @LastLockoutDate                        datetime
    DECLARE @FailedPasswordAttemptCount             int
    DECLARE @FailedPasswordAttemptWindowStart       datetime
    DECLARE @FailedPasswordAnswerAttemptCount       int
    DECLARE @FailedPasswordAnswerAttemptWindowStart datetime

    DECLARE @UserId                                 uniqueidentifier
    SET     @UserId = NULL

    DECLARE @ErrorCode     int
    SET @ErrorCode = 0

    DECLARE @TranStarted   bit
    SET @TranStarted = 0

    IF( @@TRANCOUNT = 0 )
    BEGIN
	    BEGIN TRANSACTION
	    SET @TranStarted = 1
    END
    ELSE
    	SET @TranStarted = 0

    SELECT  @UserId = u.UserId
    FROM    dbo.aspnet_Users u, dbo.aspnet_Applications a, dbo.aspnet_Membership m
    WHERE   LoweredUserName = LOWER(@UserName) AND
            u.ApplicationId = a.ApplicationId  AND
            LOWER(@ApplicationName) = a.LoweredApplicationName AND
            u.UserId = m.UserId

    IF ( @UserId IS NULL )
    BEGIN
        SET @ErrorCode = 1
        GOTO Cleanup
    END

    SELECT @IsLockedOut = IsLockedOut,
           @LastLockoutDate = LastLockoutDate,
           @FailedPasswordAttemptCount = FailedPasswordAttemptCount,
           @FailedPasswordAttemptWindowStart = FailedPasswordAttemptWindowStart,
           @FailedPasswordAnswerAttemptCount = FailedPasswordAnswerAttemptCount,
           @FailedPasswordAnswerAttemptWindowStart = FailedPasswordAnswerAttemptWindowStart
    FROM dbo.aspnet_Membership WITH ( UPDLOCK )
    WHERE @UserId = UserId

    IF( @IsLockedOut = 1 )
    BEGIN
        SET @ErrorCode = 99
        GOTO Cleanup
    END

    UPDATE dbo.aspnet_Membership
    SET    Password = @NewPassword,
           LastPasswordChangedDate = @CurrentTimeUtc,
           PasswordFormat = @PasswordFormat,
           PasswordSalt = @PasswordSalt
    WHERE  @UserId = UserId AND
           ( ( @PasswordAnswer IS NULL ) OR ( LOWER( PasswordAnswer ) = LOWER( @PasswordAnswer ) ) )

    IF ( @@ROWCOUNT = 0 )
        BEGIN
            IF( @CurrentTimeUtc > DATEADD( minute, @PasswordAttemptWindow, @FailedPasswordAnswerAttemptWindowStart ) )
            BEGIN
                SET @FailedPasswordAnswerAttemptWindowStart = @CurrentTimeUtc
                SET @FailedPasswordAnswerAttemptCount = 1
            END
            ELSE
            BEGIN
                SET @FailedPasswordAnswerAttemptWindowStart = @CurrentTimeUtc
                SET @FailedPasswordAnswerAttemptCount = @FailedPasswordAnswerAttemptCount + 1
            END

            BEGIN
                IF( @FailedPasswordAnswerAttemptCount >= @MaxInvalidPasswordAttempts )
                BEGIN
                    SET @IsLockedOut = 1
                    SET @LastLockoutDate = @CurrentTimeUtc
                END
            END

            SET @ErrorCode = 3
        END
    ELSE
        BEGIN
            IF( @FailedPasswordAnswerAttemptCount > 0 )
            BEGIN
                SET @FailedPasswordAnswerAttemptCount = 0
                SET @FailedPasswordAnswerAttemptWindowStart = CONVERT( datetime, '17540101', 112 )
            END
        END

    IF( NOT ( @PasswordAnswer IS NULL ) )
    BEGIN
        UPDATE dbo.aspnet_Membership
        SET IsLockedOut = @IsLockedOut, LastLockoutDate = @LastLockoutDate,
            FailedPasswordAttemptCount = @FailedPasswordAttemptCount,
            FailedPasswordAttemptWindowStart = @FailedPasswordAttemptWindowStart,
            FailedPasswordAnswerAttemptCount = @FailedPasswordAnswerAttemptCount,
            FailedPasswordAnswerAttemptWindowStart = @FailedPasswordAnswerAttemptWindowStart
        WHERE @UserId = UserId

        IF( @@ERROR <> 0 )
        BEGIN
            SET @ErrorCode = -1
            GOTO Cleanup
        END
    END

    IF( @TranStarted = 1 )
    BEGIN
	SET @TranStarted = 0
	COMMIT TRANSACTION
    END

    RETURN @ErrorCode

Cleanup:

    IF( @TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
    	ROLLBACK TRANSACTION
    END

    RETURN @ErrorCode

END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_SetPassword]    Script Date: 02/02/2017 5:33:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_SetPassword]
    @ApplicationName  nvarchar(256),
    @UserName         nvarchar(256),
    @NewPassword      nvarchar(128),
    @PasswordSalt     nvarchar(128),
    @CurrentTimeUtc   datetime,
    @PasswordFormat   int = 0
AS
BEGIN
    DECLARE @UserId uniqueidentifier
    SELECT  @UserId = NULL
    SELECT  @UserId = u.UserId
    FROM    dbo.aspnet_Users u, dbo.aspnet_Applications a, dbo.aspnet_Membership m
    WHERE   LoweredUserName = LOWER(@UserName) AND
            u.ApplicationId = a.ApplicationId  AND
            LOWER(@ApplicationName) = a.LoweredApplicationName AND
            u.UserId = m.UserId

    IF (@UserId IS NULL)
        RETURN(1)

    UPDATE dbo.aspnet_Membership
    SET Password = @NewPassword, PasswordFormat = @PasswordFormat, PasswordSalt = @PasswordSalt,
        LastPasswordChangedDate = @CurrentTimeUtc
    WHERE @UserId = UserId
    RETURN(0)
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_UnlockUser]    Script Date: 02/02/2017 5:33:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_UnlockUser]
    @ApplicationName                         nvarchar(256),
    @UserName                                nvarchar(256)
AS
BEGIN
    DECLARE @UserId uniqueidentifier
    SELECT  @UserId = NULL
    SELECT  @UserId = u.UserId
    FROM    dbo.aspnet_Users u, dbo.aspnet_Applications a, dbo.aspnet_Membership m
    WHERE   LoweredUserName = LOWER(@UserName) AND
            u.ApplicationId = a.ApplicationId  AND
            LOWER(@ApplicationName) = a.LoweredApplicationName AND
            u.UserId = m.UserId

    IF ( @UserId IS NULL )
        RETURN 1

    UPDATE dbo.aspnet_Membership
    SET IsLockedOut = 0,
        FailedPasswordAttemptCount = 0,
        FailedPasswordAttemptWindowStart = CONVERT( datetime, '17540101', 112 ),
        FailedPasswordAnswerAttemptCount = 0,
        FailedPasswordAnswerAttemptWindowStart = CONVERT( datetime, '17540101', 112 ),
        LastLockoutDate = CONVERT( datetime, '17540101', 112 )
    WHERE @UserId = UserId

    RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_UpdateUser]    Script Date: 02/02/2017 5:33:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_UpdateUser]
    @ApplicationName      nvarchar(256),
    @UserName             nvarchar(256),
    @Email                nvarchar(256),
    @Comment              ntext,
    @IsApproved           bit,
    @LastLoginDate        datetime,
    @LastActivityDate     datetime,
    @UniqueEmail          int,
    @CurrentTimeUtc       datetime
AS
BEGIN
    DECLARE @UserId uniqueidentifier
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @UserId = NULL
    SELECT  @UserId = u.UserId, @ApplicationId = a.ApplicationId
    FROM    dbo.aspnet_Users u, dbo.aspnet_Applications a, dbo.aspnet_Membership m
    WHERE   LoweredUserName = LOWER(@UserName) AND
            u.ApplicationId = a.ApplicationId  AND
            LOWER(@ApplicationName) = a.LoweredApplicationName AND
            u.UserId = m.UserId

    IF (@UserId IS NULL)
        RETURN(1)

    IF (@UniqueEmail = 1)
    BEGIN
        IF (EXISTS (SELECT *
                    FROM  dbo.aspnet_Membership WITH (UPDLOCK, HOLDLOCK)
                    WHERE ApplicationId = @ApplicationId  AND @UserId <> UserId AND LoweredEmail = LOWER(@Email)))
        BEGIN
            RETURN(7)
        END
    END

    DECLARE @TranStarted   bit
    SET @TranStarted = 0

    IF( @@TRANCOUNT = 0 )
    BEGIN
	    BEGIN TRANSACTION
	    SET @TranStarted = 1
    END
    ELSE
	SET @TranStarted = 0

    UPDATE dbo.aspnet_Users WITH (ROWLOCK)
    SET
         LastActivityDate = @LastActivityDate
    WHERE
       @UserId = UserId

    IF( @@ERROR <> 0 )
        GOTO Cleanup

    UPDATE dbo.aspnet_Membership WITH (ROWLOCK)
    SET
         Email            = @Email,
         LoweredEmail     = LOWER(@Email),
         Comment          = @Comment,
         IsApproved       = @IsApproved,
         LastLoginDate    = @LastLoginDate
    WHERE
       @UserId = UserId

    IF( @@ERROR <> 0 )
        GOTO Cleanup

    IF( @TranStarted = 1 )
    BEGIN
	SET @TranStarted = 0
	COMMIT TRANSACTION
    END

    RETURN 0

Cleanup:

    IF( @TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
    	ROLLBACK TRANSACTION
    END

    RETURN -1
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_UpdateUserInfo]    Script Date: 02/02/2017 5:33:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_UpdateUserInfo]
    @ApplicationName                nvarchar(256),
    @UserName                       nvarchar(256),
    @IsPasswordCorrect              bit,
    @UpdateLastLoginActivityDate    bit,
    @MaxInvalidPasswordAttempts     int,
    @PasswordAttemptWindow          int,
    @CurrentTimeUtc                 datetime,
    @LastLoginDate                  datetime,
    @LastActivityDate               datetime
AS
BEGIN
    DECLARE @UserId                                 uniqueidentifier
    DECLARE @IsApproved                             bit
    DECLARE @IsLockedOut                            bit
    DECLARE @LastLockoutDate                        datetime
    DECLARE @FailedPasswordAttemptCount             int
    DECLARE @FailedPasswordAttemptWindowStart       datetime
    DECLARE @FailedPasswordAnswerAttemptCount       int
    DECLARE @FailedPasswordAnswerAttemptWindowStart datetime

    DECLARE @ErrorCode     int
    SET @ErrorCode = 0

    DECLARE @TranStarted   bit
    SET @TranStarted = 0

    IF( @@TRANCOUNT = 0 )
    BEGIN
	    BEGIN TRANSACTION
	    SET @TranStarted = 1
    END
    ELSE
    	SET @TranStarted = 0

    SELECT  @UserId = u.UserId,
            @IsApproved = m.IsApproved,
            @IsLockedOut = m.IsLockedOut,
            @LastLockoutDate = m.LastLockoutDate,
            @FailedPasswordAttemptCount = m.FailedPasswordAttemptCount,
            @FailedPasswordAttemptWindowStart = m.FailedPasswordAttemptWindowStart,
            @FailedPasswordAnswerAttemptCount = m.FailedPasswordAnswerAttemptCount,
            @FailedPasswordAnswerAttemptWindowStart = m.FailedPasswordAnswerAttemptWindowStart
    FROM    dbo.aspnet_Applications a, dbo.aspnet_Users u WITH ( UPDLOCK, ROWLOCK ), dbo.aspnet_Membership m WITH ( UPDLOCK, ROWLOCK )
    WHERE   LOWER(@ApplicationName) = a.LoweredApplicationName AND
            u.ApplicationId = a.ApplicationId    AND
            u.UserId = m.UserId AND
            LOWER(@UserName) = u.LoweredUserName

    IF ( @@rowcount = 0 )
    BEGIN
        SET @ErrorCode = 1
        GOTO Cleanup
    END

    IF( @IsLockedOut = 1 )
    BEGIN
        GOTO Cleanup
    END

    IF( @IsPasswordCorrect = 0 )
    BEGIN
        IF( @CurrentTimeUtc > DATEADD( minute, @PasswordAttemptWindow, @FailedPasswordAttemptWindowStart ) )
        BEGIN
            SET @FailedPasswordAttemptWindowStart = @CurrentTimeUtc
            SET @FailedPasswordAttemptCount = 1
        END
        ELSE
        BEGIN
            SET @FailedPasswordAttemptWindowStart = @CurrentTimeUtc
            SET @FailedPasswordAttemptCount = @FailedPasswordAttemptCount + 1
        END

        BEGIN
            IF( @FailedPasswordAttemptCount >= @MaxInvalidPasswordAttempts )
            BEGIN
                SET @IsLockedOut = 1
                SET @LastLockoutDate = @CurrentTimeUtc
            END
        END
    END
    ELSE
    BEGIN
        IF( @FailedPasswordAttemptCount > 0 OR @FailedPasswordAnswerAttemptCount > 0 )
        BEGIN
            SET @FailedPasswordAttemptCount = 0
            SET @FailedPasswordAttemptWindowStart = CONVERT( datetime, '17540101', 112 )
            SET @FailedPasswordAnswerAttemptCount = 0
            SET @FailedPasswordAnswerAttemptWindowStart = CONVERT( datetime, '17540101', 112 )
            SET @LastLockoutDate = CONVERT( datetime, '17540101', 112 )
        END
    END

    IF( @UpdateLastLoginActivityDate = 1 )
    BEGIN
        UPDATE  dbo.aspnet_Users WITH (ROWLOCK)
        SET     LastActivityDate = @LastActivityDate
        WHERE   @UserId = UserId

        IF( @@ERROR <> 0 )
        BEGIN
            SET @ErrorCode = -1
            GOTO Cleanup
        END

        UPDATE  dbo.aspnet_Membership
        SET     LastLoginDate = @LastLoginDate
        WHERE   UserId = @UserId

        IF( @@ERROR <> 0 )
        BEGIN
            SET @ErrorCode = -1
            GOTO Cleanup
        END
    END


    UPDATE dbo.aspnet_Membership WITH (ROWLOCK)
    SET IsLockedOut = @IsLockedOut, LastLockoutDate = @LastLockoutDate,
        FailedPasswordAttemptCount = @FailedPasswordAttemptCount,
        FailedPasswordAttemptWindowStart = @FailedPasswordAttemptWindowStart,
        FailedPasswordAnswerAttemptCount = @FailedPasswordAnswerAttemptCount,
        FailedPasswordAnswerAttemptWindowStart = @FailedPasswordAnswerAttemptWindowStart
    WHERE @UserId = UserId

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    IF( @TranStarted = 1 )
    BEGIN
	SET @TranStarted = 0
	COMMIT TRANSACTION
    END

    RETURN @ErrorCode

Cleanup:

    IF( @TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
    	ROLLBACK TRANSACTION
    END

    RETURN @ErrorCode

END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Paths_CreatePath]    Script Date: 02/02/2017 5:33:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Paths_CreatePath]
    @ApplicationId UNIQUEIDENTIFIER,
    @Path           NVARCHAR(256),
    @PathId         UNIQUEIDENTIFIER OUTPUT
AS
BEGIN
    BEGIN TRANSACTION
    IF (NOT EXISTS(SELECT * FROM dbo.aspnet_Paths WHERE LoweredPath = LOWER(@Path) AND ApplicationId = @ApplicationId))
    BEGIN
        INSERT dbo.aspnet_Paths (ApplicationId, Path, LoweredPath) VALUES (@ApplicationId, @Path, LOWER(@Path))
    END
    COMMIT TRANSACTION
    SELECT @PathId = PathId FROM dbo.aspnet_Paths WHERE LOWER(@Path) = LoweredPath AND ApplicationId = @ApplicationId
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Personalization_GetApplicationId]    Script Date: 02/02/2017 5:33:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Personalization_GetApplicationId] (
    @ApplicationName NVARCHAR(256),
    @ApplicationId UNIQUEIDENTIFIER OUT)
AS
BEGIN
    SELECT @ApplicationId = ApplicationId FROM dbo.aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationAdministration_DeleteAllState]    Script Date: 02/02/2017 5:33:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_PersonalizationAdministration_DeleteAllState] (
    @AllUsersScope bit,
    @ApplicationName NVARCHAR(256),
    @Count int OUT)
AS
BEGIN
    DECLARE @ApplicationId UNIQUEIDENTIFIER
    EXEC dbo.aspnet_Personalization_GetApplicationId @ApplicationName, @ApplicationId OUTPUT
    IF (@ApplicationId IS NULL)
        SELECT @Count = 0
    ELSE
    BEGIN
        IF (@AllUsersScope = 1)
            DELETE FROM aspnet_PersonalizationAllUsers
            WHERE PathId IN
               (SELECT Paths.PathId
                FROM dbo.aspnet_Paths Paths
                WHERE Paths.ApplicationId = @ApplicationId)
        ELSE
            DELETE FROM aspnet_PersonalizationPerUser
            WHERE PathId IN
               (SELECT Paths.PathId
                FROM dbo.aspnet_Paths Paths
                WHERE Paths.ApplicationId = @ApplicationId)

        SELECT @Count = @@ROWCOUNT
    END
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationAdministration_FindState]    Script Date: 02/02/2017 5:33:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_PersonalizationAdministration_FindState] (
    @AllUsersScope bit,
    @ApplicationName NVARCHAR(256),
    @PageIndex              INT,
    @PageSize               INT,
    @Path NVARCHAR(256) = NULL,
    @UserName NVARCHAR(256) = NULL,
    @InactiveSinceDate DATETIME = NULL)
AS
BEGIN
    DECLARE @ApplicationId UNIQUEIDENTIFIER
    EXEC dbo.aspnet_Personalization_GetApplicationId @ApplicationName, @ApplicationId OUTPUT
    IF (@ApplicationId IS NULL)
        RETURN

    -- Set the page bounds
    DECLARE @PageLowerBound INT
    DECLARE @PageUpperBound INT
    DECLARE @TotalRecords   INT
    SET @PageLowerBound = @PageSize * @PageIndex
    SET @PageUpperBound = @PageSize - 1 + @PageLowerBound

    -- Create a temp table to store the selected results
    CREATE TABLE #PageIndex (
        IndexId int IDENTITY (0, 1) NOT NULL,
        ItemId UNIQUEIDENTIFIER
    )

    IF (@AllUsersScope = 1)
    BEGIN
        -- Insert into our temp table
        INSERT INTO #PageIndex (ItemId)
        SELECT Paths.PathId
        FROM dbo.aspnet_Paths Paths,
             ((SELECT Paths.PathId
               FROM dbo.aspnet_PersonalizationAllUsers AllUsers, dbo.aspnet_Paths Paths
               WHERE Paths.ApplicationId = @ApplicationId
                      AND AllUsers.PathId = Paths.PathId
                      AND (@Path IS NULL OR Paths.LoweredPath LIKE LOWER(@Path))
              ) AS SharedDataPerPath
              FULL OUTER JOIN
              (SELECT DISTINCT Paths.PathId
               FROM dbo.aspnet_PersonalizationPerUser PerUser, dbo.aspnet_Paths Paths
               WHERE Paths.ApplicationId = @ApplicationId
                      AND PerUser.PathId = Paths.PathId
                      AND (@Path IS NULL OR Paths.LoweredPath LIKE LOWER(@Path))
              ) AS UserDataPerPath
              ON SharedDataPerPath.PathId = UserDataPerPath.PathId
             )
        WHERE Paths.PathId = SharedDataPerPath.PathId OR Paths.PathId = UserDataPerPath.PathId
        ORDER BY Paths.Path ASC

        SELECT @TotalRecords = @@ROWCOUNT

        SELECT Paths.Path,
               SharedDataPerPath.LastUpdatedDate,
               SharedDataPerPath.SharedDataLength,
               UserDataPerPath.UserDataLength,
               UserDataPerPath.UserCount
        FROM dbo.aspnet_Paths Paths,
             ((SELECT PageIndex.ItemId AS PathId,
                      AllUsers.LastUpdatedDate AS LastUpdatedDate,
                      DATALENGTH(AllUsers.PageSettings) AS SharedDataLength
               FROM dbo.aspnet_PersonalizationAllUsers AllUsers, #PageIndex PageIndex
               WHERE AllUsers.PathId = PageIndex.ItemId
                     AND PageIndex.IndexId >= @PageLowerBound AND PageIndex.IndexId <= @PageUpperBound
              ) AS SharedDataPerPath
              FULL OUTER JOIN
              (SELECT PageIndex.ItemId AS PathId,
                      SUM(DATALENGTH(PerUser.PageSettings)) AS UserDataLength,
                      COUNT(*) AS UserCount
               FROM aspnet_PersonalizationPerUser PerUser, #PageIndex PageIndex
               WHERE PerUser.PathId = PageIndex.ItemId
                     AND PageIndex.IndexId >= @PageLowerBound AND PageIndex.IndexId <= @PageUpperBound
               GROUP BY PageIndex.ItemId
              ) AS UserDataPerPath
              ON SharedDataPerPath.PathId = UserDataPerPath.PathId
             )
        WHERE Paths.PathId = SharedDataPerPath.PathId OR Paths.PathId = UserDataPerPath.PathId
        ORDER BY Paths.Path ASC
    END
    ELSE
    BEGIN
        -- Insert into our temp table
        INSERT INTO #PageIndex (ItemId)
        SELECT PerUser.Id
        FROM dbo.aspnet_PersonalizationPerUser PerUser, dbo.aspnet_Users Users, dbo.aspnet_Paths Paths
        WHERE Paths.ApplicationId = @ApplicationId
              AND PerUser.UserId = Users.UserId
              AND PerUser.PathId = Paths.PathId
              AND (@Path IS NULL OR Paths.LoweredPath LIKE LOWER(@Path))
              AND (@UserName IS NULL OR Users.LoweredUserName LIKE LOWER(@UserName))
              AND (@InactiveSinceDate IS NULL OR Users.LastActivityDate <= @InactiveSinceDate)
        ORDER BY Paths.Path ASC, Users.UserName ASC

        SELECT @TotalRecords = @@ROWCOUNT

        SELECT Paths.Path, PerUser.LastUpdatedDate, DATALENGTH(PerUser.PageSettings), Users.UserName, Users.LastActivityDate
        FROM dbo.aspnet_PersonalizationPerUser PerUser, dbo.aspnet_Users Users, dbo.aspnet_Paths Paths, #PageIndex PageIndex
        WHERE PerUser.Id = PageIndex.ItemId
              AND PerUser.UserId = Users.UserId
              AND PerUser.PathId = Paths.PathId
              AND PageIndex.IndexId >= @PageLowerBound AND PageIndex.IndexId <= @PageUpperBound
        ORDER BY Paths.Path ASC, Users.UserName ASC
    END

    RETURN @TotalRecords
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationAdministration_GetCountOfState]    Script Date: 02/02/2017 5:33:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_PersonalizationAdministration_GetCountOfState] (
    @Count int OUT,
    @AllUsersScope bit,
    @ApplicationName NVARCHAR(256),
    @Path NVARCHAR(256) = NULL,
    @UserName NVARCHAR(256) = NULL,
    @InactiveSinceDate DATETIME = NULL)
AS
BEGIN

    DECLARE @ApplicationId UNIQUEIDENTIFIER
    EXEC dbo.aspnet_Personalization_GetApplicationId @ApplicationName, @ApplicationId OUTPUT
    IF (@ApplicationId IS NULL)
        SELECT @Count = 0
    ELSE
        IF (@AllUsersScope = 1)
            SELECT @Count = COUNT(*)
            FROM dbo.aspnet_PersonalizationAllUsers AllUsers, dbo.aspnet_Paths Paths
            WHERE Paths.ApplicationId = @ApplicationId
                  AND AllUsers.PathId = Paths.PathId
                  AND (@Path IS NULL OR Paths.LoweredPath LIKE LOWER(@Path))
        ELSE
            SELECT @Count = COUNT(*)
            FROM dbo.aspnet_PersonalizationPerUser PerUser, dbo.aspnet_Users Users, dbo.aspnet_Paths Paths
            WHERE Paths.ApplicationId = @ApplicationId
                  AND PerUser.UserId = Users.UserId
                  AND PerUser.PathId = Paths.PathId
                  AND (@Path IS NULL OR Paths.LoweredPath LIKE LOWER(@Path))
                  AND (@UserName IS NULL OR Users.LoweredUserName LIKE LOWER(@UserName))
                  AND (@InactiveSinceDate IS NULL OR Users.LastActivityDate <= @InactiveSinceDate)
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationAdministration_ResetSharedState]    Script Date: 02/02/2017 5:33:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_PersonalizationAdministration_ResetSharedState] (
    @Count int OUT,
    @ApplicationName NVARCHAR(256),
    @Path NVARCHAR(256))
AS
BEGIN
    DECLARE @ApplicationId UNIQUEIDENTIFIER
    EXEC dbo.aspnet_Personalization_GetApplicationId @ApplicationName, @ApplicationId OUTPUT
    IF (@ApplicationId IS NULL)
        SELECT @Count = 0
    ELSE
    BEGIN
        DELETE FROM dbo.aspnet_PersonalizationAllUsers
        WHERE PathId IN
            (SELECT AllUsers.PathId
             FROM dbo.aspnet_PersonalizationAllUsers AllUsers, dbo.aspnet_Paths Paths
             WHERE Paths.ApplicationId = @ApplicationId
                   AND AllUsers.PathId = Paths.PathId
                   AND Paths.LoweredPath = LOWER(@Path))

        SELECT @Count = @@ROWCOUNT
    END
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationAdministration_ResetUserState]    Script Date: 02/02/2017 5:33:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_PersonalizationAdministration_ResetUserState] (
    @Count                  int                 OUT,
    @ApplicationName        NVARCHAR(256),
    @InactiveSinceDate      DATETIME            = NULL,
    @UserName               NVARCHAR(256)       = NULL,
    @Path                   NVARCHAR(256)       = NULL)
AS
BEGIN
    DECLARE @ApplicationId UNIQUEIDENTIFIER
    EXEC dbo.aspnet_Personalization_GetApplicationId @ApplicationName, @ApplicationId OUTPUT
    IF (@ApplicationId IS NULL)
        SELECT @Count = 0
    ELSE
    BEGIN
        DELETE FROM dbo.aspnet_PersonalizationPerUser
        WHERE Id IN (SELECT PerUser.Id
                     FROM dbo.aspnet_PersonalizationPerUser PerUser, dbo.aspnet_Users Users, dbo.aspnet_Paths Paths
                     WHERE Paths.ApplicationId = @ApplicationId
                           AND PerUser.UserId = Users.UserId
                           AND PerUser.PathId = Paths.PathId
                           AND (@InactiveSinceDate IS NULL OR Users.LastActivityDate <= @InactiveSinceDate)
                           AND (@UserName IS NULL OR Users.LoweredUserName = LOWER(@UserName))
                           AND (@Path IS NULL OR Paths.LoweredPath = LOWER(@Path)))

        SELECT @Count = @@ROWCOUNT
    END
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationAllUsers_GetPageSettings]    Script Date: 02/02/2017 5:33:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_PersonalizationAllUsers_GetPageSettings] (
    @ApplicationName  NVARCHAR(256),
    @Path              NVARCHAR(256))
AS
BEGIN
    DECLARE @ApplicationId UNIQUEIDENTIFIER
    DECLARE @PathId UNIQUEIDENTIFIER

    SELECT @ApplicationId = NULL
    SELECT @PathId = NULL

    EXEC dbo.aspnet_Personalization_GetApplicationId @ApplicationName, @ApplicationId OUTPUT
    IF (@ApplicationId IS NULL)
    BEGIN
        RETURN
    END

    SELECT @PathId = u.PathId FROM dbo.aspnet_Paths u WHERE u.ApplicationId = @ApplicationId AND u.LoweredPath = LOWER(@Path)
    IF (@PathId IS NULL)
    BEGIN
        RETURN
    END

    SELECT p.PageSettings FROM dbo.aspnet_PersonalizationAllUsers p WHERE p.PathId = @PathId
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationAllUsers_ResetPageSettings]    Script Date: 02/02/2017 5:33:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_PersonalizationAllUsers_ResetPageSettings] (
    @ApplicationName  NVARCHAR(256),
    @Path              NVARCHAR(256))
AS
BEGIN
    DECLARE @ApplicationId UNIQUEIDENTIFIER
    DECLARE @PathId UNIQUEIDENTIFIER

    SELECT @ApplicationId = NULL
    SELECT @PathId = NULL

    EXEC dbo.aspnet_Personalization_GetApplicationId @ApplicationName, @ApplicationId OUTPUT
    IF (@ApplicationId IS NULL)
    BEGIN
        RETURN
    END

    SELECT @PathId = u.PathId FROM dbo.aspnet_Paths u WHERE u.ApplicationId = @ApplicationId AND u.LoweredPath = LOWER(@Path)
    IF (@PathId IS NULL)
    BEGIN
        RETURN
    END

    DELETE FROM dbo.aspnet_PersonalizationAllUsers WHERE PathId = @PathId
    RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationAllUsers_SetPageSettings]    Script Date: 02/02/2017 5:33:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_PersonalizationAllUsers_SetPageSettings] (
    @ApplicationName  NVARCHAR(256),
    @Path             NVARCHAR(256),
    @PageSettings     IMAGE,
    @CurrentTimeUtc   DATETIME)
AS
BEGIN
    DECLARE @ApplicationId UNIQUEIDENTIFIER
    DECLARE @PathId UNIQUEIDENTIFIER

    SELECT @ApplicationId = NULL
    SELECT @PathId = NULL

    EXEC dbo.aspnet_Applications_CreateApplication @ApplicationName, @ApplicationId OUTPUT

    SELECT @PathId = u.PathId FROM dbo.aspnet_Paths u WHERE u.ApplicationId = @ApplicationId AND u.LoweredPath = LOWER(@Path)
    IF (@PathId IS NULL)
    BEGIN
        EXEC dbo.aspnet_Paths_CreatePath @ApplicationId, @Path, @PathId OUTPUT
    END

    IF (EXISTS(SELECT PathId FROM dbo.aspnet_PersonalizationAllUsers WHERE PathId = @PathId))
        UPDATE dbo.aspnet_PersonalizationAllUsers SET PageSettings = @PageSettings, LastUpdatedDate = @CurrentTimeUtc WHERE PathId = @PathId
    ELSE
        INSERT INTO dbo.aspnet_PersonalizationAllUsers(PathId, PageSettings, LastUpdatedDate) VALUES (@PathId, @PageSettings, @CurrentTimeUtc)
    RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationPerUser_GetPageSettings]    Script Date: 02/02/2017 5:33:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_PersonalizationPerUser_GetPageSettings] (
    @ApplicationName  NVARCHAR(256),
    @UserName         NVARCHAR(256),
    @Path             NVARCHAR(256),
    @CurrentTimeUtc   DATETIME)
AS
BEGIN
    DECLARE @ApplicationId UNIQUEIDENTIFIER
    DECLARE @PathId UNIQUEIDENTIFIER
    DECLARE @UserId UNIQUEIDENTIFIER

    SELECT @ApplicationId = NULL
    SELECT @PathId = NULL
    SELECT @UserId = NULL

    EXEC dbo.aspnet_Personalization_GetApplicationId @ApplicationName, @ApplicationId OUTPUT
    IF (@ApplicationId IS NULL)
    BEGIN
        RETURN
    END

    SELECT @PathId = u.PathId FROM dbo.aspnet_Paths u WHERE u.ApplicationId = @ApplicationId AND u.LoweredPath = LOWER(@Path)
    IF (@PathId IS NULL)
    BEGIN
        RETURN
    END

    SELECT @UserId = u.UserId FROM dbo.aspnet_Users u WHERE u.ApplicationId = @ApplicationId AND u.LoweredUserName = LOWER(@UserName)
    IF (@UserId IS NULL)
    BEGIN
        RETURN
    END

    UPDATE   dbo.aspnet_Users WITH (ROWLOCK)
    SET      LastActivityDate = @CurrentTimeUtc
    WHERE    UserId = @UserId
    IF (@@ROWCOUNT = 0) -- Username not found
        RETURN

    SELECT p.PageSettings FROM dbo.aspnet_PersonalizationPerUser p WHERE p.PathId = @PathId AND p.UserId = @UserId
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationPerUser_ResetPageSettings]    Script Date: 02/02/2017 5:33:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_PersonalizationPerUser_ResetPageSettings] (
    @ApplicationName  NVARCHAR(256),
    @UserName         NVARCHAR(256),
    @Path             NVARCHAR(256),
    @CurrentTimeUtc   DATETIME)
AS
BEGIN
    DECLARE @ApplicationId UNIQUEIDENTIFIER
    DECLARE @PathId UNIQUEIDENTIFIER
    DECLARE @UserId UNIQUEIDENTIFIER

    SELECT @ApplicationId = NULL
    SELECT @PathId = NULL
    SELECT @UserId = NULL

    EXEC dbo.aspnet_Personalization_GetApplicationId @ApplicationName, @ApplicationId OUTPUT
    IF (@ApplicationId IS NULL)
    BEGIN
        RETURN
    END

    SELECT @PathId = u.PathId FROM dbo.aspnet_Paths u WHERE u.ApplicationId = @ApplicationId AND u.LoweredPath = LOWER(@Path)
    IF (@PathId IS NULL)
    BEGIN
        RETURN
    END

    SELECT @UserId = u.UserId FROM dbo.aspnet_Users u WHERE u.ApplicationId = @ApplicationId AND u.LoweredUserName = LOWER(@UserName)
    IF (@UserId IS NULL)
    BEGIN
        RETURN
    END

    UPDATE   dbo.aspnet_Users WITH (ROWLOCK)
    SET      LastActivityDate = @CurrentTimeUtc
    WHERE    UserId = @UserId
    IF (@@ROWCOUNT = 0) -- Username not found
        RETURN

    DELETE FROM dbo.aspnet_PersonalizationPerUser WHERE PathId = @PathId AND UserId = @UserId
    RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationPerUser_SetPageSettings]    Script Date: 02/02/2017 5:33:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_PersonalizationPerUser_SetPageSettings] (
    @ApplicationName  NVARCHAR(256),
    @UserName         NVARCHAR(256),
    @Path             NVARCHAR(256),
    @PageSettings     IMAGE,
    @CurrentTimeUtc   DATETIME)
AS
BEGIN
    DECLARE @ApplicationId UNIQUEIDENTIFIER
    DECLARE @PathId UNIQUEIDENTIFIER
    DECLARE @UserId UNIQUEIDENTIFIER

    SELECT @ApplicationId = NULL
    SELECT @PathId = NULL
    SELECT @UserId = NULL

    EXEC dbo.aspnet_Applications_CreateApplication @ApplicationName, @ApplicationId OUTPUT

    SELECT @PathId = u.PathId FROM dbo.aspnet_Paths u WHERE u.ApplicationId = @ApplicationId AND u.LoweredPath = LOWER(@Path)
    IF (@PathId IS NULL)
    BEGIN
        EXEC dbo.aspnet_Paths_CreatePath @ApplicationId, @Path, @PathId OUTPUT
    END

    SELECT @UserId = u.UserId FROM dbo.aspnet_Users u WHERE u.ApplicationId = @ApplicationId AND u.LoweredUserName = LOWER(@UserName)
    IF (@UserId IS NULL)
    BEGIN
        EXEC dbo.aspnet_Users_CreateUser @ApplicationId, @UserName, 0, @CurrentTimeUtc, @UserId OUTPUT
    END

    UPDATE   dbo.aspnet_Users WITH (ROWLOCK)
    SET      LastActivityDate = @CurrentTimeUtc
    WHERE    UserId = @UserId
    IF (@@ROWCOUNT = 0) -- Username not found
        RETURN

    IF (EXISTS(SELECT PathId FROM dbo.aspnet_PersonalizationPerUser WHERE UserId = @UserId AND PathId = @PathId))
        UPDATE dbo.aspnet_PersonalizationPerUser SET PageSettings = @PageSettings, LastUpdatedDate = @CurrentTimeUtc WHERE UserId = @UserId AND PathId = @PathId
    ELSE
        INSERT INTO dbo.aspnet_PersonalizationPerUser(UserId, PathId, PageSettings, LastUpdatedDate) VALUES (@UserId, @PathId, @PageSettings, @CurrentTimeUtc)
    RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Profile_DeleteInactiveProfiles]    Script Date: 02/02/2017 5:33:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE PROCEDURE [dbo].[aspnet_Profile_DeleteInactiveProfiles]
    @ApplicationName        nvarchar(256),
    @ProfileAuthOptions     int,
    @InactiveSinceDate      datetime
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
    BEGIN
        SELECT  0
        RETURN
    END

    DELETE
    FROM    dbo.aspnet_Profile
    WHERE   UserId IN
            (   SELECT  UserId
                FROM    dbo.aspnet_Users u
                WHERE   ApplicationId = @ApplicationId
                        AND (LastActivityDate <= @InactiveSinceDate)
                        AND (
                                (@ProfileAuthOptions = 2)
                             OR (@ProfileAuthOptions = 0 AND IsAnonymous = 1)
                             OR (@ProfileAuthOptions = 1 AND IsAnonymous = 0)
                            )
            )

    SELECT  @@ROWCOUNT
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Profile_DeleteProfiles]    Script Date: 02/02/2017 5:33:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE PROCEDURE [dbo].[aspnet_Profile_DeleteProfiles]
    @ApplicationName        nvarchar(256),
    @UserNames              nvarchar(4000)
AS
BEGIN
    DECLARE @UserName     nvarchar(256)
    DECLARE @CurrentPos   int
    DECLARE @NextPos      int
    DECLARE @NumDeleted   int
    DECLARE @DeletedUser  int
    DECLARE @TranStarted  bit
    DECLARE @ErrorCode    int

    SET @ErrorCode = 0
    SET @CurrentPos = 1
    SET @NumDeleted = 0
    SET @TranStarted = 0

    IF( @@TRANCOUNT = 0 )
    BEGIN
        BEGIN TRANSACTION
        SET @TranStarted = 1
    END
    ELSE
    	SET @TranStarted = 0

    WHILE (@CurrentPos <= LEN(@UserNames))
    BEGIN
        SELECT @NextPos = CHARINDEX(N',', @UserNames,  @CurrentPos)
        IF (@NextPos = 0 OR @NextPos IS NULL)
            SELECT @NextPos = LEN(@UserNames) + 1

        SELECT @UserName = SUBSTRING(@UserNames, @CurrentPos, @NextPos - @CurrentPos)
        SELECT @CurrentPos = @NextPos+1

        IF (LEN(@UserName) > 0)
        BEGIN
            SELECT @DeletedUser = 0
            EXEC dbo.aspnet_Users_DeleteUser @ApplicationName, @UserName, 4, @DeletedUser OUTPUT
            IF( @@ERROR <> 0 )
            BEGIN
                SET @ErrorCode = -1
                GOTO Cleanup
            END
            IF (@DeletedUser <> 0)
                SELECT @NumDeleted = @NumDeleted + 1
        END
    END
    SELECT @NumDeleted
    IF (@TranStarted = 1)
    BEGIN
    	SET @TranStarted = 0
    	COMMIT TRANSACTION
    END
    SET @TranStarted = 0

    RETURN 0

Cleanup:
    IF (@TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
    	ROLLBACK TRANSACTION
    END
    RETURN @ErrorCode
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Profile_GetNumberOfInactiveProfiles]    Script Date: 02/02/2017 5:33:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE PROCEDURE [dbo].[aspnet_Profile_GetNumberOfInactiveProfiles]
    @ApplicationName        nvarchar(256),
    @ProfileAuthOptions     int,
    @InactiveSinceDate      datetime
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
    BEGIN
        SELECT 0
        RETURN
    END

    SELECT  COUNT(*)
    FROM    dbo.aspnet_Users u, dbo.aspnet_Profile p
    WHERE   ApplicationId = @ApplicationId
        AND u.UserId = p.UserId
        AND (LastActivityDate <= @InactiveSinceDate)
        AND (
                (@ProfileAuthOptions = 2)
                OR (@ProfileAuthOptions = 0 AND IsAnonymous = 1)
                OR (@ProfileAuthOptions = 1 AND IsAnonymous = 0)
            )
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Profile_GetProfiles]    Script Date: 02/02/2017 5:33:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE PROCEDURE [dbo].[aspnet_Profile_GetProfiles]
    @ApplicationName        nvarchar(256),
    @ProfileAuthOptions     int,
    @PageIndex              int,
    @PageSize               int,
    @UserNameToMatch        nvarchar(256) = NULL,
    @InactiveSinceDate      datetime      = NULL
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN

    -- Set the page bounds
    DECLARE @PageLowerBound int
    DECLARE @PageUpperBound int
    DECLARE @TotalRecords   int
    SET @PageLowerBound = @PageSize * @PageIndex
    SET @PageUpperBound = @PageSize - 1 + @PageLowerBound

    -- Create a temp table TO store the select results
    CREATE TABLE #PageIndexForUsers
    (
        IndexId int IDENTITY (0, 1) NOT NULL,
        UserId uniqueidentifier
    )

    -- Insert into our temp table
    INSERT INTO #PageIndexForUsers (UserId)
        SELECT  u.UserId
        FROM    dbo.aspnet_Users u, dbo.aspnet_Profile p
        WHERE   ApplicationId = @ApplicationId
            AND u.UserId = p.UserId
            AND (@InactiveSinceDate IS NULL OR LastActivityDate <= @InactiveSinceDate)
            AND (     (@ProfileAuthOptions = 2)
                   OR (@ProfileAuthOptions = 0 AND IsAnonymous = 1)
                   OR (@ProfileAuthOptions = 1 AND IsAnonymous = 0)
                 )
            AND (@UserNameToMatch IS NULL OR LoweredUserName LIKE LOWER(@UserNameToMatch))
        ORDER BY UserName

    SELECT  u.UserName, u.IsAnonymous, u.LastActivityDate, p.LastUpdatedDate,
            DATALENGTH(p.PropertyNames) + DATALENGTH(p.PropertyValuesString) + DATALENGTH(p.PropertyValuesBinary)
    FROM    dbo.aspnet_Users u, dbo.aspnet_Profile p, #PageIndexForUsers i
    WHERE   u.UserId = p.UserId AND p.UserId = i.UserId AND i.IndexId >= @PageLowerBound AND i.IndexId <= @PageUpperBound

    SELECT COUNT(*)
    FROM   #PageIndexForUsers

    DROP TABLE #PageIndexForUsers
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Profile_GetProperties]    Script Date: 02/02/2017 5:33:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE PROCEDURE [dbo].[aspnet_Profile_GetProperties]
    @ApplicationName      nvarchar(256),
    @UserName             nvarchar(256),
    @CurrentTimeUtc       datetime
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM dbo.aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN

    DECLARE @UserId uniqueidentifier
    SELECT  @UserId = NULL

    SELECT @UserId = UserId
    FROM   dbo.aspnet_Users
    WHERE  ApplicationId = @ApplicationId AND LoweredUserName = LOWER(@UserName)

    IF (@UserId IS NULL)
        RETURN
    SELECT TOP 1 PropertyNames, PropertyValuesString, PropertyValuesBinary
    FROM         dbo.aspnet_Profile
    WHERE        UserId = @UserId

    IF (@@ROWCOUNT > 0)
    BEGIN
        UPDATE dbo.aspnet_Users
        SET    LastActivityDate=@CurrentTimeUtc
        WHERE  UserId = @UserId
    END
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Profile_SetProperties]    Script Date: 02/02/2017 5:33:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE PROCEDURE [dbo].[aspnet_Profile_SetProperties]
    @ApplicationName        nvarchar(256),
    @PropertyNames          ntext,
    @PropertyValuesString   ntext,
    @PropertyValuesBinary   image,
    @UserName               nvarchar(256),
    @IsUserAnonymous        bit,
    @CurrentTimeUtc         datetime
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL

    DECLARE @ErrorCode     int
    SET @ErrorCode = 0

    DECLARE @TranStarted   bit
    SET @TranStarted = 0

    IF( @@TRANCOUNT = 0 )
    BEGIN
       BEGIN TRANSACTION
       SET @TranStarted = 1
    END
    ELSE
    	SET @TranStarted = 0

    EXEC dbo.aspnet_Applications_CreateApplication @ApplicationName, @ApplicationId OUTPUT

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    DECLARE @UserId uniqueidentifier
    DECLARE @LastActivityDate datetime
    SELECT  @UserId = NULL
    SELECT  @LastActivityDate = @CurrentTimeUtc

    SELECT @UserId = UserId
    FROM   dbo.aspnet_Users
    WHERE  ApplicationId = @ApplicationId AND LoweredUserName = LOWER(@UserName)
    IF (@UserId IS NULL)
        EXEC dbo.aspnet_Users_CreateUser @ApplicationId, @UserName, @IsUserAnonymous, @LastActivityDate, @UserId OUTPUT

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    UPDATE dbo.aspnet_Users
    SET    LastActivityDate=@CurrentTimeUtc
    WHERE  UserId = @UserId

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    IF (EXISTS( SELECT *
               FROM   dbo.aspnet_Profile
               WHERE  UserId = @UserId))
        UPDATE dbo.aspnet_Profile
        SET    PropertyNames=@PropertyNames, PropertyValuesString = @PropertyValuesString,
               PropertyValuesBinary = @PropertyValuesBinary, LastUpdatedDate=@CurrentTimeUtc
        WHERE  UserId = @UserId
    ELSE
        INSERT INTO dbo.aspnet_Profile(UserId, PropertyNames, PropertyValuesString, PropertyValuesBinary, LastUpdatedDate)
             VALUES (@UserId, @PropertyNames, @PropertyValuesString, @PropertyValuesBinary, @CurrentTimeUtc)

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    IF( @TranStarted = 1 )
    BEGIN
    	SET @TranStarted = 0
    	COMMIT TRANSACTION
    END

    RETURN 0

Cleanup:

    IF( @TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
    	ROLLBACK TRANSACTION
    END

    RETURN @ErrorCode

END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_RegisterSchemaVersion]    Script Date: 02/02/2017 5:33:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE PROCEDURE [dbo].[aspnet_RegisterSchemaVersion]
    @Feature                   nvarchar(128),
    @CompatibleSchemaVersion   nvarchar(128),
    @IsCurrentVersion          bit,
    @RemoveIncompatibleSchema  bit
AS
BEGIN
    IF( @RemoveIncompatibleSchema = 1 )
    BEGIN
        DELETE FROM dbo.aspnet_SchemaVersions WHERE Feature = LOWER( @Feature )
    END
    ELSE
    BEGIN
        IF( @IsCurrentVersion = 1 )
        BEGIN
            UPDATE dbo.aspnet_SchemaVersions
            SET IsCurrentVersion = 0
            WHERE Feature = LOWER( @Feature )
        END
    END

    INSERT  dbo.aspnet_SchemaVersions( Feature, CompatibleSchemaVersion, IsCurrentVersion )
    VALUES( LOWER( @Feature ), @CompatibleSchemaVersion, @IsCurrentVersion )
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Roles_CreateRole]    Script Date: 02/02/2017 5:33:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Roles_CreateRole]
    @ApplicationName  nvarchar(256),
    @RoleName         nvarchar(256)
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL

    DECLARE @ErrorCode     int
    SET @ErrorCode = 0

    DECLARE @TranStarted   bit
    SET @TranStarted = 0

    IF( @@TRANCOUNT = 0 )
    BEGIN
        BEGIN TRANSACTION
        SET @TranStarted = 1
    END
    ELSE
        SET @TranStarted = 0

    EXEC dbo.aspnet_Applications_CreateApplication @ApplicationName, @ApplicationId OUTPUT

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    IF (EXISTS(SELECT RoleId FROM dbo.aspnet_Roles WHERE LoweredRoleName = LOWER(@RoleName) AND ApplicationId = @ApplicationId))
    BEGIN
        SET @ErrorCode = 1
        GOTO Cleanup
    END

    INSERT INTO dbo.aspnet_Roles
                (ApplicationId, RoleName, LoweredRoleName)
         VALUES (@ApplicationId, @RoleName, LOWER(@RoleName))

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    IF( @TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
        COMMIT TRANSACTION
    END

    RETURN(0)

Cleanup:

    IF( @TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
        ROLLBACK TRANSACTION
    END

    RETURN @ErrorCode

END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Roles_DeleteRole]    Script Date: 02/02/2017 5:33:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE PROCEDURE [dbo].[aspnet_Roles_DeleteRole]
    @ApplicationName            nvarchar(256),
    @RoleName                   nvarchar(256),
    @DeleteOnlyIfRoleIsEmpty    bit
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN(1)

    DECLARE @ErrorCode     int
    SET @ErrorCode = 0

    DECLARE @TranStarted   bit
    SET @TranStarted = 0

    IF( @@TRANCOUNT = 0 )
    BEGIN
        BEGIN TRANSACTION
        SET @TranStarted = 1
    END
    ELSE
        SET @TranStarted = 0

    DECLARE @RoleId   uniqueidentifier
    SELECT  @RoleId = NULL
    SELECT  @RoleId = RoleId FROM dbo.aspnet_Roles WHERE LoweredRoleName = LOWER(@RoleName) AND ApplicationId = @ApplicationId

    IF (@RoleId IS NULL)
    BEGIN
        SELECT @ErrorCode = 1
        GOTO Cleanup
    END
    IF (@DeleteOnlyIfRoleIsEmpty <> 0)
    BEGIN
        IF (EXISTS (SELECT RoleId FROM dbo.aspnet_UsersInRoles  WHERE @RoleId = RoleId))
        BEGIN
            SELECT @ErrorCode = 2
            GOTO Cleanup
        END
    END


    DELETE FROM dbo.aspnet_UsersInRoles  WHERE @RoleId = RoleId

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    DELETE FROM dbo.aspnet_Roles WHERE @RoleId = RoleId  AND ApplicationId = @ApplicationId

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    IF( @TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
        COMMIT TRANSACTION
    END

    RETURN(0)

Cleanup:

    IF( @TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
        ROLLBACK TRANSACTION
    END

    RETURN @ErrorCode
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Roles_GetAllRoles]    Script Date: 02/02/2017 5:33:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE PROCEDURE [dbo].[aspnet_Roles_GetAllRoles] (
    @ApplicationName           nvarchar(256))
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN
    SELECT RoleName
    FROM   dbo.aspnet_Roles WHERE ApplicationId = @ApplicationId
    ORDER BY RoleName
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Roles_RoleExists]    Script Date: 02/02/2017 5:33:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE PROCEDURE [dbo].[aspnet_Roles_RoleExists]
    @ApplicationName  nvarchar(256),
    @RoleName         nvarchar(256)
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN(0)
    IF (EXISTS (SELECT RoleName FROM dbo.aspnet_Roles WHERE LOWER(@RoleName) = LoweredRoleName AND ApplicationId = @ApplicationId ))
        RETURN(1)
    ELSE
        RETURN(0)
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Setup_RemoveAllRoleMembers]    Script Date: 02/02/2017 5:33:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE PROCEDURE [dbo].[aspnet_Setup_RemoveAllRoleMembers]
    @name   sysname
AS
BEGIN
    CREATE TABLE #aspnet_RoleMembers
    (
        Group_name      sysname,
        Group_id        smallint,
        Users_in_group  sysname,
        User_id         smallint
    )

    INSERT INTO #aspnet_RoleMembers
    EXEC sp_helpuser @name

    DECLARE @user_id smallint
    DECLARE @cmd nvarchar(500)
    DECLARE c1 cursor FORWARD_ONLY FOR
        SELECT User_id FROM #aspnet_RoleMembers

    OPEN c1

    FETCH c1 INTO @user_id
    WHILE (@@fetch_status = 0)
    BEGIN
        SET @cmd = 'EXEC sp_droprolemember ' + '''' + @name + ''', ''' + USER_NAME(@user_id) + ''''
        EXEC (@cmd)
        FETCH c1 INTO @user_id
    END

    CLOSE c1
    DEALLOCATE c1
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Setup_RestorePermissions]    Script Date: 02/02/2017 5:33:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE PROCEDURE [dbo].[aspnet_Setup_RestorePermissions]
    @name   sysname
AS
BEGIN
    DECLARE @object sysname
    DECLARE @protectType char(10)
    DECLARE @action varchar(60)
    DECLARE @grantee sysname
    DECLARE @cmd nvarchar(500)
    DECLARE c1 cursor FORWARD_ONLY FOR
        SELECT Object, ProtectType, [Action], Grantee FROM #aspnet_Permissions where Object = @name

    OPEN c1

    FETCH c1 INTO @object, @protectType, @action, @grantee
    WHILE (@@fetch_status = 0)
    BEGIN
        SET @cmd = @protectType + ' ' + @action + ' on ' + @object + ' TO [' + @grantee + ']'
        EXEC (@cmd)
        FETCH c1 INTO @object, @protectType, @action, @grantee
    END

    CLOSE c1
    DEALLOCATE c1
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_UnRegisterSchemaVersion]    Script Date: 02/02/2017 5:33:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE PROCEDURE [dbo].[aspnet_UnRegisterSchemaVersion]
    @Feature                   nvarchar(128),
    @CompatibleSchemaVersion   nvarchar(128)
AS
BEGIN
    DELETE FROM dbo.aspnet_SchemaVersions
        WHERE   Feature = LOWER(@Feature) AND @CompatibleSchemaVersion = CompatibleSchemaVersion
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Users_CreateUser]    Script Date: 02/02/2017 5:33:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE PROCEDURE [dbo].[aspnet_Users_CreateUser]
    @ApplicationId    uniqueidentifier,
    @UserName         nvarchar(256),
    @IsUserAnonymous  bit,
    @LastActivityDate DATETIME,
    @UserId           uniqueidentifier OUTPUT
AS
BEGIN
    IF( @UserId IS NULL )
        SELECT @UserId = NEWID()
    ELSE
    BEGIN
        IF( EXISTS( SELECT UserId FROM dbo.aspnet_Users
                    WHERE @UserId = UserId ) )
            RETURN -1
    END

    INSERT dbo.aspnet_Users (ApplicationId, UserId, UserName, LoweredUserName, IsAnonymous, LastActivityDate)
    VALUES (@ApplicationId, @UserId, @UserName, LOWER(@UserName), @IsUserAnonymous, @LastActivityDate)

    RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Users_DeleteUser]    Script Date: 02/02/2017 5:33:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Users_DeleteUser]
    @ApplicationName  nvarchar(256),
    @UserName         nvarchar(256),
    @TablesToDeleteFrom int,
    @NumTablesDeletedFrom int OUTPUT
AS
BEGIN
    DECLARE @UserId               uniqueidentifier
    SELECT  @UserId               = NULL
    SELECT  @NumTablesDeletedFrom = 0

    DECLARE @TranStarted   bit
    SET @TranStarted = 0

    IF( @@TRANCOUNT = 0 )
    BEGIN
	    BEGIN TRANSACTION
	    SET @TranStarted = 1
    END
    ELSE
	SET @TranStarted = 0

    DECLARE @ErrorCode   int
    DECLARE @RowCount    int

    SET @ErrorCode = 0
    SET @RowCount  = 0

    SELECT  @UserId = u.UserId
    FROM    dbo.aspnet_Users u, dbo.aspnet_Applications a
    WHERE   u.LoweredUserName       = LOWER(@UserName)
        AND u.ApplicationId         = a.ApplicationId
        AND LOWER(@ApplicationName) = a.LoweredApplicationName

    IF (@UserId IS NULL)
    BEGIN
        GOTO Cleanup
    END

    -- Delete from Membership table if (@TablesToDeleteFrom & 1) is set
    IF ((@TablesToDeleteFrom & 1) <> 0 AND
        (EXISTS (SELECT name FROM sysobjects WHERE (name = N'vw_aspnet_MembershipUsers') AND (type = 'V'))))
    BEGIN
        DELETE FROM dbo.aspnet_Membership WHERE @UserId = UserId

        SELECT @ErrorCode = @@ERROR,
               @RowCount = @@ROWCOUNT

        IF( @ErrorCode <> 0 )
            GOTO Cleanup

        IF (@RowCount <> 0)
            SELECT  @NumTablesDeletedFrom = @NumTablesDeletedFrom + 1
    END

    -- Delete from aspnet_UsersInRoles table if (@TablesToDeleteFrom & 2) is set
    IF ((@TablesToDeleteFrom & 2) <> 0  AND
        (EXISTS (SELECT name FROM sysobjects WHERE (name = N'vw_aspnet_UsersInRoles') AND (type = 'V'))) )
    BEGIN
        DELETE FROM dbo.aspnet_UsersInRoles WHERE @UserId = UserId

        SELECT @ErrorCode = @@ERROR,
                @RowCount = @@ROWCOUNT

        IF( @ErrorCode <> 0 )
            GOTO Cleanup

        IF (@RowCount <> 0)
            SELECT  @NumTablesDeletedFrom = @NumTablesDeletedFrom + 1
    END

    -- Delete from aspnet_Profile table if (@TablesToDeleteFrom & 4) is set
    IF ((@TablesToDeleteFrom & 4) <> 0  AND
        (EXISTS (SELECT name FROM sysobjects WHERE (name = N'vw_aspnet_Profiles') AND (type = 'V'))) )
    BEGIN
        DELETE FROM dbo.aspnet_Profile WHERE @UserId = UserId

        SELECT @ErrorCode = @@ERROR,
                @RowCount = @@ROWCOUNT

        IF( @ErrorCode <> 0 )
            GOTO Cleanup

        IF (@RowCount <> 0)
            SELECT  @NumTablesDeletedFrom = @NumTablesDeletedFrom + 1
    END

    -- Delete from aspnet_PersonalizationPerUser table if (@TablesToDeleteFrom & 8) is set
    IF ((@TablesToDeleteFrom & 8) <> 0  AND
        (EXISTS (SELECT name FROM sysobjects WHERE (name = N'vw_aspnet_WebPartState_User') AND (type = 'V'))) )
    BEGIN
        DELETE FROM dbo.aspnet_PersonalizationPerUser WHERE @UserId = UserId

        SELECT @ErrorCode = @@ERROR,
                @RowCount = @@ROWCOUNT

        IF( @ErrorCode <> 0 )
            GOTO Cleanup

        IF (@RowCount <> 0)
            SELECT  @NumTablesDeletedFrom = @NumTablesDeletedFrom + 1
    END

    -- Delete from aspnet_Users table if (@TablesToDeleteFrom & 1,2,4 & 8) are all set
    IF ((@TablesToDeleteFrom & 1) <> 0 AND
        (@TablesToDeleteFrom & 2) <> 0 AND
        (@TablesToDeleteFrom & 4) <> 0 AND
        (@TablesToDeleteFrom & 8) <> 0 AND
        (EXISTS (SELECT UserId FROM dbo.aspnet_Users WHERE @UserId = UserId)))
    BEGIN
        DELETE FROM dbo.aspnet_Users WHERE @UserId = UserId

        SELECT @ErrorCode = @@ERROR,
                @RowCount = @@ROWCOUNT

        IF( @ErrorCode <> 0 )
            GOTO Cleanup

        IF (@RowCount <> 0)
            SELECT  @NumTablesDeletedFrom = @NumTablesDeletedFrom + 1
    END

    IF( @TranStarted = 1 )
    BEGIN
	    SET @TranStarted = 0
	    COMMIT TRANSACTION
    END

    RETURN 0

Cleanup:
    SET @NumTablesDeletedFrom = 0

    IF( @TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
	    ROLLBACK TRANSACTION
    END

    RETURN @ErrorCode

END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_UsersInRoles_AddUsersToRoles]    Script Date: 02/02/2017 5:33:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE PROCEDURE [dbo].[aspnet_UsersInRoles_AddUsersToRoles]
	@ApplicationName  nvarchar(256),
	@UserNames		  nvarchar(4000),
	@RoleNames		  nvarchar(4000),
	@CurrentTimeUtc   datetime
AS
BEGIN
	DECLARE @AppId uniqueidentifier
	SELECT  @AppId = NULL
	SELECT  @AppId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
	IF (@AppId IS NULL)
		RETURN(2)
	DECLARE @TranStarted   bit
	SET @TranStarted = 0

	IF( @@TRANCOUNT = 0 )
	BEGIN
		BEGIN TRANSACTION
		SET @TranStarted = 1
	END

	DECLARE @tbNames	table(Name nvarchar(256) NOT NULL PRIMARY KEY)
	DECLARE @tbRoles	table(RoleId uniqueidentifier NOT NULL PRIMARY KEY)
	DECLARE @tbUsers	table(UserId uniqueidentifier NOT NULL PRIMARY KEY)
	DECLARE @Num		int
	DECLARE @Pos		int
	DECLARE @NextPos	int
	DECLARE @Name		nvarchar(256)

	SET @Num = 0
	SET @Pos = 1
	WHILE(@Pos <= LEN(@RoleNames))
	BEGIN
		SELECT @NextPos = CHARINDEX(N',', @RoleNames,  @Pos)
		IF (@NextPos = 0 OR @NextPos IS NULL)
			SELECT @NextPos = LEN(@RoleNames) + 1
		SELECT @Name = RTRIM(LTRIM(SUBSTRING(@RoleNames, @Pos, @NextPos - @Pos)))
		SELECT @Pos = @NextPos+1

		INSERT INTO @tbNames VALUES (@Name)
		SET @Num = @Num + 1
	END

	INSERT INTO @tbRoles
	  SELECT RoleId
	  FROM   dbo.aspnet_Roles ar, @tbNames t
	  WHERE  LOWER(t.Name) = ar.LoweredRoleName AND ar.ApplicationId = @AppId

	IF (@@ROWCOUNT <> @Num)
	BEGIN
		SELECT TOP 1 Name
		FROM   @tbNames
		WHERE  LOWER(Name) NOT IN (SELECT ar.LoweredRoleName FROM dbo.aspnet_Roles ar,  @tbRoles r WHERE r.RoleId = ar.RoleId)
		IF( @TranStarted = 1 )
			ROLLBACK TRANSACTION
		RETURN(2)
	END

	DELETE FROM @tbNames WHERE 1=1
	SET @Num = 0
	SET @Pos = 1

	WHILE(@Pos <= LEN(@UserNames))
	BEGIN
		SELECT @NextPos = CHARINDEX(N',', @UserNames,  @Pos)
		IF (@NextPos = 0 OR @NextPos IS NULL)
			SELECT @NextPos = LEN(@UserNames) + 1
		SELECT @Name = RTRIM(LTRIM(SUBSTRING(@UserNames, @Pos, @NextPos - @Pos)))
		SELECT @Pos = @NextPos+1

		INSERT INTO @tbNames VALUES (@Name)
		SET @Num = @Num + 1
	END

	INSERT INTO @tbUsers
	  SELECT UserId
	  FROM   dbo.aspnet_Users ar, @tbNames t
	  WHERE  LOWER(t.Name) = ar.LoweredUserName AND ar.ApplicationId = @AppId

	IF (@@ROWCOUNT <> @Num)
	BEGIN
		DELETE FROM @tbNames
		WHERE LOWER(Name) IN (SELECT LoweredUserName FROM dbo.aspnet_Users au,  @tbUsers u WHERE au.UserId = u.UserId)

		INSERT dbo.aspnet_Users (ApplicationId, UserId, UserName, LoweredUserName, IsAnonymous, LastActivityDate)
		  SELECT @AppId, NEWID(), Name, LOWER(Name), 0, @CurrentTimeUtc
		  FROM   @tbNames

		INSERT INTO @tbUsers
		  SELECT  UserId
		  FROM	dbo.aspnet_Users au, @tbNames t
		  WHERE   LOWER(t.Name) = au.LoweredUserName AND au.ApplicationId = @AppId
	END

	IF (EXISTS (SELECT * FROM dbo.aspnet_UsersInRoles ur, @tbUsers tu, @tbRoles tr WHERE tu.UserId = ur.UserId AND tr.RoleId = ur.RoleId))
	BEGIN
		SELECT TOP 1 UserName, RoleName
		FROM		 dbo.aspnet_UsersInRoles ur, @tbUsers tu, @tbRoles tr, aspnet_Users u, aspnet_Roles r
		WHERE		u.UserId = tu.UserId AND r.RoleId = tr.RoleId AND tu.UserId = ur.UserId AND tr.RoleId = ur.RoleId

		IF( @TranStarted = 1 )
			ROLLBACK TRANSACTION
		RETURN(3)
	END

	INSERT INTO dbo.aspnet_UsersInRoles (UserId, RoleId)
	SELECT UserId, RoleId
	FROM @tbUsers, @tbRoles

	IF( @TranStarted = 1 )
		COMMIT TRANSACTION
	RETURN(0)
END                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     
GO
/****** Object:  StoredProcedure [dbo].[aspnet_UsersInRoles_FindUsersInRole]    Script Date: 02/02/2017 5:33:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE PROCEDURE [dbo].[aspnet_UsersInRoles_FindUsersInRole]
    @ApplicationName  nvarchar(256),
    @RoleName         nvarchar(256),
    @UserNameToMatch  nvarchar(256)
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN(1)
     DECLARE @RoleId uniqueidentifier
     SELECT  @RoleId = NULL

     SELECT  @RoleId = RoleId
     FROM    dbo.aspnet_Roles
     WHERE   LOWER(@RoleName) = LoweredRoleName AND ApplicationId = @ApplicationId

     IF (@RoleId IS NULL)
         RETURN(1)

    SELECT u.UserName
    FROM   dbo.aspnet_Users u, dbo.aspnet_UsersInRoles ur
    WHERE  u.UserId = ur.UserId AND @RoleId = ur.RoleId AND u.ApplicationId = @ApplicationId AND LoweredUserName LIKE LOWER(@UserNameToMatch)
    ORDER BY u.UserName
    RETURN(0)
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_UsersInRoles_GetRolesForUser]    Script Date: 02/02/2017 5:33:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE PROCEDURE [dbo].[aspnet_UsersInRoles_GetRolesForUser]
    @ApplicationName  nvarchar(256),
    @UserName         nvarchar(256)
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN(1)
    DECLARE @UserId uniqueidentifier
    SELECT  @UserId = NULL

    SELECT  @UserId = UserId
    FROM    dbo.aspnet_Users
    WHERE   LoweredUserName = LOWER(@UserName) AND ApplicationId = @ApplicationId

    IF (@UserId IS NULL)
        RETURN(1)

    SELECT r.RoleName
    FROM   dbo.aspnet_Roles r, dbo.aspnet_UsersInRoles ur
    WHERE  r.RoleId = ur.RoleId AND r.ApplicationId = @ApplicationId AND ur.UserId = @UserId
    ORDER BY r.RoleName
    RETURN (0)
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_UsersInRoles_GetUsersInRoles]    Script Date: 02/02/2017 5:33:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE PROCEDURE [dbo].[aspnet_UsersInRoles_GetUsersInRoles]
    @ApplicationName  nvarchar(256),
    @RoleName         nvarchar(256)
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN(1)
     DECLARE @RoleId uniqueidentifier
     SELECT  @RoleId = NULL

     SELECT  @RoleId = RoleId
     FROM    dbo.aspnet_Roles
     WHERE   LOWER(@RoleName) = LoweredRoleName AND ApplicationId = @ApplicationId

     IF (@RoleId IS NULL)
         RETURN(1)

    SELECT u.UserName
    FROM   dbo.aspnet_Users u, dbo.aspnet_UsersInRoles ur
    WHERE  u.UserId = ur.UserId AND @RoleId = ur.RoleId AND u.ApplicationId = @ApplicationId
    ORDER BY u.UserName
    RETURN(0)
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_UsersInRoles_IsUserInRole]    Script Date: 02/02/2017 5:33:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE PROCEDURE [dbo].[aspnet_UsersInRoles_IsUserInRole]
    @ApplicationName  nvarchar(256),
    @UserName         nvarchar(256),
    @RoleName         nvarchar(256)
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN(2)
    DECLARE @UserId uniqueidentifier
    SELECT  @UserId = NULL
    DECLARE @RoleId uniqueidentifier
    SELECT  @RoleId = NULL

    SELECT  @UserId = UserId
    FROM    dbo.aspnet_Users
    WHERE   LoweredUserName = LOWER(@UserName) AND ApplicationId = @ApplicationId

    IF (@UserId IS NULL)
        RETURN(2)

    SELECT  @RoleId = RoleId
    FROM    dbo.aspnet_Roles
    WHERE   LoweredRoleName = LOWER(@RoleName) AND ApplicationId = @ApplicationId

    IF (@RoleId IS NULL)
        RETURN(3)

    IF (EXISTS( SELECT * FROM dbo.aspnet_UsersInRoles WHERE  UserId = @UserId AND RoleId = @RoleId))
        RETURN(1)
    ELSE
        RETURN(0)
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_UsersInRoles_RemoveUsersFromRoles]    Script Date: 02/02/2017 5:33:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE PROCEDURE [dbo].[aspnet_UsersInRoles_RemoveUsersFromRoles]
	@ApplicationName  nvarchar(256),
	@UserNames		  nvarchar(4000),
	@RoleNames		  nvarchar(4000)
AS
BEGIN
	DECLARE @AppId uniqueidentifier
	SELECT  @AppId = NULL
	SELECT  @AppId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
	IF (@AppId IS NULL)
		RETURN(2)


	DECLARE @TranStarted   bit
	SET @TranStarted = 0

	IF( @@TRANCOUNT = 0 )
	BEGIN
		BEGIN TRANSACTION
		SET @TranStarted = 1
	END

	DECLARE @tbNames  table(Name nvarchar(256) NOT NULL PRIMARY KEY)
	DECLARE @tbRoles  table(RoleId uniqueidentifier NOT NULL PRIMARY KEY)
	DECLARE @tbUsers  table(UserId uniqueidentifier NOT NULL PRIMARY KEY)
	DECLARE @Num	  int
	DECLARE @Pos	  int
	DECLARE @NextPos  int
	DECLARE @Name	  nvarchar(256)
	DECLARE @CountAll int
	DECLARE @CountU	  int
	DECLARE @CountR	  int


	SET @Num = 0
	SET @Pos = 1
	WHILE(@Pos <= LEN(@RoleNames))
	BEGIN
		SELECT @NextPos = CHARINDEX(N',', @RoleNames,  @Pos)
		IF (@NextPos = 0 OR @NextPos IS NULL)
			SELECT @NextPos = LEN(@RoleNames) + 1
		SELECT @Name = RTRIM(LTRIM(SUBSTRING(@RoleNames, @Pos, @NextPos - @Pos)))
		SELECT @Pos = @NextPos+1

		INSERT INTO @tbNames VALUES (@Name)
		SET @Num = @Num + 1
	END

	INSERT INTO @tbRoles
	  SELECT RoleId
	  FROM   dbo.aspnet_Roles ar, @tbNames t
	  WHERE  LOWER(t.Name) = ar.LoweredRoleName AND ar.ApplicationId = @AppId
	SELECT @CountR = @@ROWCOUNT

	IF (@CountR <> @Num)
	BEGIN
		SELECT TOP 1 N'', Name
		FROM   @tbNames
		WHERE  LOWER(Name) NOT IN (SELECT ar.LoweredRoleName FROM dbo.aspnet_Roles ar,  @tbRoles r WHERE r.RoleId = ar.RoleId)
		IF( @TranStarted = 1 )
			ROLLBACK TRANSACTION
		RETURN(2)
	END


	DELETE FROM @tbNames WHERE 1=1
	SET @Num = 0
	SET @Pos = 1


	WHILE(@Pos <= LEN(@UserNames))
	BEGIN
		SELECT @NextPos = CHARINDEX(N',', @UserNames,  @Pos)
		IF (@NextPos = 0 OR @NextPos IS NULL)
			SELECT @NextPos = LEN(@UserNames) + 1
		SELECT @Name = RTRIM(LTRIM(SUBSTRING(@UserNames, @Pos, @NextPos - @Pos)))
		SELECT @Pos = @NextPos+1

		INSERT INTO @tbNames VALUES (@Name)
		SET @Num = @Num + 1
	END

	INSERT INTO @tbUsers
	  SELECT UserId
	  FROM   dbo.aspnet_Users ar, @tbNames t
	  WHERE  LOWER(t.Name) = ar.LoweredUserName AND ar.ApplicationId = @AppId

	SELECT @CountU = @@ROWCOUNT
	IF (@CountU <> @Num)
	BEGIN
		SELECT TOP 1 Name, N''
		FROM   @tbNames
		WHERE  LOWER(Name) NOT IN (SELECT au.LoweredUserName FROM dbo.aspnet_Users au,  @tbUsers u WHERE u.UserId = au.UserId)

		IF( @TranStarted = 1 )
			ROLLBACK TRANSACTION
		RETURN(1)
	END

	SELECT  @CountAll = COUNT(*)
	FROM	dbo.aspnet_UsersInRoles ur, @tbUsers u, @tbRoles r
	WHERE   ur.UserId = u.UserId AND ur.RoleId = r.RoleId

	IF (@CountAll <> @CountU * @CountR)
	BEGIN
		SELECT TOP 1 UserName, RoleName
		FROM		 @tbUsers tu, @tbRoles tr, dbo.aspnet_Users u, dbo.aspnet_Roles r
		WHERE		 u.UserId = tu.UserId AND r.RoleId = tr.RoleId AND
					 tu.UserId NOT IN (SELECT ur.UserId FROM dbo.aspnet_UsersInRoles ur WHERE ur.RoleId = tr.RoleId) AND
					 tr.RoleId NOT IN (SELECT ur.RoleId FROM dbo.aspnet_UsersInRoles ur WHERE ur.UserId = tu.UserId)
		IF( @TranStarted = 1 )
			ROLLBACK TRANSACTION
		RETURN(3)
	END

	DELETE FROM dbo.aspnet_UsersInRoles
	WHERE UserId IN (SELECT UserId FROM @tbUsers)
	  AND RoleId IN (SELECT RoleId FROM @tbRoles)
	IF( @TranStarted = 1 )
		COMMIT TRANSACTION
	RETURN(0)
END
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        
GO
/****** Object:  StoredProcedure [dbo].[aspnet_WebEvent_LogEvent]    Script Date: 02/02/2017 5:33:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_WebEvent_LogEvent]
        @EventId         char(32),
        @EventTimeUtc    datetime,
        @EventTime       datetime,
        @EventType       nvarchar(256),
        @EventSequence   decimal(19,0),
        @EventOccurrence decimal(19,0),
        @EventCode       int,
        @EventDetailCode int,
        @Message         nvarchar(1024),
        @ApplicationPath nvarchar(256),
        @ApplicationVirtualPath nvarchar(256),
        @MachineName    nvarchar(256),
        @RequestUrl      nvarchar(1024),
        @ExceptionType   nvarchar(256),
        @Details         ntext
AS
BEGIN
    INSERT
        dbo.aspnet_WebEvent_Events
        (
            EventId,
            EventTimeUtc,
            EventTime,
            EventType,
            EventSequence,
            EventOccurrence,
            EventCode,
            EventDetailCode,
            Message,
            ApplicationPath,
            ApplicationVirtualPath,
            MachineName,
            RequestUrl,
            ExceptionType,
            Details
        )
    VALUES
    (
        @EventId,
        @EventTimeUtc,
        @EventTime,
        @EventType,
        @EventSequence,
        @EventOccurrence,
        @EventCode,
        @EventDetailCode,
        @Message,
        @ApplicationPath,
        @ApplicationVirtualPath,
        @MachineName,
        @RequestUrl,
        @ExceptionType,
        @Details
    )
END
GO
/****** Object:  StoredProcedure [dbo].[insertarBodegas]    Script Date: 02/02/2017 5:33:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create procedure [dbo].[insertarBodegas](
@NumeroRegistros int
)
as begin
	declare @Contador int
	set @Contador = 1

	declare @NombreBodega varchar(50)
	declare @DireccionBodega varchar(100)
	declare @CapacidadBodega int
	declare @TelefonoBodega varchar(10)

	while(@Contador <= @NumeroRegistros)
	begin
		set @NombreBodega = 'Bodega ' + LTRIM(RTRIM(CAST(@Contador as char)))
		set @DireccionBodega = 'Direccion ' + LTRIM(RTRIM(CAST(@Contador as char)))
		set @CapacidadBodega = RAND() * 10000
		set @TelefonoBodega = ltrim(rtrim(CAST(2000000 + @Contador as char)))

		insert into Bodega(NombreBodega, DireccionBodega, CapacidadBodega, TelefonoBodega) 
		values(@NombreBodega, @DireccionBodega, @CapacidadBodega, @TelefonoBodega)

		set @Contador = @Contador + 1
	end
end

GO
/****** Object:  StoredProcedure [dbo].[insertarCategorias]    Script Date: 02/02/2017 5:33:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create procedure [dbo].[insertarCategorias](
@NumeroRegistros int
)
as begin
	declare @Contador int
	set @Contador = 1

	declare @NombreCategoria varchar(50)
	declare @DescripcionCategoria varchar(100)

	while(@Contador <= @NumeroRegistros)
	begin
		set @NombreCategoria = 'Categoria ' + LTRIM(RTRIM(CAST(@Contador as char)))
		set @DescripcionCategoria = 'Descripcion de categoria ' + LTRIM(RTRIM(CAST(@Contador as char)))

		insert into Categoria(NombreCategoria, DescripcionCategoria) 
		values(@NombreCategoria, @DescripcionCategoria)

		set @Contador = @Contador + 1
	end
end

GO
/****** Object:  StoredProcedure [dbo].[insertarClientes]    Script Date: 02/02/2017 5:33:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create procedure [dbo].[insertarClientes](
@NumeroRegistros int
)
as begin
	declare @Contador int
	set @Contador = 1

	declare @NombreCliente varchar(50)
	declare @ApellidoCliente varchar(50)
	declare @IdentificacionCliente varchar(13)
	declare @DireccionCliente varchar(50)
	declare @TelefonoCliente varchar(10)
	declare @CorreoElectronicoCliente varchar(50)

	while(@Contador <= @NumeroRegistros)
	begin
		set @NombreCliente = 'Nombre' + LTRIM(RTRIM(CAST(@Contador as char)))
		set @ApellidoCliente = 'Apellido' + LTRIM(RTRIM(CAST(@Contador as char)))
		set @IdentificacionCliente = LTRIM(RTRIM(CAST(1000000000 + @Contador as char)))
		set @DireccionCliente = 'Direccion ' + CAST(@Contador as char)
		set @TelefonoCliente = LTRIM(RTRIM(CAST(2000000 + @Contador as char)))
		set @CorreoElectronicoCliente = 'clienteapellido' + LTRIM(RTRIM(CAST(@Contador as char))) + '@udlanet.ec'

		insert into Cliente(NombreCliente, ApellidoCliente, IdentificacionCliente, DireccionCliente, TelefonoCliente, CorreoElectronicoCliente) 
		values(@NombreCliente, @ApellidoCliente, @IdentificacionCliente, @DireccionCliente, @TelefonoCliente, @CorreoElectronicoCliente)

		set @Contador = @Contador + 1
	end
end

GO
/****** Object:  StoredProcedure [dbo].[insertarProveedores]    Script Date: 02/02/2017 5:33:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create procedure [dbo].[insertarProveedores](
@NumeroRegistros int
)
as begin
	declare @Contador int
	set @Contador = 1

	declare @NombreProveedor varchar(50)
	declare @RUCProveedor char(13)
	declare @DireccionProveedor varchar(100)
	declare @TelefonoProveedor varchar(10)

	while(@Contador <= @NumeroRegistros)
	begin
		set @NombreProveedor = 'Proveedor ' + LTRIM(RTRIM(CAST(@Contador as char)))
		set @RUCProveedor = ltrim(rtrim(CAST(1000000000000 + @Contador as char)))
		set @DireccionProveedor = 'Direccion ' + LTRIM(RTRIM(CAST(@Contador as char)))
		set @TelefonoProveedor = ltrim(rtrim(CAST(2000000 + @Contador as char)))

		insert into Proveedor(NombreProveedor, RUCProveedor, DireccionProveedor, TelefonoProveedor) 
		values(@NombreProveedor, @RUCProveedor, @DireccionProveedor, @TelefonoProveedor)

		set @Contador = @Contador + 1
	end
end

GO
/****** Object:  StoredProcedure [dbo].[SP_ActualizarTipoLlanta]    Script Date: 02/02/2017 5:33:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create procedure [dbo].[SP_ActualizarTipoLlanta](
@Id_TipoLlanta int,
@Id_Bodega int,
@Id_Categoria int,
@Id_Proveedor int,
@NombreTipoLlanta varchar(50),
@Stock int,
@Marca varchar(50),
@Rin int,
@PrecioCompra decimal(30,2),
@PrecioUnitario decimal(30, 2),
@Color varchar(15)
)
as 
begin
	declare @respuesta as char(1);
	declare @stockActual as int;
	declare @diferenciaStock as int;
	declare @capacidadActual as int;

	set @capacidadActual = (select CapacidadBodega from Bodega where Id_Bodega = @Id_Bodega);
	set @stockActual = (select Stock from TipoLlanta where Id_TipoLlanta = @Id_TipoLlanta);
	set @diferenciaStock = @stockActual - @Stock;
	set @capacidadActual = @capacidadActual - @diferenciaStock;

	if(@capacidadActual >= 0)
	begin
		update TipoLlanta
		set Id_Bodega = @Id_Bodega, Id_Categoria = @Id_Categoria, NombreTipoLlanta = @NombreTipoLlanta, Stock = @Stock, Marca = @Marca, Rin = @Rin, PrecioUnitario = @PrecioUnitario, Color = @Color, Id_Proveedor = @Id_Proveedor, PrecioCompra = @PrecioCompra
		where Id_TipoLlanta = @Id_TipoLlanta;

		update Bodega
		set CapacidadBodega = @capacidadActual
		where Id_Bodega = @Id_Bodega;

		set @respuesta = '1';
	end
	else
		set @respuesta = '0';

	return @respuesta;
end;

GO
/****** Object:  StoredProcedure [dbo].[SP_DevolverVentaTipoLlanta]    Script Date: 02/02/2017 5:33:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create procedure [dbo].[SP_DevolverVentaTipoLlanta](
@Id_Venta int,
@Id_TipoLlanta int
)
as 
begin
	declare @Id_Bodega as int;
	declare @Id_Categoria as int;
	declare @NombreTipoLlanta as varchar(50);
	declare @Stock as int;
	declare @Marca as varchar(50);
	declare @Rin as int;
	declare @PrecioUnitario as decimal(30, 2);
	declare @Color as varchar(15);

	set @Id_Bodega = (select Id_Bodega from TipoLlanta where Id_TipoLlanta = @Id_TipoLlanta);
	set @Id_Categoria = (select Id_Categoria from TipoLlanta where Id_TipoLlanta = @Id_TipoLlanta);
	set @NombreTipoLlanta = (select NombreTipoLlanta from TipoLlanta where Id_TipoLlanta = @Id_TipoLlanta);
	set @Stock = (select Stock from TipoLlanta where Id_TipoLlanta = @Id_TipoLlanta) + (select Cantidad from VentaTipoLlanta where Id_Venta = @Id_Venta and Id_TipoLlanta = @Id_TipoLlanta);
	set @Marca = (select Marca from TipoLlanta where Id_TipoLlanta = @Id_TipoLlanta);
	set @Rin = (select Rin from TipoLlanta where Id_TipoLlanta = @Id_TipoLlanta);
	set @PrecioUnitario = (select PrecioUnitario from TipoLlanta where Id_TipoLlanta = @Id_TipoLlanta);
	set @Color = (select Color from TipoLlanta where Id_TipoLlanta = @Id_TipoLlanta);

	declare @respuesta as char(1);
	declare @stockActual as int;
	declare @diferenciaStock as int;
	declare @capacidadActual as int;

	set @capacidadActual = (select CapacidadBodega from Bodega where Id_Bodega = @Id_Bodega);
	set @stockActual = (select Stock from TipoLlanta where Id_TipoLlanta = @Id_TipoLlanta);
	set @diferenciaStock = @stockActual - @Stock;
	set @capacidadActual = @capacidadActual - @diferenciaStock;

	if(@capacidadActual >= 0)
	begin
		update TipoLlanta
		set Id_Bodega = @Id_Bodega, Id_Categoria = @Id_Categoria, NombreTipoLlanta = @NombreTipoLlanta, Stock = @Stock, Marca = @Marca, Rin = @Rin, PrecioUnitario = @PrecioUnitario, Color = @Color
		where Id_TipoLlanta = @Id_TipoLlanta;

		update Bodega
		set CapacidadBodega = @capacidadActual
		where Id_Bodega = @Id_Bodega;

		set @respuesta = '1';
	end
	else
		set @respuesta = '0';

	return @respuesta;
end;
GO
/****** Object:  StoredProcedure [dbo].[SP_EliminarTipoLlanta]    Script Date: 02/02/2017 5:33:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create procedure [dbo].[SP_EliminarTipoLlanta](
@Id_TipoLlanta int
)
as 
begin
	declare @respuesta as char(1);
	declare @capacidadBodega as int;

	set @capacidadBodega = (select CapacidadBodega
							from TipoLlanta, Bodega
							where TipoLlanta.Id_Bodega = Bodega.Id_Bodega and Id_TipoLlanta = 1);

	update Bodega
	set CapacidadBodega = @capacidadBodega + (select Stock from TipoLlanta where Id_TipoLlanta =  @Id_TipoLlanta)
	where Id_Bodega = (select Id_Bodega from TipoLlanta where Id_TipoLlanta = @Id_TipoLlanta);

	delete from TipoLlanta where Id_TipoLlanta = @Id_TipoLlanta;

	set @respuesta = '1';

	return @respuesta;
end;

GO
/****** Object:  StoredProcedure [dbo].[SP_IngresarTipoLlanta]    Script Date: 02/02/2017 5:33:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[SP_IngresarTipoLlanta](
@Id_Bodega int,
@Id_Categoria int,
@Id_Usuario uniqueidentifier,
@Id_Proveedor int,
@NombreTipoLlanta varchar(50),
@Stock int,
@Marca varchar(50),
@Rin int,
@PrecioCompra decimal(30,2),
@PrecioUnitario decimal(30, 2),
@Color varchar(15)
)
as 
begin
	declare @respuesta as char(1);

	if((select CapacidadBodega from Bodega where Id_Bodega = @Id_Bodega) - @Stock >= 0)
	begin
		update Bodega 
		set CapacidadBodega = ((select CapacidadBodega from Bodega where Id_Bodega = @Id_Bodega) - @Stock) 
		where Id_Bodega = @Id_Bodega;

		insert into TipoLlanta(Id_Bodega, Id_Categoria, Id_Usuario, Id_Proveedor, NombreTipoLlanta, Stock, Marca, Rin, PrecioCompra, PrecioUnitario, Color)
		values(@Id_Bodega, @Id_Categoria, (select Id_Usuario from Usuario where UserId = @Id_Usuario), @Id_Proveedor, @NombreTipoLlanta, @Stock, @Marca, @Rin, @PrecioCompra, @PrecioUnitario, @Color);

		set @respuesta = (select max(Id_TipoLlanta) from TipoLlanta);
	end
	else
		set @respuesta = '0';

	return @respuesta;
end;

GO
/****** Object:  StoredProcedure [dbo].[SP_Venta]    Script Date: 02/02/2017 5:33:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[SP_Venta](
@Id_Usuario uniqueidentifier,
@Id_Cliente int
)
as
begin
	insert into Venta(Id_Usuario, Id_Cliente, FechaFactura, TotalFactura, Devuelto) 
				values((select Id_Usuario from Usuario where UserId = @Id_Usuario), @Id_Cliente, GETDATE(), 0, 0);

	declare @Id_Venta as int;

	set @Id_Venta = (select MAX(Id_Venta) from Venta);

	return @Id_Venta;
end;

GO
/****** Object:  StoredProcedure [dbo].[SP_VentaTipoLlanta]    Script Date: 02/02/2017 5:33:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create procedure [dbo].[SP_VentaTipoLlanta](
@Id_Venta int,
@Id_TipoLlanta int,
@Cantidad int
)
as
begin
	declare @respuesta as char(1);
	declare @PrecioUnitario as decimal(30, 2);
	declare @TotalFactura as decimal(30, 2);
	declare @Stock as int;
	declare @totalTipoLlanta as decimal(30, 2);
	declare @Capacidad as int;

	set @PrecioUnitario = (select PrecioUnitario from TipoLlanta where Id_TipoLlanta = @Id_TipoLlanta);
	set @totalTipoLlanta = @PrecioUnitario * @Cantidad;
	set @TotalFactura = (select TotalFactura from Venta where Id_Venta=@Id_Venta) + @totalTipoLlanta;
	set @Stock = (select Stock from TipoLlanta where Id_TipoLlanta = @Id_TipoLlanta) - @Cantidad;
	set @Capacidad = (select CapacidadBodega from Bodega, TipoLlanta where Bodega.Id_Bodega = TipoLlanta.Id_Bodega and Id_TipoLlanta = @Id_TipoLlanta);

	update Bodega set CapacidadBodega = @Capacidad - @Cantidad where Id_Bodega = (select Bodega.Id_Bodega from Bodega, TipoLlanta where Bodega.Id_Bodega = TipoLlanta.Id_Bodega and Id_TipoLlanta = @Id_TipoLlanta);

	update TipoLlanta set Stock = @Stock where Id_TipoLlanta = @Id_TipoLlanta;

	update Venta set TotalFactura=@TotalFactura where Id_Venta=@Id_Venta;

	insert into VentaTipoLlanta(Id_Venta, Id_TipoLlanta, Cantidad) values(@Id_Venta, @Id_TipoLlanta, @Cantidad);

	set @respuesta = '1';

	return @respuesta;
end;

GO
USE [master]
GO
ALTER DATABASE [dbProyectoFinal] SET  READ_WRITE 
GO
