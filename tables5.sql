drop table discografica;
drop table genero;

create table discografica(
id int,
nombre varchar(60),
numero_generos int,
numero_operaciones int,
totales_generos int,
numero_operaciones_tot int,
primary key (id)
);

create table genero(
id int,
siglas varchar(5),
nombre varchar(60),
bpm int,
discografica int,
primary key(id)
);

insert into discografica values (1, 'Sony Music', 0,0,0,0);
insert into discografica values (2, 'Warner Bros Records', 0,0,0,0);
insert into discografica values (3, 'BMG Music', 0,0,0,0);
insert into discografica values (4, 'EMI', 0,0,0,0);
insert into discografica values (5, 'Universal Music Group', 0,0,0,0);
