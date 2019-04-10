CREATE TABLE [Customer].[Phones]
(
[Phone_ID] [int] NOT NULL IDENTITY(1, 1),
[Person_id] [int] NULL,
[TypeOfPhone] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DiallingNumber] [varchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Start_date] [datetime] NULL,
[End_date] [datetime] NULL,
[ModifiedDate] [datetime] NOT NULL CONSTRAINT [DF__Phones__Modified__693CA210] DEFAULT (getdate())
) ON [PRIMARY]
GO
ALTER TABLE [Customer].[Phones] ADD CONSTRAINT [PK__Phones__F8A6A36F8AFA44AE] PRIMARY KEY CLUSTERED  ([Phone_ID]) ON [PRIMARY]
GO
ALTER TABLE [Customer].[Phones] ADD CONSTRAINT [FK__Phones__Person_i__6754599E] FOREIGN KEY ([Person_id]) REFERENCES [Customer].[Person] ([person_ID])
GO
ALTER TABLE [Customer].[Phones] ADD CONSTRAINT [FK__Phones__TypeOfPh__68487DD7] FOREIGN KEY ([TypeOfPhone]) REFERENCES [Customer].[PhoneType] ([TypeOfPhone])
GO
