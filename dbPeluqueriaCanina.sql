#Creación de BD
#---------------------
create database DBpeluqueriaCanina;
use DBpeluqueriaCanina;

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
id_perro int not null unique auto_increment,
Nombre varchar (40) not null,
fecha_nac date,
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
Fecha TIMESTAMP DEFAULT CURRENT_TIMESTAMP  
ON UPDATE CURRENT_TIMESTAMP,
Perro int not null,
Descripcion varchar (100),
Monto float not null,
primary key (id_historial),
constraint fk_Perro
foreign key (Perro) references Perro (id_perro)
)
ENGINE = InnoDB;




# CONSULTAS en la Base de Datos
#------------------------------
#Para insertar los datos de los dueños 
insert into dueno (DNI,Nombre, Apellido, Telefono, Direccion)
 values ( 45000000, 'Sofia', 'Graneros', '+54 9 381234567', 'san Martin n°567');

#Para insertar los datos de los perros
insert into perro (Nombre,fecha_nac, sexo,DNI_dueno)
values ('Pepita','2010-04-03','Femenino',45000000);

#Para insertar datos en el historial
#los campos id_historial y fecha se crean por defaul
insert into historial ( perro, descripcion, monto)
values(1, 'corte y baño', 300);

#Consulta Ejercicio 11
#-----------------

SELECT * FROM DBpeluqueriaCanina.dueno
inner join perro  on DNI_dueno= DNI
where year(current_timestamp)-year(fecha_nac) <=5