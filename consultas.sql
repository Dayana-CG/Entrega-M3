-- consulta 1
select m.nombre from moneda m
join transaccion t on m.idMoneda = t.moneda_idMoneda
where t.envio_idUsuario = 2; 


-- consulta 2
select * from transaccion;

-- consulta 3
SELECT *
FROM transaccion
WHERE transaccion.envio_idUsuario = "6" or transaccion.recepcion_idUsuario = "6";

-- consulta 4
-- modificar email de registros especificos
update usuario
set usuario.email = 'usuario@ias.cl'
where usuario.nombre like 'L%';

select * from usuario;

-- consulta 5
-- elimina un registro de transaccion
select * from transaccion;

delete from transaccion where transaccion.idTransaccion = '9';

select * from transaccion;