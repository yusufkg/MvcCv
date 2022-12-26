
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 10/06/2021 17:39:40
-- Generated from EDMX file: D:\yusuf\web tasarım\MvcCv\MvcCv\Models\Entity\Model1.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [DbCv];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------


-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[TblAdmin]', 'U') IS NOT NULL
    DROP TABLE [dbo].[TblAdmin];
GO
IF OBJECT_ID(N'[dbo].[TblDeneyimlerim]', 'U') IS NOT NULL
    DROP TABLE [dbo].[TblDeneyimlerim];
GO
IF OBJECT_ID(N'[dbo].[TblEgitimlerim]', 'U') IS NOT NULL
    DROP TABLE [dbo].[TblEgitimlerim];
GO
IF OBJECT_ID(N'[dbo].[TblHakkimda]', 'U') IS NOT NULL
    DROP TABLE [dbo].[TblHakkimda];
GO
IF OBJECT_ID(N'[dbo].[TblHobilerim]', 'U') IS NOT NULL
    DROP TABLE [dbo].[TblHobilerim];
GO
IF OBJECT_ID(N'[dbo].[Tbliletisim]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Tbliletisim];
GO
IF OBJECT_ID(N'[dbo].[TblSertifikalarim]', 'U') IS NOT NULL
    DROP TABLE [dbo].[TblSertifikalarim];
GO
IF OBJECT_ID(N'[dbo].[TblSosyalMedya]', 'U') IS NOT NULL
    DROP TABLE [dbo].[TblSosyalMedya];
GO
IF OBJECT_ID(N'[dbo].[TblYeteneklerim]', 'U') IS NOT NULL
    DROP TABLE [dbo].[TblYeteneklerim];
GO

-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'TblAdmin'
CREATE TABLE [dbo].[TblAdmin] (
    [ID] int IDENTITY(1,1) NOT NULL,
    [KullaniciAdi] varchar(20)  NULL,
    [Sifre] varchar(20)  NULL
);
GO

-- Creating table 'TblDeneyimlerim'
CREATE TABLE [dbo].[TblDeneyimlerim] (
    [ID] int IDENTITY(1,1) NOT NULL,
    [Baslik] varchar(100)  NULL,
    [AltBaslik] varchar(100)  NULL,
    [Aciklama] varchar(max)  NULL,
    [Tarih] varchar(100)  NULL
);
GO

-- Creating table 'TblEgitimlerim'
CREATE TABLE [dbo].[TblEgitimlerim] (
    [ID] int IDENTITY(1,1) NOT NULL,
    [Baslik] varchar(100)  NULL,
    [AltBaslik1] varchar(100)  NULL,
    [AltBaslik2] varchar(100)  NULL,
    [GNO] varchar(10)  NULL,
    [Tarih] varchar(100)  NULL
);
GO

-- Creating table 'TblHakkimda'
CREATE TABLE [dbo].[TblHakkimda] (
    [ID] int IDENTITY(1,1) NOT NULL,
    [Ad] varchar(30)  NULL,
    [Soyad] varchar(30)  NULL,
    [Adres] varchar(100)  NULL,
    [Telefon] varchar(20)  NULL,
    [Mail] varchar(50)  NULL,
    [Aciklama] varchar(max)  NULL,
    [Resim] varchar(100)  NULL
);
GO

-- Creating table 'TblHobilerim'
CREATE TABLE [dbo].[TblHobilerim] (
    [ID] int IDENTITY(1,1) NOT NULL,
    [Aciklama1] varchar(500)  NULL,
    [Aciklama2] varchar(500)  NULL
);
GO

-- Creating table 'Tbliletisim'
CREATE TABLE [dbo].[Tbliletisim] (
    [ID] int IDENTITY(1,1) NOT NULL,
    [Adsoyad] varchar(100)  NULL,
    [Mail] varchar(50)  NULL,
    [Konu] varchar(100)  NULL,
    [Mesaj] varchar(1000)  NULL,
    [Tarih] datetime  NULL
);
GO

-- Creating table 'TblSertifikalarim'
CREATE TABLE [dbo].[TblSertifikalarim] (
    [ID] int IDENTITY(1,1) NOT NULL,
    [Aciklama] varchar(250)  NULL,
    [Tarih] varchar(30)  NULL
);
GO

-- Creating table 'TblYeteneklerim'
CREATE TABLE [dbo].[TblYeteneklerim] (
    [ID] int IDENTITY(1,1) NOT NULL,
    [Yetenek] varchar(100)  NULL,
    [Oran] tinyint  NULL
);
GO

-- Creating table 'TblSosyalMedya'
CREATE TABLE [dbo].[TblSosyalMedya] (
    [ID] int IDENTITY(1,1) NOT NULL,
    [Ad] varchar(30)  NULL,
    [Link] varchar(50)  NULL,
    [ikon] varchar(30)  NULL,
    [Durum] bit  NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [ID] in table 'TblAdmin'
ALTER TABLE [dbo].[TblAdmin]
ADD CONSTRAINT [PK_TblAdmin]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [ID] in table 'TblDeneyimlerim'
ALTER TABLE [dbo].[TblDeneyimlerim]
ADD CONSTRAINT [PK_TblDeneyimlerim]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [ID] in table 'TblEgitimlerim'
ALTER TABLE [dbo].[TblEgitimlerim]
ADD CONSTRAINT [PK_TblEgitimlerim]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [ID] in table 'TblHakkimda'
ALTER TABLE [dbo].[TblHakkimda]
ADD CONSTRAINT [PK_TblHakkimda]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [ID] in table 'TblHobilerim'
ALTER TABLE [dbo].[TblHobilerim]
ADD CONSTRAINT [PK_TblHobilerim]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [ID] in table 'Tbliletisim'
ALTER TABLE [dbo].[Tbliletisim]
ADD CONSTRAINT [PK_Tbliletisim]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [ID] in table 'TblSertifikalarim'
ALTER TABLE [dbo].[TblSertifikalarim]
ADD CONSTRAINT [PK_TblSertifikalarim]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [ID] in table 'TblYeteneklerim'
ALTER TABLE [dbo].[TblYeteneklerim]
ADD CONSTRAINT [PK_TblYeteneklerim]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [ID] in table 'TblSosyalMedya'
ALTER TABLE [dbo].[TblSosyalMedya]
ADD CONSTRAINT [PK_TblSosyalMedya]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------