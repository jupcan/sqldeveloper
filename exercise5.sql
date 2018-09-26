create or replace trigger e5_1
after insert on genero
for each row
begin
update discografica set numero_generos = numero_generos+1 where discografica.id=:new.discografica;
dbms_output.put_line('after row');
end;

create or replace trigger e5_2
after insert on genero
for each row
begin
update discografica set numero_operaciones = numero_operaciones+1 where discografica.id=:new.discografica;
dbms_output.put_line('before row');
end;

create or replace trigger e5_3
after insert on genero
begin
update discografica set totales_generos = totales_generos+1;
dbms_output.put_line('after statement');
end;

create or replace trigger e5_4
after insert on genero
begin
update discografica set numero_operaciones_tot = numero_operaciones_tot+1;
dbms_output.put_line('before statement');
end;