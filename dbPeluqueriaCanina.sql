#Creación de BD
#---------------------

create database PeluqueriaCanina;
use PeluqueriaCanina;

create table Dueno
(
DNI int not null unique,
Nombre varchar(45) not null,
Apellido varchar(45) not null,
Telefono  varchar (35) not null,
Direccion varchar (60) not null,
primary key (DNI)
)
ENGINE = InnoDB;

create table Perro
(
id_perro int not null unique,
Nombre varchar (40) not null,
fecha_nac datetime,
sexo varchar (10),
DNI_dueno int not null,
primary key (id_perro),
constraint fk_DNI_dueno
foreign key (DNI_dueno) references Dueno (DNI)
)
ENGINE = InnoDB;

create table Historial
(
id_historial int not null unique auto_increment,
Fecha datetime,
Perro int not null,
Descripcion varchar (100),
Monto float not null,
primary key (id_historial),
constraint fk_Perro
foreign key (Perro) references Perro (id_perro)
)
ENGINE = InnoDB;

#Consulta Ejercicio 11
#-----------------

SELECT * FROM peluqueriacanina.dueno
inner join perro  on DNI_dueno= DNI
where year(current_timestamp)-year(fecha_nac) <=5