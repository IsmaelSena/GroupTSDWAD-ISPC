 create table dueño(
dni_d int not null,
nombre_d varchar(50) not null,
apellido_d varchar(50) not null,
telefono_d bigint not null,
domicilio_d varchar(200) not null,
constraint pk_dd primary key(dni_d)

insert into dueño values (44647345, 'clara', 'depiante', 3534473925, 'Argentina 700')
insert into dueño values (24734186, 'carla', 'corchero', 3534937394, 'Colombia 548')
insert into dueño values (40744094, 'federico', 'schiller', 3534839473, 'El Salvador 5000')
insert into dueño values (47394738, 'pedro', 'bitcoin', 3534983748,'San Juan 473')
 )
select DISTINCT p.*
from historial h
inner join perro p on h.perro=id_perro
where year(h.fecha)=2022
