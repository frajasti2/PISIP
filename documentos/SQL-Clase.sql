/*Tabla Perfil*/
CREATE TABLE Perfil(
	perid int not null primary key identity,
	pernombre char(50) not null,
	peractivo bit default 1
);

/*Tabla Cliente*/
CREATE TABLE [dbo].[Usuario](
	[usrid] [int] NOT NULL primary key identity,
	[usrcedula] [varchar](10) NOT NULL,
	[usrapellidop] [varchar](50) NOT NULL,
	[usrapellidom] [varchar](50) NOT NULL,
	[usrnombrec] [varchar](50) NOT NULL,
	[usrmail] [varchar](50) NOT NULL,
	[usridusuario] [varchar](10) NOT NULL,
	[usrclave] [varchar](50) NOT NULL,
	[prfcodigoi] [int] NOT NULL,
	FOREIGN KEY (prfcodigoi) REFERENCES Perfil(perid)
)

Select * from Usuario

/*Vista de reporte*/
Select u.usrcedula as Cedula, (u.usrapellidop+' '+u.usrapellidom+' '+u.usrnombrec) as Cliente,
u.usrmail as Correo, u.usridusuario as Usuario, p.pernombre as Perfil
from Usuario u
JOIN Perfil p ON (p.perid=u.prfcodigoi)
