USE [master]
GO
/****** Object:  Database [DB_Employee_Work_Hours]    Script Date: 18/06/2018 10:59:15 AM ******/
CREATE DATABASE [DB_Employee_Work_Hours]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'DB_Employee_Work_Hours', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\DB_Employee_Work_Hours.mdf' , SIZE = 4288KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'DB_Employee_Work_Hours_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\DB_Employee_Work_Hours_log.ldf' , SIZE = 1072KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [DB_Employee_Work_Hours] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [DB_Employee_Work_Hours].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [DB_Employee_Work_Hours] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [DB_Employee_Work_Hours] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [DB_Employee_Work_Hours] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [DB_Employee_Work_Hours] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [DB_Employee_Work_Hours] SET ARITHABORT OFF 
GO
ALTER DATABASE [DB_Employee_Work_Hours] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [DB_Employee_Work_Hours] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [DB_Employee_Work_Hours] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [DB_Employee_Work_Hours] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [DB_Employee_Work_Hours] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [DB_Employee_Work_Hours] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [DB_Employee_Work_Hours] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [DB_Employee_Work_Hours] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [DB_Employee_Work_Hours] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [DB_Employee_Work_Hours] SET  ENABLE_BROKER 
GO
ALTER DATABASE [DB_Employee_Work_Hours] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [DB_Employee_Work_Hours] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [DB_Employee_Work_Hours] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [DB_Employee_Work_Hours] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [DB_Employee_Work_Hours] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [DB_Employee_Work_Hours] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [DB_Employee_Work_Hours] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [DB_Employee_Work_Hours] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [DB_Employee_Work_Hours] SET  MULTI_USER 
GO
ALTER DATABASE [DB_Employee_Work_Hours] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [DB_Employee_Work_Hours] SET DB_CHAINING OFF 
GO
ALTER DATABASE [DB_Employee_Work_Hours] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [DB_Employee_Work_Hours] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [DB_Employee_Work_Hours] SET DELAYED_DURABILITY = DISABLED 
GO
USE [DB_Employee_Work_Hours]
GO
/****** Object:  Table [dbo].[EmpHours]    Script Date: 18/06/2018 10:59:15 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EmpHours](
	[EmpHoursID] [int] IDENTITY(1,1) NOT NULL,
	[WorkDate] [date] NOT NULL,
	[Hours] [decimal](18, 0) NOT NULL,
	[EmpID] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[EmpHoursID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Employees]    Script Date: 18/06/2018 10:59:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Employees](
	[EmpID] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [varchar](50) NOT NULL,
	[LastName] [varchar](50) NOT NULL,
	[Email] [varchar](50) NULL,
	[DOB] [date] NOT NULL,
	[Phone] [varchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[EmpID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[EmpHours] ON 

INSERT [dbo].[EmpHours] ([EmpHoursID], [WorkDate], [Hours], [EmpID]) VALUES (1, CAST(N'2018-04-01' AS Date), CAST(8 AS Decimal(18, 0)), 1)
INSERT [dbo].[EmpHours] ([EmpHoursID], [WorkDate], [Hours], [EmpID]) VALUES (2, CAST(N'2018-04-01' AS Date), CAST(8 AS Decimal(18, 0)), 2)
INSERT [dbo].[EmpHours] ([EmpHoursID], [WorkDate], [Hours], [EmpID]) VALUES (3, CAST(N'2018-04-02' AS Date), CAST(8 AS Decimal(18, 0)), 3)
INSERT [dbo].[EmpHours] ([EmpHoursID], [WorkDate], [Hours], [EmpID]) VALUES (4, CAST(N'2018-04-04' AS Date), CAST(6 AS Decimal(18, 0)), 4)
INSERT [dbo].[EmpHours] ([EmpHoursID], [WorkDate], [Hours], [EmpID]) VALUES (5, CAST(N'2018-04-25' AS Date), CAST(8 AS Decimal(18, 0)), 5)
INSERT [dbo].[EmpHours] ([EmpHoursID], [WorkDate], [Hours], [EmpID]) VALUES (6, CAST(N'2018-05-11' AS Date), CAST(7 AS Decimal(18, 0)), 6)
INSERT [dbo].[EmpHours] ([EmpHoursID], [WorkDate], [Hours], [EmpID]) VALUES (7, CAST(N'2018-05-26' AS Date), CAST(8 AS Decimal(18, 0)), 7)
INSERT [dbo].[EmpHours] ([EmpHoursID], [WorkDate], [Hours], [EmpID]) VALUES (11, CAST(N'2018-05-05' AS Date), CAST(8 AS Decimal(18, 0)), 1)
INSERT [dbo].[EmpHours] ([EmpHoursID], [WorkDate], [Hours], [EmpID]) VALUES (12, CAST(N'2018-05-05' AS Date), CAST(8 AS Decimal(18, 0)), 1)
INSERT [dbo].[EmpHours] ([EmpHoursID], [WorkDate], [Hours], [EmpID]) VALUES (13, CAST(N'2018-04-06' AS Date), CAST(7 AS Decimal(18, 0)), 3)
INSERT [dbo].[EmpHours] ([EmpHoursID], [WorkDate], [Hours], [EmpID]) VALUES (14, CAST(N'2017-12-08' AS Date), CAST(8 AS Decimal(18, 0)), 1)
INSERT [dbo].[EmpHours] ([EmpHoursID], [WorkDate], [Hours], [EmpID]) VALUES (15, CAST(N'2018-05-15' AS Date), CAST(8 AS Decimal(18, 0)), 1)
INSERT [dbo].[EmpHours] ([EmpHoursID], [WorkDate], [Hours], [EmpID]) VALUES (16, CAST(N'2018-06-08' AS Date), CAST(8 AS Decimal(18, 0)), 1)
INSERT [dbo].[EmpHours] ([EmpHoursID], [WorkDate], [Hours], [EmpID]) VALUES (17, CAST(N'2018-05-05' AS Date), CAST(8 AS Decimal(18, 0)), 23)
INSERT [dbo].[EmpHours] ([EmpHoursID], [WorkDate], [Hours], [EmpID]) VALUES (18, CAST(N'2018-06-05' AS Date), CAST(7 AS Decimal(18, 0)), 23)
SET IDENTITY_INSERT [dbo].[EmpHours] OFF
SET IDENTITY_INSERT [dbo].[Employees] ON 

INSERT [dbo].[Employees] ([EmpID], [FirstName], [LastName], [Email], [DOB], [Phone]) VALUES (1, N'John', N'Smith', N'john.smith@gmail.com', CAST(N'1988-03-01' AS Date), N'9234 5678')
INSERT [dbo].[Employees] ([EmpID], [FirstName], [LastName], [Email], [DOB], [Phone]) VALUES (2, N'James', N'Bond', N'JamesBond@hotmail.com', CAST(N'1960-08-11' AS Date), N'6975 1235')
INSERT [dbo].[Employees] ([EmpID], [FirstName], [LastName], [Email], [DOB], [Phone]) VALUES (3, N'Jane', N'Doe', N'Jane_Doe225@gmail.com', CAST(N'1991-09-09' AS Date), N'8564 4578')
INSERT [dbo].[Employees] ([EmpID], [FirstName], [LastName], [Email], [DOB], [Phone]) VALUES (4, N'Marc', N'Jacobs', N'Marc_J123_@outlook.com', CAST(N'1965-12-01' AS Date), N'9234 7289')
INSERT [dbo].[Employees] ([EmpID], [FirstName], [LastName], [Email], [DOB], [Phone]) VALUES (5, N'Tim', N'Paul', N'tim-paul@yahoo.com', CAST(N'1978-05-25' AS Date), N'9426 8974')
INSERT [dbo].[Employees] ([EmpID], [FirstName], [LastName], [Email], [DOB], [Phone]) VALUES (6, N'Mary', N'Jane', N'MaryJane_123_@aol.com', CAST(N'1994-11-01' AS Date), N'9457 6317')
INSERT [dbo].[Employees] ([EmpID], [FirstName], [LastName], [Email], [DOB], [Phone]) VALUES (7, N'James', N'Dean', N'james.dean@gmail.com', CAST(N'1978-12-15' AS Date), N'9874 8997')
INSERT [dbo].[Employees] ([EmpID], [FirstName], [LastName], [Email], [DOB], [Phone]) VALUES (8, N'James', N'Franco', N'jamesfranco@gmail.com', CAST(N'1977-05-07' AS Date), N'9654 2364')
INSERT [dbo].[Employees] ([EmpID], [FirstName], [LastName], [Email], [DOB], [Phone]) VALUES (9, N'James', N'Francos', N'jamesfranco@gmail.com', CAST(N'1977-05-07' AS Date), N'9654 2364')
INSERT [dbo].[Employees] ([EmpID], [FirstName], [LastName], [Email], [DOB], [Phone]) VALUES (10, N'James', N'Ford', N'james.Ford@gmail.com', CAST(N'1987-05-18' AS Date), N'9874 3215')
INSERT [dbo].[Employees] ([EmpID], [FirstName], [LastName], [Email], [DOB], [Phone]) VALUES (11, N'Linda', N'Hamilton', N'linda.hamilton125@hotmail.com', CAST(N'1970-08-08' AS Date), N'9874 1236')
INSERT [dbo].[Employees] ([EmpID], [FirstName], [LastName], [Email], [DOB], [Phone]) VALUES (18, N'Bianka', N'Korban', N'bianka.korban@gmail.com', CAST(N'1991-08-08' AS Date), N'9874 5554')
INSERT [dbo].[Employees] ([EmpID], [FirstName], [LastName], [Email], [DOB], [Phone]) VALUES (19, N'Mary', N'Jane', N'maryJabe@gmail.com', CAST(N'2000-09-09' AS Date), N'7456 1366')
INSERT [dbo].[Employees] ([EmpID], [FirstName], [LastName], [Email], [DOB], [Phone]) VALUES (20, N'Mary', N'Jones', N'maryJones@hotmail.com', CAST(N'1991-08-08' AS Date), N'4756 9874')
INSERT [dbo].[Employees] ([EmpID], [FirstName], [LastName], [Email], [DOB], [Phone]) VALUES (21, N'Mark', N'Hammond', N'MarkHammond125@gmail.com', CAST(N'1900-01-01' AS Date), N'')
INSERT [dbo].[Employees] ([EmpID], [FirstName], [LastName], [Email], [DOB], [Phone]) VALUES (22, N'Mark', N'Twain', N'mark_Twain@gmail.com', CAST(N'1965-08-08' AS Date), N'2863 5314')
INSERT [dbo].[Employees] ([EmpID], [FirstName], [LastName], [Email], [DOB], [Phone]) VALUES (23, N'Marymm', N'Jane', N'maryJane@gmail.com', CAST(N'2000-05-05' AS Date), N'8888 8888')
SET IDENTITY_INSERT [dbo].[Employees] OFF
ALTER TABLE [dbo].[EmpHours]  WITH CHECK ADD  CONSTRAINT [FK_EmpID] FOREIGN KEY([EmpID])
REFERENCES [dbo].[Employees] ([EmpID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[EmpHours] CHECK CONSTRAINT [FK_EmpID]
GO
/****** Object:  StoredProcedure [dbo].[sp_EmpHours_InsertHours]    Script Date: 18/06/2018 10:59:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_EmpHours_InsertHours]
     
	 @workDate date,
	 @hours decimal,
	 @empID int
	
AS
BEGIN
	INSERT INTO EmpHours (WorkDate, Hours, EmpID)
	VALUES (@workDate, @hours, @empID)
END

GO
/****** Object:  StoredProcedure [dbo].[sp_EmpHours_SelectEmployeeWorkDateHoursByEmpID]    Script Date: 18/06/2018 10:59:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_EmpHours_SelectEmployeeWorkDateHoursByEmpID]


	@empID int

AS
BEGIN
	SELECT EmpID, Hours, WorkDate
	FROM EmpHours
	Where EmpID = @empID
	
END

GO
/****** Object:  StoredProcedure [dbo].[sp_EmpHours_SelectTotalHoursWorkedByEmployee]    Script Date: 18/06/2018 10:59:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_EmpHours_SelectTotalHoursWorkedByEmployee]

	@empID int

AS
BEGIN
	Select Sum(Hours) 
	From EmpHours
	Where EmpID = @empID
END

GO
/****** Object:  StoredProcedure [dbo].[sp_EmpHours_SelectTotalHoursWorkedByEmployeeSearchByID]    Script Date: 18/06/2018 10:59:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_EmpHours_SelectTotalHoursWorkedByEmployeeSearchByID]

	@empID int

AS
BEGIN
	Select Sum(Hours) as "TotalHoursWorked"
	From EmpHours
	Where EmpID = @empID
END
GO
/****** Object:  StoredProcedure [dbo].[sp_Employees_DeleteEmployee]    Script Date: 18/06/2018 10:59:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_Employees_DeleteEmployee]
	@empID int


AS
BEGIN
	Delete From Employees
	Where EmpID = @empID
END

GO
/****** Object:  StoredProcedure [dbo].[sp_Employees_InsertAnEmployee]    Script Date: 18/06/2018 10:59:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_Employees_InsertAnEmployee]

	@firstName varchar(50),
	@lastName varchar (50),
	@email varchar (50),
	@dob date,
	@phone varchar (20)

AS
BEGIN

	INSERT INTO Employees 
	(FirstName, LastName, Email, DOB, Phone)
	VALUES (@firstName, @lastName, @email, @dob, @phone)

END

GO
/****** Object:  StoredProcedure [dbo].[sp_Employees_SelectAllEmployees]    Script Date: 18/06/2018 10:59:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_Employees_SelectAllEmployees]


AS
BEGIN
	SELECT *
	FROM Employees
END

GO
/****** Object:  StoredProcedure [dbo].[sp_Employees_SelectAnEmployeeByEmail]    Script Date: 18/06/2018 10:59:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_Employees_SelectAnEmployeeByEmail]

@email varchar (50)

AS
BEGIN
	SELECT *
	FROM Employees
	WHERE Email  = @email
END

GO
/****** Object:  StoredProcedure [dbo].[sp_Employees_SelectAnEmployeeByID]    Script Date: 18/06/2018 10:59:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_Employees_SelectAnEmployeeByID]

@empID int

AS
BEGIN
	SELECT *
	FROM Employees
	WHERE EmpID = @empID
END

GO
/****** Object:  StoredProcedure [dbo].[sp_Employees_UpdateAnEmployee]    Script Date: 18/06/2018 10:59:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_Employees_UpdateAnEmployee]

	@empID int,
	@firstName varchar(50),
	@lastName varchar (50),
	@email varchar (50),
	@dob date,
	@phone varchar (20)


AS
BEGIN

	UPDATE Employees 
	SET FirstName = @firstName, LastName = @lastName, Email = @email, DOB = @dob, Phone = @phone
	Where EmpID = @empID

END

GO
USE [master]
GO
ALTER DATABASE [DB_Employee_Work_Hours] SET  READ_WRITE 
GO
