select * from [dbo].[TARJETA];

INSERT INTO [dbo].[TARJETA]
(ID_TARJETA, SALDO, FECHA_CREACION, ESTADO, ID_CLIENTE, NUMERO_TARJETA)
VALUES
(4,100000,'2020-07-08', 'inactiva', 5, '4567890123456789');

select * from [dbo].[TARJETA];

delete from [dbo].[TARJETA] where ID_TARJETA = 4;

update [dbo].[TARJETA]
set
FECHA_CREACION = '2018-09-10',
SALDO = 150000,
ESTADO = 'activa',
NUMERO_TARJETA = '5678901234567890'
where ID_TARJETA = 3;

select * from [dbo].[TARJETA];

