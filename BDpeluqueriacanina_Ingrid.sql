#creacion de BD

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

#Datos para realizar consultas
#Datos de los dueños
insert into Dueño (DNI,Nombre, Apellido, Telefono, Direccion)
values (38294857, 'Martina', 'Rojas', '1146372373', 'La Plata 590'), 
(83208457, 'Belen', 'Gómez', '1174875589', 'Ezeiza 452'),
(40129103, 'Ivan', 'Rodriguez', '26718292', 'Avellaneda 3841'),
(42109348, 'Pablo', 'Alonso', '1192844741', 'Merlo 3065');

#Datos de los perros
insert into Perro (ID_Perro, Nombre, Fecha_nac, Sexo, DNI_dueño)
values (1001, 'Laica', '2019-02-15', 'hembra', 38294857), 
(2002, 'Ringo', '2020-06-04', 'macho', 83208457),
(3003, 'Coco', '2018-08-21', 'macho', 40129103),
(4004, 'Rufus', '2021-02-17', 'macho', 42109348);

#Datos del historial
insert into Historial (ID_Historial, Fecha, Perro, Descripcion, Monto)
values (01, '2020-10-23', 1001, 'corte', 890), 
(02, '2021-09-11', 2002, 'baño', 950), 
(03, '2019-10-06', 3003, 'corte', 750),
(04, '2021-11-29', 4004, 'baño', 950);

#Ejercicio 4 Actualice la fecha de nacimiento de algún animal (perro) que usted considere.
UPDATE perro
SET fecha_nac='2018-08-21'
where nombre='Coco';

#Ejercicio 12 Obtener todos los perros de sexo “Macho” nacidos entre 2020 y 2022.
SELECT * FROM peluqueriacanina.perro
inner join sexo_perro
where fecha_nac between '2019-02-15' and '2021-02-17';