CREATE TABLE [dbo].[TD_Order_M]--订单详细表 子表
(
	[Id] INT NOT NULL PRIMARY KEY IDENTITY, 
    [OrderId] INT NOT NULL,
	[OrderCode] NVARCHAR(50) NOT NULL, 
    [Name] NVARCHAR(20) NOT NULL, 
    [IdNumber] NVARCHAR(20) NOT NULL, 
    [IdType] INT NOT NULL, 
    [Mobile] NVARCHAR(20) NOT NULL, 
    [DoctorName] NVARCHAR(10) NOT NULL, 
    [DepartMentName] NVARCHAR(10) NOT NULL, 
    [HospitalName] NVARCHAR(40) NOT NULL, 
    [VisitDate] NVARCHAR(10) NOT NULL, 
    [TimeBucket] INT NOT NULL, 
    [VisitType] INT NOT NULL, 
    [RegistrFee] DECIMAL(4, 2) NOT NULL, 
    [IsPlus] BIT NOT NULL, 
    [PlusFee] DECIMAL(4, 2) NOT NULL, 
    [IsPre] BIT NOT NULL, 
    [HealthNumber] NVARCHAR(20) NULL, 
    [ClinicCardNumber] NVARCHAR(20) NULL, 
    [Imei] NVARCHAR(50) NOT NULL, 
    foreign key (OrderId) references TD_Order_H(Id) on delete cascade on update cascade
)

GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'主表ID',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'TD_Order_M',
    @level2type = N'COLUMN',
    @level2name = N'OrderId'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'订单号--暂留 以后通过我们自带方式去生成订单号',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'TD_Order_M',
    @level2type = N'COLUMN',
    @level2name = N'OrderCode'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'就诊人姓名',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'TD_Order_M',
    @level2type = N'COLUMN',
    @level2name = N'Name'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'证件号码',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'TD_Order_M',
    @level2type = N'COLUMN',
    @level2name = N'IdNumber'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'证件类型 1身份证2护照',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'TD_Order_M',
    @level2type = N'COLUMN',
    @level2name = N'IdType'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'手机号码',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'TD_Order_M',
    @level2type = N'COLUMN',
    @level2name = N'Mobile'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'医生名称',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'TD_Order_M',
    @level2type = N'COLUMN',
    @level2name = N'DoctorName'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'科室名称',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'TD_Order_M',
    @level2type = N'COLUMN',
    @level2name = N'DepartMentName'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'医院名称',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'TD_Order_M',
    @level2type = N'COLUMN',
    @level2name = N'HospitalName'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'就诊日期 字符串 2016-11-11',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'TD_Order_M',
    @level2type = N'COLUMN',
    @level2name = N'VisitDate'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'时间段 1上午2下午',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'TD_Order_M',
    @level2type = N'COLUMN',
    @level2name = N'TimeBucket'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'门诊类型',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'TD_Order_M',
    @level2type = N'COLUMN',
    @level2name = N'VisitType'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'医院挂号费',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'TD_Order_M',
    @level2type = N'COLUMN',
    @level2name = N'RegistrFee'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'是否加号  bool',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'TD_Order_M',
    @level2type = N'COLUMN',
    @level2name = N'IsPlus'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'医院加号费用',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'TD_Order_M',
    @level2type = N'COLUMN',
    @level2name = N'PlusFee'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'是否初复诊 ',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'TD_Order_M',
    @level2type = N'COLUMN',
    @level2name = N'IsPre'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'医保卡号',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'TD_Order_M',
    @level2type = N'COLUMN',
    @level2name = N'HealthNumber'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'就诊磁卡号',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'TD_Order_M',
    @level2type = N'COLUMN',
    @level2name = N'ClinicCardNumber'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'设备IMEI',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'TD_Order_M',
    @level2type = N'COLUMN',
    @level2name = N'Imei'