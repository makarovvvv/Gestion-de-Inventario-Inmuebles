drop database if exists ProyectoPP;
create database ProyectoPP;
use ProyectoPP; 

create table Administrador(
ID int(6),
nombre varchar(20),
apellido varchar(20),
dni int(9),
email varchar(50),
contraseña varchar(15),
primary key(ID)
);

create table Sector(
numero int(4),
descripcion varchar(100),
primary key(numero)
);

create table Mueble(
ID int(8),
descripcion varchar(100),
tipoMueble varchar(30),
color varchar(30),
sector int(4),
fechaEntrada date,
despachado boolean,
primary key(ID),
foreign key(sector) references Sector(numero)
);

DELIMITER //
create procedure insertarAdministrador(in idx int(6), in nombrex varchar(20), in apellidox varchar(20), in dnix int(9), in emailx varchar(50), in contraseñax varchar(15))
begin
insert into Administrador(ID, nombre, apellido, dni, email, contraseña) values (idx, nombrex, apellidox, dnix, emailx, contraseñax);
end//
DELIMITER ;

DELIMITER //
create procedure insertarSector(in idx int(6), in descripcionx varchar(20))
begin
insert into Administrador(ID, nombre, apellido, dni, email, contraseña) values (idx, nombrex, apellidox, dnix, emailx, contraseñax);
end//
DELIMITER ;

DELIMITER //
create procedure insertarMueble(in idx int(8), in descripcionx varchar(100), in tipoMueblex varchar(30), in colorx varchar(30), in sectorx int(4), in fechaEntradax date, in despachado boolean)
begin
insert into Mueble(ID, descripcion, tipoMueble, color, sector, fechaEntrada, despachado) values (idx, descripcionx, tipoMueble, color, sector, fechaEntrada, despachado);
end//
DELIMITER ;
