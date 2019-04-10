CREATE TABLE [Customer].[PhoneTypes]
(
[TypeOfPhone] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ModifiedDate] [datetime] NOT NULL CONSTRAINT [DF__PhoneType__Modif__6383C8BA] DEFAULT (getdate())
) ON [PRIMARY]
GO
ALTER TABLE [Customer].[PhoneTypes] ADD CONSTRAINT [PK__PhoneTyp__6325A20D431BB842] PRIMARY KEY CLUSTERED  ([TypeOfPhone]) ON [PRIMARY]
GO
