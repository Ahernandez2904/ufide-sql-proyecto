select * from [dbo].[PERSONA];

/*Debe correrse antes del script todo-cliente, todo-persona y todo-tarjeta*/
INSERT INTO [dbo].[PERSONA] 
(ID_PERSONA, NOMBRE1, APELLIDO1, APELLIDO2, CEDULA, TELEFONO, CORREO, NOMBRE2)
VALUES
(4, 'Prueba', 'AAA', 'BBB', '123456789', '23456789', 'a@a.com', 'A'),
(5, 'Prueba2', 'AAA2', 'BBB2', '123456780', '23456780', 't@t.com', 'T');

select * from [dbo].[PERSONA];

delete from [dbo].[PERSONA] where ID_PERSONA = 4;

update [dbo].[PERSONA] 
set
NOMBRE1 = 'Prueba2',
APELLIDO1 = 'CCC',
APELLIDO2 = 'DDD',
CEDULA = '999999999',
TELEFONO = '88888888',
CORREO = 'd@d.com',
NOMBRE2 = 'EEE'
where ID_PERSONA = 3;

select * from [dbo].[PERSONA];