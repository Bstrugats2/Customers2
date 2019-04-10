CREATE TABLE [Customer].[Addresses]
(
[AddressID] [int] NOT NULL IDENTITY(1, 1),
[AddressLine1] [nvarchar] (60) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[AddressLine2] [nvarchar] (60) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[City] [nvarchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[County] [nvarchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PostCode] [nvarchar] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ModifiedDate] [datetime] NOT NULL CONSTRAINT [DF__Addresses__Modif__5629CD9C] DEFAULT (getdate())
) ON [PRIMARY]
GO
ALTER TABLE [Customer].[Addresses] ADD CONSTRAINT [PK__Addresse__091C2A1BAF29A5AB] PRIMARY KEY CLUSTERED  ([AddressID]) ON [PRIMARY]
GO
