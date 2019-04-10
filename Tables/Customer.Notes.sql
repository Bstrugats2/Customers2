CREATE TABLE [Customer].[Notes]
(
[Note_id] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Note] [varchar] (8000) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[InsertionDate] [datetime] NOT NULL CONSTRAINT [DF__Notes__Insertion__6C190EBB] DEFAULT (getdate()),
[ModifiedDate] [datetime] NOT NULL CONSTRAINT [DF__Notes__ModifiedD__6D0D32F4] DEFAULT (getdate())
) ON [PRIMARY]
GO
ALTER TABLE [Customer].[Notes] ADD CONSTRAINT [PK__Notes__F94C528F48CBC0FA] PRIMARY KEY CLUSTERED  ([Note_id]) ON [PRIMARY]
GO
