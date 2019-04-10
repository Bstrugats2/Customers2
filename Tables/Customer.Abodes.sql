CREATE TABLE [Customer].[Abodes]
(
[Abode_ID] [int] NOT NULL IDENTITY(1, 1),
[Person_id] [int] NULL,
[Address_id] [int] NULL,
[TypeOfAddress] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Start_date] [datetime] NULL,
[End_date] [datetime] NULL,
[ModifiedDate] [datetime] NOT NULL CONSTRAINT [DF__Abodes__Modified__60A75C0F] DEFAULT (getdate())
) ON [PRIMARY]
GO
ALTER TABLE [Customer].[Abodes] ADD CONSTRAINT [PK__Abodes__2E2462D80458F5E7] PRIMARY KEY CLUSTERED  ([Abode_ID]) ON [PRIMARY]
GO
ALTER TABLE [Customer].[Abodes] ADD CONSTRAINT [FK__Abodes__Address___5EBF139D] FOREIGN KEY ([Address_id]) REFERENCES [Customer].[Address] ([AddressID])
GO
ALTER TABLE [Customer].[Abodes] ADD CONSTRAINT [FK__Abodes__TypeOfAd__5FB337D6] FOREIGN KEY ([TypeOfAddress]) REFERENCES [Customer].[AddressType] ([TypeOfAddress])
GO
ALTER TABLE [Customer].[Abodes] ADD CONSTRAINT [FK__Abodes__Person_i__5DCAEF64] FOREIGN KEY ([Person_id]) REFERENCES [Customer].[Person] ([person_ID])
GO
