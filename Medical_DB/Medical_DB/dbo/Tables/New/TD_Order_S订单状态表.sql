CREATE TABLE [dbo].[TD_Order_S]--订单类型状态表
(
	[Id] INT NOT NULL PRIMARY KEY IDENTITY, 
    [OrderId] INT NOT NULL,
	[Type] INT NOT NULL, 
    [Status] INT NOT NULL, 
    [ServiceFee] DECIMAL(4, 2) NOT NULL, 
    [TotalFee] as ServiceFee+ExpressAddress, 
    [IsExpress] BIT NOT NULL, 
    [ExpressAddress] NVARCHAR(200) NULL, 
    [InvoiceHeader] NVARCHAR(100) NULL, 
    [ExpressFee] DECIMAL(4, 2) NULL,
	[CreatorUserId] BIGINT NOT NULL, 
    [LastModifierUserId] BIGINT NOT NULL, 
    [CreationTime] DATETIME NOT NULL DEFAULT getdate(), 
    [LastModificationTime] DATETIME NOT NULL DEFAULT getdate(), 
    foreign key (OrderId) references TD_Order_H(Id) on delete cascade on update cascade
)

GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'订单表外键',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'TD_Order_S',
    @level2type = N'COLUMN',
    @level2name = N'OrderId'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'1免费订单2加号订单3陪诊订单3送药订单',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'TD_Order_S',
    @level2type = N'COLUMN',
    @level2name = N'Type'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'订单状态 1未支付2支付完成、已下单3挂号成功4已就诊5订单取消6医院、医生停诊7发票已寄，8挂号失败',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'TD_Order_S',
    @level2type = N'COLUMN',
    @level2name = N'Status'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'加号费用、陪诊费用、送药费用',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'TD_Order_S',
    @level2type = N'COLUMN',
    @level2name = N'ServiceFee'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'需要支付的总金额',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'TD_Order_S',
    @level2type = N'COLUMN',
    @level2name = N'TotalFee'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'是否需要快递',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'TD_Order_S',
    @level2type = N'COLUMN',
    @level2name = N'IsExpress'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'快递地址、送药地址',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'TD_Order_S',
    @level2type = N'COLUMN',
    @level2name = N'ExpressAddress'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'发票抬头',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'TD_Order_S',
    @level2type = N'COLUMN',
    @level2name = N'InvoiceHeader'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'快递费用',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'TD_Order_S',
    @level2type = N'COLUMN',
    @level2name = N'ExpressFee'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'创建人ID',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'TD_Order_S',
    @level2type = N'COLUMN',
    @level2name = N'CreatorUserId'
GO

EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'最终修改人ID',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'TD_Order_S',
    @level2type = N'COLUMN',
    @level2name = N'LastModifierUserId'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'创建时间',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'TD_Order_S',
    @level2type = N'COLUMN',
    @level2name = N'CreationTime'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'最终修改时间',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'TD_Order_S',
    @level2type = N'COLUMN',
    @level2name = N'LastModificationTime'