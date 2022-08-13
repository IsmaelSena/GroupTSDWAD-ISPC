create database Peluquería_Canina;
use Peluquería_Canina;

create table Dueño
(
DNI int not null unique,
Nombre varchar (45) not null,
Apellido varchar (45) not null,
Teléfono  varchar (35) not null,
Dirección varchar (55),
primary key (DNI)
)
ENGINE = InnoDB;

create table Perro
(
id_perro int not null unique,
Nombre varchar (20) not null,
fecha_nac datetime,
sexo varchar (10),
DNI_dueño int not null,
primary key (id_perro),
constraint fk_DNI_dueño
foreign key (DNI_dueño) references Dueño (DNI)
)
ENGINE = InnoDB;

create table Historial
(
id_historial int not null unique auto_increment,
Fecha datetime,
Perro int not null,
Descripción varchar (100),
Monto float not null,
primary key (id_historial),
constraint fk_Perro
foreign key (Perro) references Perro (id_perro)
)
ENGINE = InnoDB;

alter table Historial auto_increment = 1;

insert into Dueño (DNI, Nombre, Apellido,Teléfono, Dirección)
values
(25345678, 'Pedro', 'Lopez', '43562345', 'Villa 255'),
(18789999, 'Laura', 'Velazquez','42264567', 'Roca 78'),
(42223987,'Pedro', 'Guido', '45679876', 'Udaondo 2546'),
(33456247, 'Lautaro', 'Montenegro', '35556734', 'Quilmes 345'),
(29233566, 'Mabel', 'Carrizo', '34448922', 'Las Heras 35');

insert into Perro (id_perro, Nombre, fecha_nac, sexo, DNI_dueño)
values
(0001, 'Caty', '2018-12-12', 'hembra', 25345678),
(0002, 'Cuco', '2020-03-01', 'macho', 18789999),
(0003,'Mina', '2017-07-18', 'hembra', 42223987),
(0004, 'Negro', '2010-08-11', 'macho', 33456247),
(0005, 'Mancha', '2011-11-10', 'hembra', 29233566);

insert into Historial (Fecha, Perro, Descripción, Monto)
values
('2019-07-06', 0001, 'Baño', 1500),
('2021-01-12', 0002, 'Baño y corte', 2500),
('2019-09-04', 0003, 'Baño', 1700),
('2015-07-01', 0004, 'Baño y corte', 1500),
('2018-07-18', 0004, 'Baño y corte', 2500),
('2020-05-05', 0004, 'Corte', 1500),
('2021-12-05', 0005, 'Baño y corte', 3500),
('2021-05-01', 0005, 'Baño', 2500);


insert into Perro
values
(0006, 'Chin', '2021-11-30', 'macho', 42223987);

insert into Dueño
values
(22343671, 'Lucía', 'Lopez', '43552335', 'Libertad 444'),
(36789988, 'Ana', 'García','42234576', 'Ortiz 138');

insert into Perro
values
(0007, 'Puppy', '2022-10-31', 'hembra', 22343671),
(0008, 'Lolo', '2021-01-31', 'macho', 36789988);

/*Realice una consulta multitabla que arroje el nombre de todos los perros cuyos dueños se llaman Pedro*/
select d.Nombre N_dueño, d.Apellido A_dueño, p.Nombre Perro
from Dueño d join Perro p
on p.DNI_dueño = d.DNI
where d.Nombre = 'Pedro';

/*Borre un animal que ya no va a ser atendido. Para ello consulte antes en el historial, 
algún animal que ya no sea atendido desde hace mucho tiempo.*/
select * from Historial
order by Fecha;
delete from Historial
where Perro = 1;
delete from Perro
where id_perro = 1;

/*Actualice la fecha de nacimiento de algún animal (perro) que usted considere.*/
update Perro
set fecha_nac = '2011-10-10'
where id_perro= 5;


select * from Dueño;
select * from Perro;
select * from Historial;