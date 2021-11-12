Create database VeterinarioP

use VeterinarioP

--Adiel Adonay Carcamo-----

Use VeterinariaCls

Create table DueñoMascota(
dmId int primary key identity (1,1) not null,
Num_Identidad int unique not null,
Nombre varchar(50) not null,
Apellidos varchar(50) not null,
id_Direccion int foreign key (id_Direccion) references Direccion(id_Direccion) not null,
depId int foreign key (depId) references Departamento(depId) not null,
munId int foreign key (munId) references Municipio(munId) not null,
codigo_Postal int not null,
id_Telefono int foreign key (id_Telefono) references TelefonoD(id_Telefono) not null,
);

create table Direccion(
id_Direccion int primary key identity (1,1) not null,
Direccion varchar(50) not null,
departamento int foreign key references Departamento(depId) not null,
codigoPostal int not null
);

create table Departamento (
depId int primary key identity (1,1) not null,
departamento varchar(50) not null unique,
municipio int foreign key references Municipio(munId)
);

create table Municipio(
munId int primary key identity (1,1) not null,
municipio varchar(50) not null unique
);

Create table TelefonoD(
id_Telefono int NOT NULL identity (1,1) primary key,
N_Telefono int,
Codigo_Area int 
);

create table Mascota (
masId int primary key identity(1,1) not null,
niMascota varchar(5) not null,
nombre varchar(50) not null,
raza varchar (50) not null,
observaciones varchar(100) not null,
tmId int foreign key (tmId) references tipoMascota(tmId) not null,
razaId int foreign key (razaId) references razaM(razaId) not null,
idPeso int foreign key (idPeso) references Peso(idPeso) not null,
);

create table tipoMascota(
tmId int primary key identity (1,1) not null,
mascotaTipo varchar(50) not null
);

create table razaM(
razaId int primary key identity(1,1) not null,
nombreR varchar(50) not null
);

create table Peso(
idPeso int primary key identity (1,1) not null,
peso float not null
);



Create table Ingresos (
idIngreso int primary key identity(1,1) not null,
motivo varchar(250) not null,
fecha_Ingreso date not null,
observaciones varchar(250) not null
);


Create table Veterinario (
cod_idVeterinario int primary key identity (1,1) not null,
nombreV varchar(50) not null,
apellidoV varchar(50) not null,
idCargo int foreign key (idCargo) references Cargo(idCargo) not null,
);

insert into Veterinario(nombreV, apellidoV, idCargo) 
values ('Jose', 'Argueta', 1)
insert into Veterinario(nombreV, apellidoV, idCargo) 
values ('Antonio', 'Varela', 2)
insert into Veterinario(nombreV, apellidoV, idCargo) 
values ('Miguel', 'Cartagena', 3)

create table Cargo(
idCargo int primary key identity (1,1) not null,
nombreCargo varchar(50) not null,
);

insert into Cargo(nombreCargo) values ('Cirugia')
insert into Cargo(nombreCargo) values ('Fisioterapia')
insert into Cargo(nombreCargo) values ('Fauna Silvestre')

/*Por problemas del tiempo no pude terminar los insert :(*/