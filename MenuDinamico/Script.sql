
USE DB_MENU_DINAMICO

--CREACION DE LA TABLA MENU
CREATE TABLE SMAN_MENU
(
	IdMenu int PRIMARY KEY IDENTITY(1,1),
	ParenIdMenu int NULL,
	TitleMenu varchar(max) NULL,
	TitlePagina varchar(max) NULL,
	DescripcionMenu varchar(max) NULL,
	UrlMenu varchar(max) NULL,
	TooltipMenu varchar(max) NULL,
	OrderMenu int NULL,
	ActiveMenu bit NULL,
	DeleteMenu bit NULL,
	DateCreate datetime NULL,
	UsrAdded varchar(100) NULL,
	UsrLastUpdate varchar(100) NULL,
	UsrDelete varchar(100) NULL
)

SELECT *
FROM SMAN_MENU

INSERT INTO SMAN_MENU (ParenIdMenu,TitleMenu,TitlePagina,DescripcionMenu,UrlMenu,TooltipMenu,OrderMenu,ActiveMenu,DeleteMenu,
					   DateCreate,UsrAdded,UsrLastUpdate,UsrDelete)

					   VALUES (0,'Reportes','Reportes','Modulo de Reportes','frmReportes','Modulo Reportes',1,1,0,GETDATE(),'sa',GETDATE(),'')

--CREACION DE LA TABLA DE LOS ACCESOS DE LOS MENU

CREATE TABLE SMAN_MENU_ACCESO
(
	Id int PRIMARY KEY IDENTITY(1,1),
	IdMenu int,
	RolUsuario varchar(100) NOT NULL,
	IdUsuario int NOT NULL,
	OrderMenu int NOT NULL,
	ActivoMenu int NOT NULL,
	DeleteMenu int NOT NULL,
	DateCreate datetime NULL,
	DateUpdate datetime NULL,
	DateDelete datetime NULL,
	UserAdded varchar(100) NULL,
	UserLastUpdate varchar(100) NULL,
	UserDelete varchar(100) NULL
)

SELECT *
FROM SMAN_MENU

SELECT * FROM SMAN_MENU_ACCESO 

INSERT INTO SMAN_MENU_ACCESO  (IdMenu,RolUsuario,IdUsuario,OrderMenu,ActivoMenu,DeleteMenu,DateCreate,DateUpdate,DateDelete,UserAdded,
							   UserLastUpdate,UserDelete)
							   
							   VALUES (1,'Administrador',1,1,1,0,GETDATE(),GETDATE(),null,'sa','sa','')


SELECT MA.IdMenu,
		M.ParenIdMenu,
		M.TitleMenu,
		M.UrlMenu,
		MA.IdUsuario

	FROM [dbo].[SMAN_MENU_ACCESO] MA INNER JOIN SMAN_MENU M ON MA.IdMenu = M.IdMenu
	WHERE  M.ParenIdMenu = 0 AND
		   MA.IdUsuario = 1