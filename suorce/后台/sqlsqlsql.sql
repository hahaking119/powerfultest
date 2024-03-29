USE [master]
GO

/****** Object:  Database [B2BTI_DB]    Script Date: 05/17/2013 17:16:42 ******/
CREATE DATABASE [B2BTI_DB] ON  PRIMARY 
( NAME = N'B2BTI_DB', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10.MSSQLSERVER\MSSQL\DATA\B2BTI_DB.mdf' , SIZE = 2304KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'B2BTI_DB_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10.MSSQLSERVER\MSSQL\DATA\B2BTI_DB_log.LDF' , SIZE = 832KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO

ALTER DATABASE [B2BTI_DB] SET COMPATIBILITY_LEVEL = 100
GO

IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [B2BTI_DB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO

ALTER DATABASE [B2BTI_DB] SET ANSI_NULL_DEFAULT OFF 
GO

ALTER DATABASE [B2BTI_DB] SET ANSI_NULLS OFF 
GO

ALTER DATABASE [B2BTI_DB] SET ANSI_PADDING OFF 
GO

ALTER DATABASE [B2BTI_DB] SET ANSI_WARNINGS OFF 
GO

ALTER DATABASE [B2BTI_DB] SET ARITHABORT OFF 
GO

ALTER DATABASE [B2BTI_DB] SET AUTO_CLOSE OFF 
GO

ALTER DATABASE [B2BTI_DB] SET AUTO_CREATE_STATISTICS ON 
GO

ALTER DATABASE [B2BTI_DB] SET AUTO_SHRINK OFF 
GO

ALTER DATABASE [B2BTI_DB] SET AUTO_UPDATE_STATISTICS ON 
GO

ALTER DATABASE [B2BTI_DB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO

ALTER DATABASE [B2BTI_DB] SET CURSOR_DEFAULT  GLOBAL 
GO

ALTER DATABASE [B2BTI_DB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO

ALTER DATABASE [B2BTI_DB] SET NUMERIC_ROUNDABORT OFF 
GO

ALTER DATABASE [B2BTI_DB] SET QUOTED_IDENTIFIER OFF 
GO

ALTER DATABASE [B2BTI_DB] SET RECURSIVE_TRIGGERS OFF 
GO

ALTER DATABASE [B2BTI_DB] SET  ENABLE_BROKER 
GO

ALTER DATABASE [B2BTI_DB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO

ALTER DATABASE [B2BTI_DB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO

ALTER DATABASE [B2BTI_DB] SET TRUSTWORTHY OFF 
GO

ALTER DATABASE [B2BTI_DB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO

ALTER DATABASE [B2BTI_DB] SET PARAMETERIZATION SIMPLE 
GO

ALTER DATABASE [B2BTI_DB] SET READ_COMMITTED_SNAPSHOT OFF 
GO

ALTER DATABASE [B2BTI_DB] SET HONOR_BROKER_PRIORITY OFF 
GO

ALTER DATABASE [B2BTI_DB] SET  READ_WRITE 
GO

ALTER DATABASE [B2BTI_DB] SET RECOVERY FULL 
GO

ALTER DATABASE [B2BTI_DB] SET  MULTI_USER 
GO

ALTER DATABASE [B2BTI_DB] SET PAGE_VERIFY CHECKSUM  
GO

ALTER DATABASE [B2BTI_DB] SET DB_CHAINING OFF 
GO

