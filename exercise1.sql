create or replace trigger ejercicio_1
after insert or update of balance on cuenta
for each row
begin 
insert into transaccion (nro_cuenta, hora_modificacion, id_cliente, ant_balance, act_balance)
values (:new.nro_cuenta, sysdate, 555, :old.balance, :new.balance);
end;
