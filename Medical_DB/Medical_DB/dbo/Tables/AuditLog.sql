CREATE TABLE [dbo].[AuditLog] (
    [Id]                 INT           IDENTITY (1, 1) NOT NULL,
    [CustomData]         TEXT          NULL,
    [ImpersonatorUserId] BIGINT        NOT NULL,
    [ServiceName]        NVARCHAR (50) NOT NULL,
    [MethodName]         NVARCHAR (50) NULL,
    [Parameters]         TEXT          NULL,
    [ExecutionTime]      DATETIME      NULL,
    [ExecutionName]      NVARCHAR (50) NULL,
    [Status]             INT           NULL,
    [CreationTime]       DATETIME      NULL,
    [CreatorUserId]      BIGINT        NULL,
    CONSTRAINT [PK__AuditLog__3214EC07EB36BD41] PRIMARY KEY CLUSTERED ([Id] ASC)
);


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'操作内容', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AuditLog', @level2type = N'COLUMN', @level2name = N'CustomData';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'操作人', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AuditLog', @level2type = N'COLUMN', @level2name = N'ImpersonatorUserId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'控制器名称', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AuditLog', @level2type = N'COLUMN', @level2name = N'ServiceName';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'方法名称', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AuditLog', @level2type = N'COLUMN', @level2name = N'MethodName';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'参数', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AuditLog', @level2type = N'COLUMN', @level2name = N'Parameters';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'操作', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AuditLog', @level2type = N'COLUMN', @level2name = N'ExecutionTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'操作名称', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AuditLog', @level2type = N'COLUMN', @level2name = N'ExecutionName';

