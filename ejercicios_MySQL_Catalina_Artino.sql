PAULA CATALINA ARTINO

--// Obtener los ingresos percibidos en Julio del 2022 //--
SELECT SUM(Monto) FROM Historial WHERE Fecha between '2022-07-01' AND '2022-07-31';


--// Realice la consulta correspondiente para crear la tabla Perro, teniendo en cuenta sus claves foráneas y primarias. //--
create table Perro
(
	idPerro int not null unique,
	Nombre varchar(20) not null,
	fechaNac datetime,
	sexo varchar (10),
	DNI_Dueno int not null,
	primary key (idPerro),
	constraint fk DNI_Dueno
	foreign key (DNI_Dueno) references Dueno DNI
);


--// Inserte en la tabla correspondiente un nuevo animal (perro) como paciente y el dueño asociado a ese animal. //--
INSERT INTO Perro(Nombre, fechaNac, sexo, DNI_Dueno)
		  VALUES ('Doggie', '2022-03-07', 'macho', '23536777')



