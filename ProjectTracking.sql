USE [ProjectTracking]
GO
/****** Object:  Table [dbo].[Project_Logs]    Script Date: 24.11.2019 20:29:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Project_Logs](
	[pl_ID] [int] IDENTITY(1,1) NOT NULL,
	[p_ID] [int] NOT NULL,
	[pl_Log] [nvarchar](max) NOT NULL,
	[pl_Log_Date] [datetime] NOT NULL,
	[pl_Name] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_Project_Log] PRIMARY KEY CLUSTERED 
(
	[pl_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Project_Sections]    Script Date: 24.11.2019 20:29:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Project_Sections](
	[ps_ID] [int] IDENTITY(1,1) NOT NULL,
	[p_ID] [int] NOT NULL,
	[ps_Name] [nvarchar](200) NULL,
 CONSTRAINT [PK_Project_Sections] PRIMARY KEY CLUSTERED 
(
	[ps_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Project_Tasks]    Script Date: 24.11.2019 20:29:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Project_Tasks](
	[t_ID] [int] IDENTITY(1,1) NOT NULL,
	[ps_ID] [int] NOT NULL,
	[t_Name] [nvarchar](200) NOT NULL,
	[t_Assign] [nvarchar](200) NOT NULL,
	[t_Due_Date] [date] NOT NULL,
 CONSTRAINT [PK_Project_Tasks] PRIMARY KEY CLUSTERED 
(
	[t_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Projects]    Script Date: 24.11.2019 20:29:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Projects](
	[p_ID] [int] IDENTITY(1,1) NOT NULL,
	[team_ID] [int] NOT NULL,
	[p_Name] [nvarchar](200) NOT NULL,
	[p_Template] [nvarchar](100) NULL,
 CONSTRAINT [PK_Project] PRIMARY KEY CLUSTERED 
(
	[p_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Team_Users]    Script Date: 24.11.2019 20:29:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Team_Users](
	[tu_ID] [int] IDENTITY(1,1) NOT NULL,
	[u_ID] [int] NOT NULL,
	[team_ID] [int] NOT NULL,
 CONSTRAINT [PK_Team_Users] PRIMARY KEY CLUSTERED 
(
	[tu_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Teams]    Script Date: 24.11.2019 20:29:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Teams](
	[team_ID] [int] IDENTITY(1,1) NOT NULL,
	[u_ID] [int] NOT NULL,
	[team_Name] [nvarchar](200) NOT NULL,
 CONSTRAINT [PK_Teams] PRIMARY KEY CLUSTERED 
(
	[team_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User_Projects]    Script Date: 24.11.2019 20:29:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User_Projects](
	[up_ID] [int] IDENTITY(1,1) NOT NULL,
	[u_ID] [int] NOT NULL,
	[p_ID] [int] NOT NULL,
 CONSTRAINT [PK_User_Projects] PRIMARY KEY CLUSTERED 
(
	[up_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User_Tasks]    Script Date: 24.11.2019 20:29:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User_Tasks](
	[ut_ID] [int] IDENTITY(1,1) NOT NULL,
	[u_ID] [int] NOT NULL,
	[t_ID] [int] NOT NULL,
 CONSTRAINT [PK_User_Tasks] PRIMARY KEY CLUSTERED 
(
	[ut_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 24.11.2019 20:29:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[u_ID] [int] IDENTITY(1,1) NOT NULL,
	[u_Full_Name] [nvarchar](200) NOT NULL,
	[u_Email] [nvarchar](150) NOT NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[u_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Project_Logs]  WITH CHECK ADD FOREIGN KEY([p_ID])
REFERENCES [dbo].[Projects] ([p_ID])
GO
ALTER TABLE [dbo].[Project_Sections]  WITH CHECK ADD FOREIGN KEY([p_ID])
REFERENCES [dbo].[Projects] ([p_ID])
GO
ALTER TABLE [dbo].[Project_Tasks]  WITH CHECK ADD FOREIGN KEY([ps_ID])
REFERENCES [dbo].[Project_Sections] ([ps_ID])
GO
ALTER TABLE [dbo].[Projects]  WITH CHECK ADD FOREIGN KEY([team_ID])
REFERENCES [dbo].[Teams] ([team_ID])
GO
ALTER TABLE [dbo].[Team_Users]  WITH CHECK ADD FOREIGN KEY([team_ID])
REFERENCES [dbo].[Teams] ([team_ID])
GO
ALTER TABLE [dbo].[Team_Users]  WITH CHECK ADD FOREIGN KEY([u_ID])
REFERENCES [dbo].[Users] ([u_ID])
GO
ALTER TABLE [dbo].[Teams]  WITH CHECK ADD FOREIGN KEY([u_ID])
REFERENCES [dbo].[Users] ([u_ID])
GO
ALTER TABLE [dbo].[User_Projects]  WITH CHECK ADD FOREIGN KEY([p_ID])
REFERENCES [dbo].[Projects] ([p_ID])
GO
ALTER TABLE [dbo].[User_Projects]  WITH CHECK ADD FOREIGN KEY([u_ID])
REFERENCES [dbo].[Users] ([u_ID])
GO
ALTER TABLE [dbo].[User_Tasks]  WITH CHECK ADD FOREIGN KEY([t_ID])
REFERENCES [dbo].[Project_Tasks] ([t_ID])
GO
ALTER TABLE [dbo].[User_Tasks]  WITH CHECK ADD FOREIGN KEY([u_ID])
REFERENCES [dbo].[Users] ([u_ID])
GO
