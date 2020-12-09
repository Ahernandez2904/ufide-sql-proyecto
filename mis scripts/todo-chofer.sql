select * from [dbo].[CHOFER];

INSERT INTO [dbo].[CHOFER]
(ID_CHOFER, FECHA_INICIO, SALARIO, ID_PERSONA)
VALUES
('4', '2018-01-02', 270000, 4);

select * from [dbo].[CHOFER];

delete from [dbo].[CHOFER] where ID_CHOFER = 4

update [dbo].[CHOFER] 
set
FECHA_INICIO = '2018-02-03',
SALARIO = '150000'
where ID_PERSONA = 3;

select * from [dbo].[CHOFER];
