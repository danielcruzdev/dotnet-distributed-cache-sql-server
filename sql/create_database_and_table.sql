SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

USE master

DROP DATABASE IF EXISTS [DistributedCache]
CREATE DATABASE DistributedCache

GO

USE [DistributedCache]

GO

DROP TABLE IF EXISTS [dbo].[CacheStore]
CREATE TABLE [dbo].[CacheStore](
	[Id] [NVARCHAR](449) NOT NULL,
	[Value] [VARBINARY](MAX) NOT NULL,
	[ExpiresAtTime] [DATETIMEOFFSET](7) NOT NULL,
	[SlidingExpirationInSeconds] [BIGINT] NULL,
	[AbsoluteExpiration] [DATETIMEOFFSET](7) NULL,
	PRIMARY KEY CLUSTERED 
	([Id] ASC)
  WITH (PAD_INDEX = OFF, 
        STATISTICS_NORECOMPUTE = OFF, 
		IGNORE_DUP_KEY = OFF,
        ALLOW_ROW_LOCKS = ON, 
		ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO