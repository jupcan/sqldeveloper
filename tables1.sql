create table cuenta 
  (
  nro_cuenta char(10),
  balance int,
  primary key (nro_cuenta)
  );
  
create table transaccion 
  (
  nro_cuenta char(10),
  hora_modificacion date NOT NULL,
  id_cliente char(10),
  ant_balance int,
  act_balance int,
  primary key(nro_cuenta, hora_modificacion)
  );
  
insert into cuenta(nro_cuenta, balance) values ('001', '15000');
insert into cuenta(nro_cuenta, balance) values ('002', '10000');
insert into cuenta(nro_cuenta, balance) values ('003', '20000');
insert into transaccion(nro_cuenta, hora_modificacion, id_cliente, ant_balance, act_balance) values ('001', '15/05/1997', 'c1', '100', '200');
insert into transaccion(nro_cuenta, hora_modificacion, id_cliente, ant_balance, act_balance) values ('001', '28/02/2017', 'c2', '300', '500');
insert into transaccion(nro_cuenta, hora_modificacion, id_cliente, ant_balance, act_balance) values ('001', '1/02/1995', 'c3', '200', '300');

  
  