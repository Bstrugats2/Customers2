CREATE TABLE [Customer].[AddressTypes]
(
[TypeOfAddress] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ModifiedDate] [datetime] NOT NULL CONSTRAINT [DF__AddressTy__Modif__59FA5E80] DEFAULT (getdate())
) ON [PRIMARY]
GO
ALTER TABLE [Customer].[AddressTypes] ADD CONSTRAINT [PK__AddressT__311BFB22DD44D87B] PRIMARY KEY CLUSTERED  ([TypeOfAddress]) ON [PRIMARY]
GO
