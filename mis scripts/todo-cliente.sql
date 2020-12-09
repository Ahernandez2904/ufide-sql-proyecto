select * from [dbo].[CLIENTE];

INSERT INTO [dbo].[CLIENTE] 
(ID_CLIENTE, ID_PERSONA)
VALUES 
(5,4);

delete from CLIENTE where ID_PERSONA = 4;

/* No hay suficientes datos para hacer un update,
y no vamos a cambiar una llave primaria o foránea */

select * from [dbo].[CLIENTE];
