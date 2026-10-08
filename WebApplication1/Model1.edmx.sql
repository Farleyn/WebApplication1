
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 10/08/2026 12:26:23
-- Generated from EDMX file: C:\Users\opilane\source\repos\WebApplication1\WebApplication1\Model1.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [kommiTellimused];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------


-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------


-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'tootajaSet'
CREATE TABLE [dbo].[tootajaSet] (
    [tootajaID] int IDENTITY(1,1) NOT NULL,
    [nimiPerenimi] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'ametSet'
CREATE TABLE [dbo].[ametSet] (
    [ametID] int IDENTITY(1,1) NOT NULL,
    [ametNimetus] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'ametiTootajaSet'
CREATE TABLE [dbo].[ametiTootajaSet] (
    [ametitootajadID] int IDENTITY(1,1) NOT NULL,
    [tootaja_tootajaID] int  NOT NULL,
    [amet_ametID] int  NOT NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [tootajaID] in table 'tootajaSet'
ALTER TABLE [dbo].[tootajaSet]
ADD CONSTRAINT [PK_tootajaSet]
    PRIMARY KEY CLUSTERED ([tootajaID] ASC);
GO

-- Creating primary key on [ametID] in table 'ametSet'
ALTER TABLE [dbo].[ametSet]
ADD CONSTRAINT [PK_ametSet]
    PRIMARY KEY CLUSTERED ([ametID] ASC);
GO

-- Creating primary key on [ametitootajadID] in table 'ametiTootajaSet'
ALTER TABLE [dbo].[ametiTootajaSet]
ADD CONSTRAINT [PK_ametiTootajaSet]
    PRIMARY KEY CLUSTERED ([ametitootajadID] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [tootaja_tootajaID] in table 'ametiTootajaSet'
ALTER TABLE [dbo].[ametiTootajaSet]
ADD CONSTRAINT [FK_tootajaametiTootaja]
    FOREIGN KEY ([tootaja_tootajaID])
    REFERENCES [dbo].[tootajaSet]
        ([tootajaID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_tootajaametiTootaja'
CREATE INDEX [IX_FK_tootajaametiTootaja]
ON [dbo].[ametiTootajaSet]
    ([tootaja_tootajaID]);
GO

-- Creating foreign key on [amet_ametID] in table 'ametiTootajaSet'
ALTER TABLE [dbo].[ametiTootajaSet]
ADD CONSTRAINT [FK_ametametiTootaja]
    FOREIGN KEY ([amet_ametID])
    REFERENCES [dbo].[ametSet]
        ([ametID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_ametametiTootaja'
CREATE INDEX [IX_FK_ametametiTootaja]
ON [dbo].[ametiTootajaSet]
    ([amet_ametID]);
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------