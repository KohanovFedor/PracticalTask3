USE [MyDB]
GO

DECLARE @path varchar(255);
DECLARE @d DATETIME = GETDATE(); 
DECLARE @dchar varchar(10);
DECLARE @tchar varchar(10);

SELECT @dchar= FORMAT(@d, '%d-%M-%y');
SELECT @tchar = FORMAT(@d, '%h-%m-%s');
SELECT @path = 'C:\SQLServerBackups\MyDB_'+@dchar+'_'+@tchar+'.bak';

BACKUP DATABASE [MyDB]
TO DISK=@path
GO