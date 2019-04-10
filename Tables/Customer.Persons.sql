CREATE TABLE [Customer].[Persons]
(
[person_ID] [int] NOT NULL IDENTITY(1, 1),
[Title] [nvarchar] (8) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FirstName] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MiddleName] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[LastName] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Suffix] [nvarchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ModifiedDate] [datetime] NOT NULL CONSTRAINT [DF__Persons__Modifie__52593CB8] DEFAULT (getdate())
) ON [PRIMARY]
GO
ALTER TABLE [Customer].[Persons] ADD CONSTRAINT [PK__Persons__543B4487FC3B5D25] PRIMARY KEY CLUSTERED  ([person_ID]) ON [PRIMARY]
GO
