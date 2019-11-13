CREATE DATABASE ckan
GO
CREATE LOGIN ckan WITH PASSWORD='Ckan1234'
GO
USE ckan
GO
CREATE USER ckan FOR LOGIN ckan
GO
EXEC sp_addrolemember N'db_datawriter', N'ckan'
GO
EXEC sp_addrolemember N'db_datareader', N'ckan'
GO
CREATE TABLE test_table(
	id INT IDENTITY(1,1) PRIMARY KEY,
	description VARCHAR(200) NOT NULL
);

GO

INSERT INTO test_table(description)
VALUES
('sqlserver_desc1'),
('sqlserver_desc2'),
('sqlserver_desc3'),
('sqlserver_desc4'),
('sqlserver_desc5'),
('sqlserver_desc6');
