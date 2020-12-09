--Selects
SELECT * FROM [dbo].[PERSONA]
SELECT * FROM [dbo].[CLIENTE]
SELECT * FROM [dbo].[CHOFER]
SELECT * FROM [dbo].[TARJETA]
SELECT * FROM [dbo].[BUS]
SELECT * FROM [dbo].[RUTA]
SELECT * FROM [dbo].[HORARIO]
SELECT * FROM [dbo].[EMPRESA]
SELECT * FROM [dbo].[VIAJE]
SELECT * FROM [dbo].[ENCOMIENDAS]
SELECT * FROM [dbo].[FACTURA]
SELECT * FROM [dbo].[FACTURA_ENCOMIENDA]

--INSERTS
INSERT INTO [dbo].[PERSONA] (ID_PERSONA, NOMBRE1, APELLIDO1, APELLIDO2, CEDULA, TELEFONO, CORREO, NOMBRE2)
VALUES (1, 'Alejandro', 'Loría', 'Pérez', '123456789', '23456789', 'a@a.com', 'A'),
(2, 'Sofía', 'Ramos', 'Mora', '234567890', '34567890', 'b@b.com', 'B'),
(3, 'Roberto', 'Vindas', 'Hernández', '345678901', '45678901', 'c@c.com', 'C'),
(4, 'Prueba', 'AAA', 'BBB', '123456789', '23456789', 'a@a.com', 'A'),
(5, 'Prueba2', 'AAA2', 'BBB2', '123456780', '23456780', 't@t.com', 'T');

INSERT INTO [dbo].[CLIENTE] (ID_CLIENTE, ID_PERSONA) VALUES (1,1),(2,2),(3,3),(5,4);

INSERT INTO [dbo].[TARJETA] (ID_TARJETA, SALDO, FECHA_CREACION, ESTADO, ID_CLIENTE, NUMERO_TARJETA)
VALUES (1,200000,'2018-01-02', 'activa', 1, 12345678),
(2,250000,'2019-03-04', 'activa', 2, 23456789),
(3,270000,'2020-05-06', 'inactiva', 3, 34567890);

INSERT INTO [dbo].[CHOFER] (ID_CHOFER, FECHA_INICIO, SALARIO, ID_PERSONA)
VALUES (1,'2018-01-02', 300000, 1),
(2,'2019-03-04', 350000, 2),
(3,'2020-05-06', 400000, 3),
(4,'2018-01-02', 270000, 4);

INSERT INTO [dbo].[RUTA] VALUES (205, 375, 'ALAJUELA', 'PARQUE_CEMENTERIO', 'ALAJUELA-BELEN', 16)
INSERT INTO [dbo].[RUTA] VALUES (301, 425, 'BELEN', 'ESTACION DEL TREN', 'BELEN HEREDIA', 14)
INSERT INTO [dbo].[RUTA] VALUES (222, 475, 'SANTA ANA', 'MEGASUPER', 'SANTA ANA ESCAZU ', 17)

INSERT INTO [dbo].[HORARIO] VALUES (123, '12-22-2020', 18)
INSERT INTO [dbo].[HORARIO] VALUES (456, '12-16-2020', 07)
INSERT INTO [dbo].[HORARIO] VALUES (789, '12-21-2020', 22)

INSERT INTO [dbo].[EMPRESA] VALUES (001, 'ALPIZAR SA')
INSERT INTO [dbo].[EMPRESA] VALUES (002, 'TRANSPORTES BELEN')
INSERT INTO [dbo].[EMPRESA] VALUES (003, 'TRANSA')

INSERT INTO [dbo].[BUS] VALUES (101, 'ACTIVO', 6585,01)
INSERT INTO [dbo].[BUS] VALUES (102, 'INACTIVO', 5784,03)
INSERT INTO [dbo].[BUS] VALUES (103, 'ACTIVO', 1587,02)

INSERT INTO [dbo].[VIAJE] VALUES (205,123,1,103,68),(222,456,2,101,419),(301,789,2,101,71);

INSERT INTO [dbo].[ENCOMIENDAS] VALUES (487,20,'CAJA DE ROPA',68,2,40),
(878,35,'PANTALLA',419,3,10),(686,45,'COMPUTADORA',71,1,50);

INSERT INTO [dbo].[FACTURA] VALUES (1,68,1,48757),(2,419,2,32154),(3,71,3,45610);

INSERT INTO [dbo].[FACTURA_ENCOMIENDA] VALUES (1,45874,1,686);

--UPDATES
UPDATE [dbo].[HORARIO] SET ID_HORARIO= 963, FECHA_RUTA='01-02-2020', HORA_RUTA WHERE ID_HORARIO=123, 
FECHA_RUTA='12-22-2020',HORA_RUTA 18

UPDATE [dbo].[EMPRESA] SET ID_EMPRESA =004, NOMBRE= 'LUMACA' WHERE ID_EMPRESA = 003, NOMBRE='TRANSA'

UPDATE [dbo].[RUTA] SET ID_RUTA =315,COSTO=490,DESTINO='MERCEDEZ SUR', SALIDA= 'MAS X MENOS', 
DESC_RUTA='MERCEDEZ SUR-CARIARI', 18 WHERE ID_RUTA =301, COSTO=425 ,DESTINO='BELEN', SALIDA= 'ESTACION DEL TREN', 
DESC_RUTA='BELEN HEREDIA', 14

UPDATE [dbo].[BUS] SET ESTADO='ACTIVO' WHERE PLACA='5784'

update [dbo].[CHOFER] set FECHA_INICIO = '2018-02-03', SALARIO = '150000' where ID_PERSONA = 3;

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

update [dbo].[TARJETA]
set
FECHA_CREACION = '2018-09-10',
SALDO = 150000,
ESTADO = 'activa',
NUMERO_TARJETA = 56789012
where ID_TARJETA = 3;

--DELETES
DELETE [dbo].[HORARIO] WHERE ID_HORARIO= 963, FECHA_RUTA='01-02-2020'

DELETE [dbo].[EMPRESA] WHERE ID_EMPRESA =004, NOMBRE= 'LUMACA' WHERE ID_EMPRESA = 003, NOMBRE='TRANSA'

DELETE [dbo].[RUTA] WHERE ID_RUTA =301, COSTO=425 ,DESTINO='BELEN', SALIDA= 'ESTACION DEL TREN', 

DELETE [dbo].[BUS] WHERE ID_BUS='103'

DELETE from [dbo].[CHOFER] where ID_CHOFER = 3

delete from CLIENTE where ID_PERSONA = 4;

delete from [dbo].[PERSONA] where ID_PERSONA = 4;

delete from [dbo].[TARJETA] where ID_TARJETA = 4;







--Query creacion


CREATE TABLE BUS
( 
	ID_BUS               integer  NOT NULL ,
	ESTADO               varchar(20)  NOT NULL ,
	PLACA                integer  NOT NULL ,
	ID_EMPRESA           integer  NOT NULL 
)
go



ALTER TABLE BUS
	ADD CONSTRAINT XPKBUS PRIMARY KEY  CLUSTERED (ID_BUS ASC)
go



CREATE TABLE CHOFER
( 
	ID_CHOFER            integer  NOT NULL ,
	FECHA_INICIO         datetime  NOT NULL ,
	SALARIO              integer  NOT NULL ,
	ID_PERSONA           integer  NOT NULL 
)
go



ALTER TABLE CHOFER
	ADD CONSTRAINT XPKCHOFER PRIMARY KEY  CLUSTERED (ID_CHOFER ASC)
go



CREATE TABLE CLIENTE
( 
	ID_CLIENTE           integer  NOT NULL ,
	ID_PERSONA           integer  NOT NULL 
)
go



ALTER TABLE CLIENTE
	ADD CONSTRAINT XPKCLIENTE PRIMARY KEY  CLUSTERED (ID_CLIENTE ASC)
go



CREATE TABLE EMPRESA
( 
	ID_EMPRESA           integer  NOT NULL ,
	NOMBRE               varchar(30)  NOT NULL 
)
go



ALTER TABLE EMPRESA
	ADD CONSTRAINT XPKEMPRESA PRIMARY KEY  CLUSTERED (ID_EMPRESA ASC)
go



CREATE TABLE ENCOMIENDAS
( 
	ID_ENCOMIENDA        integer  NOT NULL ,
	PESO                 integer  NOT NULL ,
	DESC_ENCO            varchar(50)  NOT NULL ,
	ID_VIAJE             integer  NOT NULL ,
	ID_TARJETA           integer  NOT NULL ,
	VOLUMEN              integer  NOT NULL 
)
go



ALTER TABLE ENCOMIENDAS
	ADD CONSTRAINT XPKENCOMIENDAS PRIMARY KEY  CLUSTERED (ID_ENCOMIENDA ASC)
go



CREATE TABLE FACTURA
( 
	ID_TARJETA           integer  NOT NULL ,
	ID_VIAJE             integer  NOT NULL ,
	ID_FACTURA           integer  NOT NULL ,
	NUMERO_FACT          integer  NOT NULL 
)
go



ALTER TABLE FACTURA
	ADD CONSTRAINT XPKFACTURA PRIMARY KEY  CLUSTERED (ID_FACTURA ASC)
go



CREATE TABLE FACTURA_ENCOMIENDA
( 
	ID_FACTU_ENCOMIENDA  integer  NOT NULL ,
	NUMERO_FACTURA       integer  NOT NULL ,
	ID_TARJETA           integer  NOT NULL ,
	ID_ENCOMIENDA        integer  NOT NULL 
)
go



ALTER TABLE FACTURA_ENCOMIENDA
	ADD CONSTRAINT XPKFACTURA_ENCOMIENDA PRIMARY KEY  CLUSTERED (ID_FACTU_ENCOMIENDA ASC)
go



CREATE TABLE HORARIO
( 
	ID_HORARIO           integer  NOT NULL ,
	FECHA_RUTA           varchar(20)  NOT NULL ,
	HORA_RUTA            varchar(20)  NULL 
)
go



ALTER TABLE HORARIO
	ADD CONSTRAINT XPKHORARIO PRIMARY KEY  CLUSTERED (ID_HORARIO ASC)
go



CREATE TABLE PERSONA
( 
	ID_PERSONA           integer  NOT NULL ,
	NOMBRE1              varchar(20)  NOT NULL ,
	APELLIDO1            varchar(20)  NOT NULL ,
	APELLIDO2            varchar(20)  NOT NULL ,
	CEDULA               varchar(20)  NOT NULL ,
	TELEFONO             varchar(20)  NULL ,
	CORREO               varchar(20)  NULL ,
	NOMBRE2              varchar(20)  NOT NULL 
)
go



ALTER TABLE PERSONA
	ADD CONSTRAINT XPKPERSONA PRIMARY KEY  CLUSTERED (ID_PERSONA ASC)
go



CREATE TABLE RUTA
( 
	ID_RUTA              integer  NOT NULL ,
	COSTO                integer  NOT NULL ,
	DESTINO              varchar(30)  NOT NULL ,
	SALIDA               varchar(30)  NOT NULL ,
	DESC_RUTA            varchar(50)  NULL ,
	DISTANCIA            integer  NULL 
)
go



ALTER TABLE RUTA
	ADD CONSTRAINT XPKRUTA PRIMARY KEY  CLUSTERED (ID_RUTA ASC)
go



CREATE TABLE TARJETA
( 
	ID_TARJETA           integer  NOT NULL ,
	SALDO                integer  NOT NULL ,
	FECHA_CREACION       datetime  NOT NULL ,
	ESTADO               varchar(20)  NOT NULL ,
	ID_CLIENTE           integer  NOT NULL ,
	NUMERO_TARJETA       VARCHAR(20)  NOT NULL 
)
go



ALTER TABLE TARJETA
	ADD CONSTRAINT XPKTARJETA PRIMARY KEY  CLUSTERED (ID_TARJETA ASC)
go



CREATE TABLE VIAJE
( 
	ID_RUTA              integer  NOT NULL ,
	ID_HORARIO           integer  NOT NULL ,
	ID_CHOFER            integer  NOT NULL ,
	ID_BUS               integer  NOT NULL ,
	ID_VIAJE             integer  NOT NULL 
)
go



ALTER TABLE VIAJE
	ADD CONSTRAINT XPKVIAJE PRIMARY KEY  CLUSTERED (ID_VIAJE ASC)
go




ALTER TABLE BUS
	ADD CONSTRAINT R_10 FOREIGN KEY (ID_EMPRESA) REFERENCES EMPRESA(ID_EMPRESA)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE CHOFER
	ADD CONSTRAINT R_2 FOREIGN KEY (ID_PERSONA) REFERENCES PERSONA(ID_PERSONA)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE CLIENTE
	ADD CONSTRAINT R_1 FOREIGN KEY (ID_PERSONA) REFERENCES PERSONA(ID_PERSONA)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE ENCOMIENDAS
	ADD CONSTRAINT R_12 FOREIGN KEY (ID_VIAJE) REFERENCES VIAJE(ID_VIAJE)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE ENCOMIENDAS
	ADD CONSTRAINT R_13 FOREIGN KEY (ID_TARJETA) REFERENCES TARJETA(ID_TARJETA)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE FACTURA
	ADD CONSTRAINT R_14 FOREIGN KEY (ID_TARJETA) REFERENCES TARJETA(ID_TARJETA)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE FACTURA
	ADD CONSTRAINT R_15 FOREIGN KEY (ID_VIAJE) REFERENCES VIAJE(ID_VIAJE)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE FACTURA_ENCOMIENDA
	ADD CONSTRAINT R_16 FOREIGN KEY (ID_TARJETA) REFERENCES TARJETA(ID_TARJETA)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE FACTURA_ENCOMIENDA
	ADD CONSTRAINT R_18 FOREIGN KEY (ID_ENCOMIENDA) REFERENCES ENCOMIENDAS(ID_ENCOMIENDA)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE TARJETA
	ADD CONSTRAINT R_4 FOREIGN KEY (ID_CLIENTE) REFERENCES CLIENTE(ID_CLIENTE)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE VIAJE
	ADD CONSTRAINT R_7 FOREIGN KEY (ID_RUTA) REFERENCES RUTA(ID_RUTA)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE VIAJE
	ADD CONSTRAINT R_8 FOREIGN KEY (ID_HORARIO) REFERENCES HORARIO(ID_HORARIO)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE VIAJE
	ADD CONSTRAINT R_9 FOREIGN KEY (ID_CHOFER) REFERENCES CHOFER(ID_CHOFER)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE VIAJE
	ADD CONSTRAINT R_11 FOREIGN KEY (ID_BUS) REFERENCES BUS(ID_BUS)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




CREATE TRIGGER tD_BUS ON BUS FOR DELETE AS
/* ERwin Builtin Trigger */
/* DELETE trigger on BUS */
BEGIN
  DECLARE  @errno   int,
           @errmsg  varchar(255)
    /* ERwin Builtin Trigger */
    /* BUS  VIAJE on parent delete no action */
    /* ERWIN_RELATION:CHECKSUM="0001f2fd", PARENT_OWNER="", PARENT_TABLE="BUS"
    CHILD_OWNER="", CHILD_TABLE="VIAJE"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_11", FK_COLUMNS="ID_BUS" */
    IF EXISTS (
      SELECT * FROM deleted,VIAJE
      WHERE
        /*  %JoinFKPK(VIAJE,deleted," = "," AND") */
        VIAJE.ID_BUS = deleted.ID_BUS
    )
    BEGIN
      SELECT @errno  = 30001,
             @errmsg = 'Cannot delete BUS because VIAJE exists.'
      GOTO ERROR
    END

    /* ERwin Builtin Trigger */
    /* EMPRESA  BUS on child delete no action */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="EMPRESA"
    CHILD_OWNER="", CHILD_TABLE="BUS"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_10", FK_COLUMNS="ID_EMPRESA" */
    IF EXISTS (SELECT * FROM deleted,EMPRESA
      WHERE
        /* %JoinFKPK(deleted,EMPRESA," = "," AND") */
        deleted.ID_EMPRESA = EMPRESA.ID_EMPRESA AND
        NOT EXISTS (
          SELECT * FROM BUS
          WHERE
            /* %JoinFKPK(BUS,EMPRESA," = "," AND") */
            BUS.ID_EMPRESA = EMPRESA.ID_EMPRESA
        )
    )
    BEGIN
      SELECT @errno  = 30010,
             @errmsg = 'Cannot delete last BUS because EMPRESA exists.'
      GOTO ERROR
    END


    /* ERwin Builtin Trigger */
    RETURN
ERROR:
    raiserror @errno @errmsg
    rollback transaction
END

go


CREATE TRIGGER tU_BUS ON BUS FOR UPDATE AS
/* ERwin Builtin Trigger */
/* UPDATE trigger on BUS */
BEGIN
  DECLARE  @NUMROWS int,
           @nullcnt int,
           @validcnt int,
           @insID_BUS integer,
           @errno   int,
           @errmsg  varchar(255)

  SELECT @NUMROWS = @@rowcount
  /* ERwin Builtin Trigger */
  /* BUS  VIAJE on parent update no action */
  /* ERWIN_RELATION:CHECKSUM="000251bd", PARENT_OWNER="", PARENT_TABLE="BUS"
    CHILD_OWNER="", CHILD_TABLE="VIAJE"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_11", FK_COLUMNS="ID_BUS" */
  IF
    /* %ParentPK(" OR",UPDATE) */
    UPDATE(ID_BUS)
  BEGIN
    IF EXISTS (
      SELECT * FROM deleted,VIAJE
      WHERE
        /*  %JoinFKPK(VIAJE,deleted," = "," AND") */
        VIAJE.ID_BUS = deleted.ID_BUS
    )
    BEGIN
      SELECT @errno  = 30005,
             @errmsg = 'Cannot update BUS because VIAJE exists.'
      GOTO ERROR
    END
  END

  /* ERwin Builtin Trigger */
  /* EMPRESA  BUS on child update no action */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="EMPRESA"
    CHILD_OWNER="", CHILD_TABLE="BUS"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_10", FK_COLUMNS="ID_EMPRESA" */
  IF
    /* %ChildFK(" OR",UPDATE) */
    UPDATE(ID_EMPRESA)
  BEGIN
    SELECT @nullcnt = 0
    SELECT @validcnt = count(*)
      FROM inserted,EMPRESA
        WHERE
          /* %JoinFKPK(inserted,EMPRESA) */
          inserted.ID_EMPRESA = EMPRESA.ID_EMPRESA
    /* %NotnullFK(inserted," IS NULL","select @nullcnt = count(*) from inserted where"," AND") */
    select @nullcnt = count(*) from inserted where
      inserted.ID_EMPRESA IS NULL
    IF @validcnt + @nullcnt != @NUMROWS
    BEGIN
      SELECT @errno  = 30007,
             @errmsg = 'Cannot update BUS because EMPRESA does not exist.'
      GOTO ERROR
    END
  END


  /* ERwin Builtin Trigger */
  RETURN
ERROR:
    raiserror @errno @errmsg
    rollback transaction
END

go




CREATE TRIGGER tD_CHOFER ON CHOFER FOR DELETE AS
/* ERwin Builtin Trigger */
/* DELETE trigger on CHOFER */
BEGIN
  DECLARE  @errno   int,
           @errmsg  varchar(255)
    /* ERwin Builtin Trigger */
    /* CHOFER  VIAJE on parent delete no action */
    /* ERWIN_RELATION:CHECKSUM="00020085", PARENT_OWNER="", PARENT_TABLE="CHOFER"
    CHILD_OWNER="", CHILD_TABLE="VIAJE"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_9", FK_COLUMNS="ID_CHOFER" */
    IF EXISTS (
      SELECT * FROM deleted,VIAJE
      WHERE
        /*  %JoinFKPK(VIAJE,deleted," = "," AND") */
        VIAJE.ID_CHOFER = deleted.ID_CHOFER
    )
    BEGIN
      SELECT @errno  = 30001,
             @errmsg = 'Cannot delete CHOFER because VIAJE exists.'
      GOTO ERROR
    END

    /* ERwin Builtin Trigger */
    /* PERSONA  CHOFER on child delete no action */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="PERSONA"
    CHILD_OWNER="", CHILD_TABLE="CHOFER"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_2", FK_COLUMNS="ID_PERSONA" */
    IF EXISTS (SELECT * FROM deleted,PERSONA
      WHERE
        /* %JoinFKPK(deleted,PERSONA," = "," AND") */
        deleted.ID_PERSONA = PERSONA.ID_PERSONA AND
        NOT EXISTS (
          SELECT * FROM CHOFER
          WHERE
            /* %JoinFKPK(CHOFER,PERSONA," = "," AND") */
            CHOFER.ID_PERSONA = PERSONA.ID_PERSONA
        )
    )
    BEGIN
      SELECT @errno  = 30010,
             @errmsg = 'Cannot delete last CHOFER because PERSONA exists.'
      GOTO ERROR
    END


    /* ERwin Builtin Trigger */
    RETURN
ERROR:
    raiserror @errno @errmsg
    rollback transaction
END

go


CREATE TRIGGER tU_CHOFER ON CHOFER FOR UPDATE AS
/* ERwin Builtin Trigger */
/* UPDATE trigger on CHOFER */
BEGIN
  DECLARE  @NUMROWS int,
           @nullcnt int,
           @validcnt int,
           @insID_CHOFER integer,
           @errno   int,
           @errmsg  varchar(255)

  SELECT @NUMROWS = @@rowcount
  /* ERwin Builtin Trigger */
  /* CHOFER  VIAJE on parent update no action */
  /* ERWIN_RELATION:CHECKSUM="00026425", PARENT_OWNER="", PARENT_TABLE="CHOFER"
    CHILD_OWNER="", CHILD_TABLE="VIAJE"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_9", FK_COLUMNS="ID_CHOFER" */
  IF
    /* %ParentPK(" OR",UPDATE) */
    UPDATE(ID_CHOFER)
  BEGIN
    IF EXISTS (
      SELECT * FROM deleted,VIAJE
      WHERE
        /*  %JoinFKPK(VIAJE,deleted," = "," AND") */
        VIAJE.ID_CHOFER = deleted.ID_CHOFER
    )
    BEGIN
      SELECT @errno  = 30005,
             @errmsg = 'Cannot update CHOFER because VIAJE exists.'
      GOTO ERROR
    END
  END

  /* ERwin Builtin Trigger */
  /* PERSONA  CHOFER on child update no action */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="PERSONA"
    CHILD_OWNER="", CHILD_TABLE="CHOFER"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_2", FK_COLUMNS="ID_PERSONA" */
  IF
    /* %ChildFK(" OR",UPDATE) */
    UPDATE(ID_PERSONA)
  BEGIN
    SELECT @nullcnt = 0
    SELECT @validcnt = count(*)
      FROM inserted,PERSONA
        WHERE
          /* %JoinFKPK(inserted,PERSONA) */
          inserted.ID_PERSONA = PERSONA.ID_PERSONA
    /* %NotnullFK(inserted," IS NULL","select @nullcnt = count(*) from inserted where"," AND") */
    select @nullcnt = count(*) from inserted where
      inserted.ID_PERSONA IS NULL
    IF @validcnt + @nullcnt != @NUMROWS
    BEGIN
      SELECT @errno  = 30007,
             @errmsg = 'Cannot update CHOFER because PERSONA does not exist.'
      GOTO ERROR
    END
  END


  /* ERwin Builtin Trigger */
  RETURN
ERROR:
    raiserror @errno @errmsg
    rollback transaction
END

go




CREATE TRIGGER tD_CLIENTE ON CLIENTE FOR DELETE AS
/* ERwin Builtin Trigger */
/* DELETE trigger on CLIENTE */
BEGIN
  DECLARE  @errno   int,
           @errmsg  varchar(255)
    /* ERwin Builtin Trigger */
    /* CLIENTE  TARJETA on parent delete no action */
    /* ERWIN_RELATION:CHECKSUM="000203b6", PARENT_OWNER="", PARENT_TABLE="CLIENTE"
    CHILD_OWNER="", CHILD_TABLE="TARJETA"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_4", FK_COLUMNS="ID_CLIENTE" */
    IF EXISTS (
      SELECT * FROM deleted,TARJETA
      WHERE
        /*  %JoinFKPK(TARJETA,deleted," = "," AND") */
        TARJETA.ID_CLIENTE = deleted.ID_CLIENTE
    )
    BEGIN
      SELECT @errno  = 30001,
             @errmsg = 'Cannot delete CLIENTE because TARJETA exists.'
      GOTO ERROR
    END

    /* ERwin Builtin Trigger */
    /* PERSONA  CLIENTE on child delete no action */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="PERSONA"
    CHILD_OWNER="", CHILD_TABLE="CLIENTE"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_1", FK_COLUMNS="ID_PERSONA" */
    IF EXISTS (SELECT * FROM deleted,PERSONA
      WHERE
        /* %JoinFKPK(deleted,PERSONA," = "," AND") */
        deleted.ID_PERSONA = PERSONA.ID_PERSONA AND
        NOT EXISTS (
          SELECT * FROM CLIENTE
          WHERE
            /* %JoinFKPK(CLIENTE,PERSONA," = "," AND") */
            CLIENTE.ID_PERSONA = PERSONA.ID_PERSONA
        )
    )
    BEGIN
      SELECT @errno  = 30010,
             @errmsg = 'Cannot delete last CLIENTE because PERSONA exists.'
      GOTO ERROR
    END


    /* ERwin Builtin Trigger */
    RETURN
ERROR:
    raiserror @errno @errmsg
    rollback transaction
END

go


CREATE TRIGGER tU_CLIENTE ON CLIENTE FOR UPDATE AS
/* ERwin Builtin Trigger */
/* UPDATE trigger on CLIENTE */
BEGIN
  DECLARE  @NUMROWS int,
           @nullcnt int,
           @validcnt int,
           @insID_CLIENTE integer,
           @errno   int,
           @errmsg  varchar(255)

  SELECT @NUMROWS = @@rowcount
  /* ERwin Builtin Trigger */
  /* CLIENTE  TARJETA on parent update no action */
  /* ERWIN_RELATION:CHECKSUM="000279ed", PARENT_OWNER="", PARENT_TABLE="CLIENTE"
    CHILD_OWNER="", CHILD_TABLE="TARJETA"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_4", FK_COLUMNS="ID_CLIENTE" */
  IF
    /* %ParentPK(" OR",UPDATE) */
    UPDATE(ID_CLIENTE)
  BEGIN
    IF EXISTS (
      SELECT * FROM deleted,TARJETA
      WHERE
        /*  %JoinFKPK(TARJETA,deleted," = "," AND") */
        TARJETA.ID_CLIENTE = deleted.ID_CLIENTE
    )
    BEGIN
      SELECT @errno  = 30005,
             @errmsg = 'Cannot update CLIENTE because TARJETA exists.'
      GOTO ERROR
    END
  END

  /* ERwin Builtin Trigger */
  /* PERSONA  CLIENTE on child update no action */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="PERSONA"
    CHILD_OWNER="", CHILD_TABLE="CLIENTE"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_1", FK_COLUMNS="ID_PERSONA" */
  IF
    /* %ChildFK(" OR",UPDATE) */
    UPDATE(ID_PERSONA)
  BEGIN
    SELECT @nullcnt = 0
    SELECT @validcnt = count(*)
      FROM inserted,PERSONA
        WHERE
          /* %JoinFKPK(inserted,PERSONA) */
          inserted.ID_PERSONA = PERSONA.ID_PERSONA
    /* %NotnullFK(inserted," IS NULL","select @nullcnt = count(*) from inserted where"," AND") */
    select @nullcnt = count(*) from inserted where
      inserted.ID_PERSONA IS NULL
    IF @validcnt + @nullcnt != @NUMROWS
    BEGIN
      SELECT @errno  = 30007,
             @errmsg = 'Cannot update CLIENTE because PERSONA does not exist.'
      GOTO ERROR
    END
  END


  /* ERwin Builtin Trigger */
  RETURN
ERROR:
    raiserror @errno @errmsg
    rollback transaction
END

go




CREATE TRIGGER tD_EMPRESA ON EMPRESA FOR DELETE AS
/* ERwin Builtin Trigger */
/* DELETE trigger on EMPRESA */
BEGIN
  DECLARE  @errno   int,
           @errmsg  varchar(255)
    /* ERwin Builtin Trigger */
    /* EMPRESA  BUS on parent delete no action */
    /* ERWIN_RELATION:CHECKSUM="0000d6b4", PARENT_OWNER="", PARENT_TABLE="EMPRESA"
    CHILD_OWNER="", CHILD_TABLE="BUS"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_10", FK_COLUMNS="ID_EMPRESA" */
    IF EXISTS (
      SELECT * FROM deleted,BUS
      WHERE
        /*  %JoinFKPK(BUS,deleted," = "," AND") */
        BUS.ID_EMPRESA = deleted.ID_EMPRESA
    )
    BEGIN
      SELECT @errno  = 30001,
             @errmsg = 'Cannot delete EMPRESA because BUS exists.'
      GOTO ERROR
    END


    /* ERwin Builtin Trigger */
    RETURN
ERROR:
    raiserror @errno @errmsg
    rollback transaction
END

go


CREATE TRIGGER tU_EMPRESA ON EMPRESA FOR UPDATE AS
/* ERwin Builtin Trigger */
/* UPDATE trigger on EMPRESA */
BEGIN
  DECLARE  @NUMROWS int,
           @nullcnt int,
           @validcnt int,
           @insID_EMPRESA integer,
           @errno   int,
           @errmsg  varchar(255)

  SELECT @NUMROWS = @@rowcount
  /* ERwin Builtin Trigger */
  /* EMPRESA  BUS on parent update no action */
  /* ERWIN_RELATION:CHECKSUM="0000fe4d", PARENT_OWNER="", PARENT_TABLE="EMPRESA"
    CHILD_OWNER="", CHILD_TABLE="BUS"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_10", FK_COLUMNS="ID_EMPRESA" */
  IF
    /* %ParentPK(" OR",UPDATE) */
    UPDATE(ID_EMPRESA)
  BEGIN
    IF EXISTS (
      SELECT * FROM deleted,BUS
      WHERE
        /*  %JoinFKPK(BUS,deleted," = "," AND") */
        BUS.ID_EMPRESA = deleted.ID_EMPRESA
    )
    BEGIN
      SELECT @errno  = 30005,
             @errmsg = 'Cannot update EMPRESA because BUS exists.'
      GOTO ERROR
    END
  END


  /* ERwin Builtin Trigger */
  RETURN
ERROR:
    raiserror @errno @errmsg
    rollback transaction
END

go




CREATE TRIGGER tD_ENCOMIENDAS ON ENCOMIENDAS FOR DELETE AS
/* ERwin Builtin Trigger */
/* DELETE trigger on ENCOMIENDAS */
BEGIN
  DECLARE  @errno   int,
           @errmsg  varchar(255)
    /* ERwin Builtin Trigger */
    /* ENCOMIENDAS  FACTURA_ENCOMIENDA on parent delete no action */
    /* ERWIN_RELATION:CHECKSUM="00035bc3", PARENT_OWNER="", PARENT_TABLE="ENCOMIENDAS"
    CHILD_OWNER="", CHILD_TABLE="FACTURA_ENCOMIENDA"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_18", FK_COLUMNS="ID_ENCOMIENDA" */
    IF EXISTS (
      SELECT * FROM deleted,FACTURA_ENCOMIENDA
      WHERE
        /*  %JoinFKPK(FACTURA_ENCOMIENDA,deleted," = "," AND") */
        FACTURA_ENCOMIENDA.ID_ENCOMIENDA = deleted.ID_ENCOMIENDA
    )
    BEGIN
      SELECT @errno  = 30001,
             @errmsg = 'Cannot delete ENCOMIENDAS because FACTURA_ENCOMIENDA exists.'
      GOTO ERROR
    END

    /* ERwin Builtin Trigger */
    /* TARJETA  ENCOMIENDAS on child delete no action */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="TARJETA"
    CHILD_OWNER="", CHILD_TABLE="ENCOMIENDAS"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_13", FK_COLUMNS="ID_TARJETA" */
    IF EXISTS (SELECT * FROM deleted,TARJETA
      WHERE
        /* %JoinFKPK(deleted,TARJETA," = "," AND") */
        deleted.ID_TARJETA = TARJETA.ID_TARJETA AND
        NOT EXISTS (
          SELECT * FROM ENCOMIENDAS
          WHERE
            /* %JoinFKPK(ENCOMIENDAS,TARJETA," = "," AND") */
            ENCOMIENDAS.ID_TARJETA = TARJETA.ID_TARJETA
        )
    )
    BEGIN
      SELECT @errno  = 30010,
             @errmsg = 'Cannot delete last ENCOMIENDAS because TARJETA exists.'
      GOTO ERROR
    END

    /* ERwin Builtin Trigger */
    /* VIAJE  ENCOMIENDAS on child delete no action */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="VIAJE"
    CHILD_OWNER="", CHILD_TABLE="ENCOMIENDAS"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_12", FK_COLUMNS="ID_VIAJE" */
    IF EXISTS (SELECT * FROM deleted,VIAJE
      WHERE
        /* %JoinFKPK(deleted,VIAJE," = "," AND") */
        deleted.ID_VIAJE = VIAJE.ID_VIAJE AND
        NOT EXISTS (
          SELECT * FROM ENCOMIENDAS
          WHERE
            /* %JoinFKPK(ENCOMIENDAS,VIAJE," = "," AND") */
            ENCOMIENDAS.ID_VIAJE = VIAJE.ID_VIAJE
        )
    )
    BEGIN
      SELECT @errno  = 30010,
             @errmsg = 'Cannot delete last ENCOMIENDAS because VIAJE exists.'
      GOTO ERROR
    END


    /* ERwin Builtin Trigger */
    RETURN
ERROR:
    raiserror @errno @errmsg
    rollback transaction
END

go


CREATE TRIGGER tU_ENCOMIENDAS ON ENCOMIENDAS FOR UPDATE AS
/* ERwin Builtin Trigger */
/* UPDATE trigger on ENCOMIENDAS */
BEGIN
  DECLARE  @NUMROWS int,
           @nullcnt int,
           @validcnt int,
           @insID_ENCOMIENDA integer,
           @errno   int,
           @errmsg  varchar(255)

  SELECT @NUMROWS = @@rowcount
  /* ERwin Builtin Trigger */
  /* ENCOMIENDAS  FACTURA_ENCOMIENDA on parent update no action */
  /* ERWIN_RELATION:CHECKSUM="0003db66", PARENT_OWNER="", PARENT_TABLE="ENCOMIENDAS"
    CHILD_OWNER="", CHILD_TABLE="FACTURA_ENCOMIENDA"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_18", FK_COLUMNS="ID_ENCOMIENDA" */
  IF
    /* %ParentPK(" OR",UPDATE) */
    UPDATE(ID_ENCOMIENDA)
  BEGIN
    IF EXISTS (
      SELECT * FROM deleted,FACTURA_ENCOMIENDA
      WHERE
        /*  %JoinFKPK(FACTURA_ENCOMIENDA,deleted," = "," AND") */
        FACTURA_ENCOMIENDA.ID_ENCOMIENDA = deleted.ID_ENCOMIENDA
    )
    BEGIN
      SELECT @errno  = 30005,
             @errmsg = 'Cannot update ENCOMIENDAS because FACTURA_ENCOMIENDA exists.'
      GOTO ERROR
    END
  END

  /* ERwin Builtin Trigger */
  /* TARJETA  ENCOMIENDAS on child update no action */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="TARJETA"
    CHILD_OWNER="", CHILD_TABLE="ENCOMIENDAS"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_13", FK_COLUMNS="ID_TARJETA" */
  IF
    /* %ChildFK(" OR",UPDATE) */
    UPDATE(ID_TARJETA)
  BEGIN
    SELECT @nullcnt = 0
    SELECT @validcnt = count(*)
      FROM inserted,TARJETA
        WHERE
          /* %JoinFKPK(inserted,TARJETA) */
          inserted.ID_TARJETA = TARJETA.ID_TARJETA
    /* %NotnullFK(inserted," IS NULL","select @nullcnt = count(*) from inserted where"," AND") */
    select @nullcnt = count(*) from inserted where
      inserted.ID_TARJETA IS NULL
    IF @validcnt + @nullcnt != @NUMROWS
    BEGIN
      SELECT @errno  = 30007,
             @errmsg = 'Cannot update ENCOMIENDAS because TARJETA does not exist.'
      GOTO ERROR
    END
  END

  /* ERwin Builtin Trigger */
  /* VIAJE  ENCOMIENDAS on child update no action */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="VIAJE"
    CHILD_OWNER="", CHILD_TABLE="ENCOMIENDAS"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_12", FK_COLUMNS="ID_VIAJE" */
  IF
    /* %ChildFK(" OR",UPDATE) */
    UPDATE(ID_VIAJE)
  BEGIN
    SELECT @nullcnt = 0
    SELECT @validcnt = count(*)
      FROM inserted,VIAJE
        WHERE
          /* %JoinFKPK(inserted,VIAJE) */
          inserted.ID_VIAJE = VIAJE.ID_VIAJE
    /* %NotnullFK(inserted," IS NULL","select @nullcnt = count(*) from inserted where"," AND") */
    select @nullcnt = count(*) from inserted where
      inserted.ID_VIAJE IS NULL
    IF @validcnt + @nullcnt != @NUMROWS
    BEGIN
      SELECT @errno  = 30007,
             @errmsg = 'Cannot update ENCOMIENDAS because VIAJE does not exist.'
      GOTO ERROR
    END
  END


  /* ERwin Builtin Trigger */
  RETURN
ERROR:
    raiserror @errno @errmsg
    rollback transaction
END

go




CREATE TRIGGER tD_FACTURA ON FACTURA FOR DELETE AS
/* ERwin Builtin Trigger */
/* DELETE trigger on FACTURA */
BEGIN
  DECLARE  @errno   int,
           @errmsg  varchar(255)
    /* ERwin Builtin Trigger */
    /* VIAJE  FACTURA on child delete no action */
    /* ERWIN_RELATION:CHECKSUM="00023656", PARENT_OWNER="", PARENT_TABLE="VIAJE"
    CHILD_OWNER="", CHILD_TABLE="FACTURA"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_15", FK_COLUMNS="ID_VIAJE" */
    IF EXISTS (SELECT * FROM deleted,VIAJE
      WHERE
        /* %JoinFKPK(deleted,VIAJE," = "," AND") */
        deleted.ID_VIAJE = VIAJE.ID_VIAJE AND
        NOT EXISTS (
          SELECT * FROM FACTURA
          WHERE
            /* %JoinFKPK(FACTURA,VIAJE," = "," AND") */
            FACTURA.ID_VIAJE = VIAJE.ID_VIAJE
        )
    )
    BEGIN
      SELECT @errno  = 30010,
             @errmsg = 'Cannot delete last FACTURA because VIAJE exists.'
      GOTO ERROR
    END

    /* ERwin Builtin Trigger */
    /* TARJETA  FACTURA on child delete no action */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="TARJETA"
    CHILD_OWNER="", CHILD_TABLE="FACTURA"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_14", FK_COLUMNS="ID_TARJETA" */
    IF EXISTS (SELECT * FROM deleted,TARJETA
      WHERE
        /* %JoinFKPK(deleted,TARJETA," = "," AND") */
        deleted.ID_TARJETA = TARJETA.ID_TARJETA AND
        NOT EXISTS (
          SELECT * FROM FACTURA
          WHERE
            /* %JoinFKPK(FACTURA,TARJETA," = "," AND") */
            FACTURA.ID_TARJETA = TARJETA.ID_TARJETA
        )
    )
    BEGIN
      SELECT @errno  = 30010,
             @errmsg = 'Cannot delete last FACTURA because TARJETA exists.'
      GOTO ERROR
    END


    /* ERwin Builtin Trigger */
    RETURN
ERROR:
    raiserror @errno @errmsg
    rollback transaction
END

go


CREATE TRIGGER tU_FACTURA ON FACTURA FOR UPDATE AS
/* ERwin Builtin Trigger */
/* UPDATE trigger on FACTURA */
BEGIN
  DECLARE  @NUMROWS int,
           @nullcnt int,
           @validcnt int,
           @insID_FACTURA integer,
           @errno   int,
           @errmsg  varchar(255)

  SELECT @NUMROWS = @@rowcount
  /* ERwin Builtin Trigger */
  /* VIAJE  FACTURA on child update no action */
  /* ERWIN_RELATION:CHECKSUM="0002cf8e", PARENT_OWNER="", PARENT_TABLE="VIAJE"
    CHILD_OWNER="", CHILD_TABLE="FACTURA"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_15", FK_COLUMNS="ID_VIAJE" */
  IF
    /* %ChildFK(" OR",UPDATE) */
    UPDATE(ID_VIAJE)
  BEGIN
    SELECT @nullcnt = 0
    SELECT @validcnt = count(*)
      FROM inserted,VIAJE
        WHERE
          /* %JoinFKPK(inserted,VIAJE) */
          inserted.ID_VIAJE = VIAJE.ID_VIAJE
    /* %NotnullFK(inserted," IS NULL","select @nullcnt = count(*) from inserted where"," AND") */
    select @nullcnt = count(*) from inserted where
      inserted.ID_VIAJE IS NULL
    IF @validcnt + @nullcnt != @NUMROWS
    BEGIN
      SELECT @errno  = 30007,
             @errmsg = 'Cannot update FACTURA because VIAJE does not exist.'
      GOTO ERROR
    END
  END

  /* ERwin Builtin Trigger */
  /* TARJETA  FACTURA on child update no action */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="TARJETA"
    CHILD_OWNER="", CHILD_TABLE="FACTURA"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_14", FK_COLUMNS="ID_TARJETA" */
  IF
    /* %ChildFK(" OR",UPDATE) */
    UPDATE(ID_TARJETA)
  BEGIN
    SELECT @nullcnt = 0
    SELECT @validcnt = count(*)
      FROM inserted,TARJETA
        WHERE
          /* %JoinFKPK(inserted,TARJETA) */
          inserted.ID_TARJETA = TARJETA.ID_TARJETA
    /* %NotnullFK(inserted," IS NULL","select @nullcnt = count(*) from inserted where"," AND") */
    select @nullcnt = count(*) from inserted where
      inserted.ID_TARJETA IS NULL
    IF @validcnt + @nullcnt != @NUMROWS
    BEGIN
      SELECT @errno  = 30007,
             @errmsg = 'Cannot update FACTURA because TARJETA does not exist.'
      GOTO ERROR
    END
  END


  /* ERwin Builtin Trigger */
  RETURN
ERROR:
    raiserror @errno @errmsg
    rollback transaction
END

go




CREATE TRIGGER tD_FACTURA_ENCOMIENDA ON FACTURA_ENCOMIENDA FOR DELETE AS
/* ERwin Builtin Trigger */
/* DELETE trigger on FACTURA_ENCOMIENDA */
BEGIN
  DECLARE  @errno   int,
           @errmsg  varchar(255)
    /* ERwin Builtin Trigger */
    /* ENCOMIENDAS  FACTURA_ENCOMIENDA on child delete no action */
    /* ERWIN_RELATION:CHECKSUM="00029910", PARENT_OWNER="", PARENT_TABLE="ENCOMIENDAS"
    CHILD_OWNER="", CHILD_TABLE="FACTURA_ENCOMIENDA"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_18", FK_COLUMNS="ID_ENCOMIENDA" */
    IF EXISTS (SELECT * FROM deleted,ENCOMIENDAS
      WHERE
        /* %JoinFKPK(deleted,ENCOMIENDAS," = "," AND") */
        deleted.ID_ENCOMIENDA = ENCOMIENDAS.ID_ENCOMIENDA AND
        NOT EXISTS (
          SELECT * FROM FACTURA_ENCOMIENDA
          WHERE
            /* %JoinFKPK(FACTURA_ENCOMIENDA,ENCOMIENDAS," = "," AND") */
            FACTURA_ENCOMIENDA.ID_ENCOMIENDA = ENCOMIENDAS.ID_ENCOMIENDA
        )
    )
    BEGIN
      SELECT @errno  = 30010,
             @errmsg = 'Cannot delete last FACTURA_ENCOMIENDA because ENCOMIENDAS exists.'
      GOTO ERROR
    END

    /* ERwin Builtin Trigger */
    /* TARJETA  FACTURA_ENCOMIENDA on child delete no action */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="TARJETA"
    CHILD_OWNER="", CHILD_TABLE="FACTURA_ENCOMIENDA"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_16", FK_COLUMNS="ID_TARJETA" */
    IF EXISTS (SELECT * FROM deleted,TARJETA
      WHERE
        /* %JoinFKPK(deleted,TARJETA," = "," AND") */
        deleted.ID_TARJETA = TARJETA.ID_TARJETA AND
        NOT EXISTS (
          SELECT * FROM FACTURA_ENCOMIENDA
          WHERE
            /* %JoinFKPK(FACTURA_ENCOMIENDA,TARJETA," = "," AND") */
            FACTURA_ENCOMIENDA.ID_TARJETA = TARJETA.ID_TARJETA
        )
    )
    BEGIN
      SELECT @errno  = 30010,
             @errmsg = 'Cannot delete last FACTURA_ENCOMIENDA because TARJETA exists.'
      GOTO ERROR
    END


    /* ERwin Builtin Trigger */
    RETURN
ERROR:
    raiserror @errno @errmsg
    rollback transaction
END

go


CREATE TRIGGER tU_FACTURA_ENCOMIENDA ON FACTURA_ENCOMIENDA FOR UPDATE AS
/* ERwin Builtin Trigger */
/* UPDATE trigger on FACTURA_ENCOMIENDA */
BEGIN
  DECLARE  @NUMROWS int,
           @nullcnt int,
           @validcnt int,
           @insID_FACTU_ENCOMIENDA integer,
           @errno   int,
           @errmsg  varchar(255)

  SELECT @NUMROWS = @@rowcount
  /* ERwin Builtin Trigger */
  /* ENCOMIENDAS  FACTURA_ENCOMIENDA on child update no action */
  /* ERWIN_RELATION:CHECKSUM="000301a9", PARENT_OWNER="", PARENT_TABLE="ENCOMIENDAS"
    CHILD_OWNER="", CHILD_TABLE="FACTURA_ENCOMIENDA"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_18", FK_COLUMNS="ID_ENCOMIENDA" */
  IF
    /* %ChildFK(" OR",UPDATE) */
    UPDATE(ID_ENCOMIENDA)
  BEGIN
    SELECT @nullcnt = 0
    SELECT @validcnt = count(*)
      FROM inserted,ENCOMIENDAS
        WHERE
          /* %JoinFKPK(inserted,ENCOMIENDAS) */
          inserted.ID_ENCOMIENDA = ENCOMIENDAS.ID_ENCOMIENDA
    /* %NotnullFK(inserted," IS NULL","select @nullcnt = count(*) from inserted where"," AND") */
    select @nullcnt = count(*) from inserted where
      inserted.ID_ENCOMIENDA IS NULL
    IF @validcnt + @nullcnt != @NUMROWS
    BEGIN
      SELECT @errno  = 30007,
             @errmsg = 'Cannot update FACTURA_ENCOMIENDA because ENCOMIENDAS does not exist.'
      GOTO ERROR
    END
  END

  /* ERwin Builtin Trigger */
  /* TARJETA  FACTURA_ENCOMIENDA on child update no action */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="TARJETA"
    CHILD_OWNER="", CHILD_TABLE="FACTURA_ENCOMIENDA"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_16", FK_COLUMNS="ID_TARJETA" */
  IF
    /* %ChildFK(" OR",UPDATE) */
    UPDATE(ID_TARJETA)
  BEGIN
    SELECT @nullcnt = 0
    SELECT @validcnt = count(*)
      FROM inserted,TARJETA
        WHERE
          /* %JoinFKPK(inserted,TARJETA) */
          inserted.ID_TARJETA = TARJETA.ID_TARJETA
    /* %NotnullFK(inserted," IS NULL","select @nullcnt = count(*) from inserted where"," AND") */
    select @nullcnt = count(*) from inserted where
      inserted.ID_TARJETA IS NULL
    IF @validcnt + @nullcnt != @NUMROWS
    BEGIN
      SELECT @errno  = 30007,
             @errmsg = 'Cannot update FACTURA_ENCOMIENDA because TARJETA does not exist.'
      GOTO ERROR
    END
  END


  /* ERwin Builtin Trigger */
  RETURN
ERROR:
    raiserror @errno @errmsg
    rollback transaction
END

go




CREATE TRIGGER tD_HORARIO ON HORARIO FOR DELETE AS
/* ERwin Builtin Trigger */
/* DELETE trigger on HORARIO */
BEGIN
  DECLARE  @errno   int,
           @errmsg  varchar(255)
    /* ERwin Builtin Trigger */
    /* HORARIO  VIAJE on parent delete no action */
    /* ERWIN_RELATION:CHECKSUM="0000ec42", PARENT_OWNER="", PARENT_TABLE="HORARIO"
    CHILD_OWNER="", CHILD_TABLE="VIAJE"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_8", FK_COLUMNS="ID_HORARIO" */
    IF EXISTS (
      SELECT * FROM deleted,VIAJE
      WHERE
        /*  %JoinFKPK(VIAJE,deleted," = "," AND") */
        VIAJE.ID_HORARIO = deleted.ID_HORARIO
    )
    BEGIN
      SELECT @errno  = 30001,
             @errmsg = 'Cannot delete HORARIO because VIAJE exists.'
      GOTO ERROR
    END


    /* ERwin Builtin Trigger */
    RETURN
ERROR:
    raiserror @errno @errmsg
    rollback transaction
END

go


CREATE TRIGGER tU_HORARIO ON HORARIO FOR UPDATE AS
/* ERwin Builtin Trigger */
/* UPDATE trigger on HORARIO */
BEGIN
  DECLARE  @NUMROWS int,
           @nullcnt int,
           @validcnt int,
           @insID_HORARIO integer,
           @errno   int,
           @errmsg  varchar(255)

  SELECT @NUMROWS = @@rowcount
  /* ERwin Builtin Trigger */
  /* HORARIO  VIAJE on parent update no action */
  /* ERWIN_RELATION:CHECKSUM="0000f9e2", PARENT_OWNER="", PARENT_TABLE="HORARIO"
    CHILD_OWNER="", CHILD_TABLE="VIAJE"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_8", FK_COLUMNS="ID_HORARIO" */
  IF
    /* %ParentPK(" OR",UPDATE) */
    UPDATE(ID_HORARIO)
  BEGIN
    IF EXISTS (
      SELECT * FROM deleted,VIAJE
      WHERE
        /*  %JoinFKPK(VIAJE,deleted," = "," AND") */
        VIAJE.ID_HORARIO = deleted.ID_HORARIO
    )
    BEGIN
      SELECT @errno  = 30005,
             @errmsg = 'Cannot update HORARIO because VIAJE exists.'
      GOTO ERROR
    END
  END


  /* ERwin Builtin Trigger */
  RETURN
ERROR:
    raiserror @errno @errmsg
    rollback transaction
END

go




CREATE TRIGGER tD_PERSONA ON PERSONA FOR DELETE AS
/* ERwin Builtin Trigger */
/* DELETE trigger on PERSONA */
BEGIN
  DECLARE  @errno   int,
           @errmsg  varchar(255)
    /* ERwin Builtin Trigger */
    /* PERSONA  CHOFER on parent delete no action */
    /* ERWIN_RELATION:CHECKSUM="0001c456", PARENT_OWNER="", PARENT_TABLE="PERSONA"
    CHILD_OWNER="", CHILD_TABLE="CHOFER"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_2", FK_COLUMNS="ID_PERSONA" */
    IF EXISTS (
      SELECT * FROM deleted,CHOFER
      WHERE
        /*  %JoinFKPK(CHOFER,deleted," = "," AND") */
        CHOFER.ID_PERSONA = deleted.ID_PERSONA
    )
    BEGIN
      SELECT @errno  = 30001,
             @errmsg = 'Cannot delete PERSONA because CHOFER exists.'
      GOTO ERROR
    END

    /* ERwin Builtin Trigger */
    /* PERSONA  CLIENTE on parent delete no action */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="PERSONA"
    CHILD_OWNER="", CHILD_TABLE="CLIENTE"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_1", FK_COLUMNS="ID_PERSONA" */
    IF EXISTS (
      SELECT * FROM deleted,CLIENTE
      WHERE
        /*  %JoinFKPK(CLIENTE,deleted," = "," AND") */
        CLIENTE.ID_PERSONA = deleted.ID_PERSONA
    )
    BEGIN
      SELECT @errno  = 30001,
             @errmsg = 'Cannot delete PERSONA because CLIENTE exists.'
      GOTO ERROR
    END


    /* ERwin Builtin Trigger */
    RETURN
ERROR:
    raiserror @errno @errmsg
    rollback transaction
END

go


CREATE TRIGGER tU_PERSONA ON PERSONA FOR UPDATE AS
/* ERwin Builtin Trigger */
/* UPDATE trigger on PERSONA */
BEGIN
  DECLARE  @NUMROWS int,
           @nullcnt int,
           @validcnt int,
           @insID_PERSONA integer,
           @errno   int,
           @errmsg  varchar(255)

  SELECT @NUMROWS = @@rowcount
  /* ERwin Builtin Trigger */
  /* PERSONA  CHOFER on parent update no action */
  /* ERWIN_RELATION:CHECKSUM="0001f6cb", PARENT_OWNER="", PARENT_TABLE="PERSONA"
    CHILD_OWNER="", CHILD_TABLE="CHOFER"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_2", FK_COLUMNS="ID_PERSONA" */
  IF
    /* %ParentPK(" OR",UPDATE) */
    UPDATE(ID_PERSONA)
  BEGIN
    IF EXISTS (
      SELECT * FROM deleted,CHOFER
      WHERE
        /*  %JoinFKPK(CHOFER,deleted," = "," AND") */
        CHOFER.ID_PERSONA = deleted.ID_PERSONA
    )
    BEGIN
      SELECT @errno  = 30005,
             @errmsg = 'Cannot update PERSONA because CHOFER exists.'
      GOTO ERROR
    END
  END

  /* ERwin Builtin Trigger */
  /* PERSONA  CLIENTE on parent update no action */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="PERSONA"
    CHILD_OWNER="", CHILD_TABLE="CLIENTE"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_1", FK_COLUMNS="ID_PERSONA" */
  IF
    /* %ParentPK(" OR",UPDATE) */
    UPDATE(ID_PERSONA)
  BEGIN
    IF EXISTS (
      SELECT * FROM deleted,CLIENTE
      WHERE
        /*  %JoinFKPK(CLIENTE,deleted," = "," AND") */
        CLIENTE.ID_PERSONA = deleted.ID_PERSONA
    )
    BEGIN
      SELECT @errno  = 30005,
             @errmsg = 'Cannot update PERSONA because CLIENTE exists.'
      GOTO ERROR
    END
  END


  /* ERwin Builtin Trigger */
  RETURN
ERROR:
    raiserror @errno @errmsg
    rollback transaction
END

go




CREATE TRIGGER tD_RUTA ON RUTA FOR DELETE AS
/* ERwin Builtin Trigger */
/* DELETE trigger on RUTA */
BEGIN
  DECLARE  @errno   int,
           @errmsg  varchar(255)
    /* ERwin Builtin Trigger */
    /* RUTA  VIAJE on parent delete no action */
    /* ERWIN_RELATION:CHECKSUM="0000daf7", PARENT_OWNER="", PARENT_TABLE="RUTA"
    CHILD_OWNER="", CHILD_TABLE="VIAJE"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_7", FK_COLUMNS="ID_RUTA" */
    IF EXISTS (
      SELECT * FROM deleted,VIAJE
      WHERE
        /*  %JoinFKPK(VIAJE,deleted," = "," AND") */
        VIAJE.ID_RUTA = deleted.ID_RUTA
    )
    BEGIN
      SELECT @errno  = 30001,
             @errmsg = 'Cannot delete RUTA because VIAJE exists.'
      GOTO ERROR
    END


    /* ERwin Builtin Trigger */
    RETURN
ERROR:
    raiserror @errno @errmsg
    rollback transaction
END

go


CREATE TRIGGER tU_RUTA ON RUTA FOR UPDATE AS
/* ERwin Builtin Trigger */
/* UPDATE trigger on RUTA */
BEGIN
  DECLARE  @NUMROWS int,
           @nullcnt int,
           @validcnt int,
           @insID_RUTA integer,
           @errno   int,
           @errmsg  varchar(255)

  SELECT @NUMROWS = @@rowcount
  /* ERwin Builtin Trigger */
  /* RUTA  VIAJE on parent update no action */
  /* ERWIN_RELATION:CHECKSUM="0000fc68", PARENT_OWNER="", PARENT_TABLE="RUTA"
    CHILD_OWNER="", CHILD_TABLE="VIAJE"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_7", FK_COLUMNS="ID_RUTA" */
  IF
    /* %ParentPK(" OR",UPDATE) */
    UPDATE(ID_RUTA)
  BEGIN
    IF EXISTS (
      SELECT * FROM deleted,VIAJE
      WHERE
        /*  %JoinFKPK(VIAJE,deleted," = "," AND") */
        VIAJE.ID_RUTA = deleted.ID_RUTA
    )
    BEGIN
      SELECT @errno  = 30005,
             @errmsg = 'Cannot update RUTA because VIAJE exists.'
      GOTO ERROR
    END
  END


  /* ERwin Builtin Trigger */
  RETURN
ERROR:
    raiserror @errno @errmsg
    rollback transaction
END

go




CREATE TRIGGER tD_TARJETA ON TARJETA FOR DELETE AS
/* ERwin Builtin Trigger */
/* DELETE trigger on TARJETA */
BEGIN
  DECLARE  @errno   int,
           @errmsg  varchar(255)
    /* ERwin Builtin Trigger */
    /* TARJETA  FACTURA_ENCOMIENDA on parent delete no action */
    /* ERWIN_RELATION:CHECKSUM="0003f53c", PARENT_OWNER="", PARENT_TABLE="TARJETA"
    CHILD_OWNER="", CHILD_TABLE="FACTURA_ENCOMIENDA"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_16", FK_COLUMNS="ID_TARJETA" */
    IF EXISTS (
      SELECT * FROM deleted,FACTURA_ENCOMIENDA
      WHERE
        /*  %JoinFKPK(FACTURA_ENCOMIENDA,deleted," = "," AND") */
        FACTURA_ENCOMIENDA.ID_TARJETA = deleted.ID_TARJETA
    )
    BEGIN
      SELECT @errno  = 30001,
             @errmsg = 'Cannot delete TARJETA because FACTURA_ENCOMIENDA exists.'
      GOTO ERROR
    END

    /* ERwin Builtin Trigger */
    /* TARJETA  FACTURA on parent delete no action */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="TARJETA"
    CHILD_OWNER="", CHILD_TABLE="FACTURA"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_14", FK_COLUMNS="ID_TARJETA" */
    IF EXISTS (
      SELECT * FROM deleted,FACTURA
      WHERE
        /*  %JoinFKPK(FACTURA,deleted," = "," AND") */
        FACTURA.ID_TARJETA = deleted.ID_TARJETA
    )
    BEGIN
      SELECT @errno  = 30001,
             @errmsg = 'Cannot delete TARJETA because FACTURA exists.'
      GOTO ERROR
    END

    /* ERwin Builtin Trigger */
    /* TARJETA  ENCOMIENDAS on parent delete no action */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="TARJETA"
    CHILD_OWNER="", CHILD_TABLE="ENCOMIENDAS"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_13", FK_COLUMNS="ID_TARJETA" */
    IF EXISTS (
      SELECT * FROM deleted,ENCOMIENDAS
      WHERE
        /*  %JoinFKPK(ENCOMIENDAS,deleted," = "," AND") */
        ENCOMIENDAS.ID_TARJETA = deleted.ID_TARJETA
    )
    BEGIN
      SELECT @errno  = 30001,
             @errmsg = 'Cannot delete TARJETA because ENCOMIENDAS exists.'
      GOTO ERROR
    END

    /* ERwin Builtin Trigger */
    /* CLIENTE  TARJETA on child delete no action */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="CLIENTE"
    CHILD_OWNER="", CHILD_TABLE="TARJETA"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_4", FK_COLUMNS="ID_CLIENTE" */
    IF EXISTS (SELECT * FROM deleted,CLIENTE
      WHERE
        /* %JoinFKPK(deleted,CLIENTE," = "," AND") */
        deleted.ID_CLIENTE = CLIENTE.ID_CLIENTE AND
        NOT EXISTS (
          SELECT * FROM TARJETA
          WHERE
            /* %JoinFKPK(TARJETA,CLIENTE," = "," AND") */
            TARJETA.ID_CLIENTE = CLIENTE.ID_CLIENTE
        )
    )
    BEGIN
      SELECT @errno  = 30010,
             @errmsg = 'Cannot delete last TARJETA because CLIENTE exists.'
      GOTO ERROR
    END


    /* ERwin Builtin Trigger */
    RETURN
ERROR:
    raiserror @errno @errmsg
    rollback transaction
END

go


CREATE TRIGGER tU_TARJETA ON TARJETA FOR UPDATE AS
/* ERwin Builtin Trigger */
/* UPDATE trigger on TARJETA */
BEGIN
  DECLARE  @NUMROWS int,
           @nullcnt int,
           @validcnt int,
           @insID_TARJETA integer,
           @errno   int,
           @errmsg  varchar(255)

  SELECT @NUMROWS = @@rowcount
  /* ERwin Builtin Trigger */
  /* TARJETA  FACTURA_ENCOMIENDA on parent update no action */
  /* ERWIN_RELATION:CHECKSUM="00049e9c", PARENT_OWNER="", PARENT_TABLE="TARJETA"
    CHILD_OWNER="", CHILD_TABLE="FACTURA_ENCOMIENDA"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_16", FK_COLUMNS="ID_TARJETA" */
  IF
    /* %ParentPK(" OR",UPDATE) */
    UPDATE(ID_TARJETA)
  BEGIN
    IF EXISTS (
      SELECT * FROM deleted,FACTURA_ENCOMIENDA
      WHERE
        /*  %JoinFKPK(FACTURA_ENCOMIENDA,deleted," = "," AND") */
        FACTURA_ENCOMIENDA.ID_TARJETA = deleted.ID_TARJETA
    )
    BEGIN
      SELECT @errno  = 30005,
             @errmsg = 'Cannot update TARJETA because FACTURA_ENCOMIENDA exists.'
      GOTO ERROR
    END
  END

  /* ERwin Builtin Trigger */
  /* TARJETA  FACTURA on parent update no action */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="TARJETA"
    CHILD_OWNER="", CHILD_TABLE="FACTURA"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_14", FK_COLUMNS="ID_TARJETA" */
  IF
    /* %ParentPK(" OR",UPDATE) */
    UPDATE(ID_TARJETA)
  BEGIN
    IF EXISTS (
      SELECT * FROM deleted,FACTURA
      WHERE
        /*  %JoinFKPK(FACTURA,deleted," = "," AND") */
        FACTURA.ID_TARJETA = deleted.ID_TARJETA
    )
    BEGIN
      SELECT @errno  = 30005,
             @errmsg = 'Cannot update TARJETA because FACTURA exists.'
      GOTO ERROR
    END
  END

  /* ERwin Builtin Trigger */
  /* TARJETA  ENCOMIENDAS on parent update no action */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="TARJETA"
    CHILD_OWNER="", CHILD_TABLE="ENCOMIENDAS"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_13", FK_COLUMNS="ID_TARJETA" */
  IF
    /* %ParentPK(" OR",UPDATE) */
    UPDATE(ID_TARJETA)
  BEGIN
    IF EXISTS (
      SELECT * FROM deleted,ENCOMIENDAS
      WHERE
        /*  %JoinFKPK(ENCOMIENDAS,deleted," = "," AND") */
        ENCOMIENDAS.ID_TARJETA = deleted.ID_TARJETA
    )
    BEGIN
      SELECT @errno  = 30005,
             @errmsg = 'Cannot update TARJETA because ENCOMIENDAS exists.'
      GOTO ERROR
    END
  END

  /* ERwin Builtin Trigger */
  /* CLIENTE  TARJETA on child update no action */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="CLIENTE"
    CHILD_OWNER="", CHILD_TABLE="TARJETA"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_4", FK_COLUMNS="ID_CLIENTE" */
  IF
    /* %ChildFK(" OR",UPDATE) */
    UPDATE(ID_CLIENTE)
  BEGIN
    SELECT @nullcnt = 0
    SELECT @validcnt = count(*)
      FROM inserted,CLIENTE
        WHERE
          /* %JoinFKPK(inserted,CLIENTE) */
          inserted.ID_CLIENTE = CLIENTE.ID_CLIENTE
    /* %NotnullFK(inserted," IS NULL","select @nullcnt = count(*) from inserted where"," AND") */
    select @nullcnt = count(*) from inserted where
      inserted.ID_CLIENTE IS NULL
    IF @validcnt + @nullcnt != @NUMROWS
    BEGIN
      SELECT @errno  = 30007,
             @errmsg = 'Cannot update TARJETA because CLIENTE does not exist.'
      GOTO ERROR
    END
  END


  /* ERwin Builtin Trigger */
  RETURN
ERROR:
    raiserror @errno @errmsg
    rollback transaction
END

go




CREATE TRIGGER tD_VIAJE ON VIAJE FOR DELETE AS
/* ERwin Builtin Trigger */
/* DELETE trigger on VIAJE */
BEGIN
  DECLARE  @errno   int,
           @errmsg  varchar(255)
    /* ERwin Builtin Trigger */
    /* VIAJE  FACTURA on parent delete no action */
    /* ERWIN_RELATION:CHECKSUM="000605d9", PARENT_OWNER="", PARENT_TABLE="VIAJE"
    CHILD_OWNER="", CHILD_TABLE="FACTURA"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_15", FK_COLUMNS="ID_VIAJE" */
    IF EXISTS (
      SELECT * FROM deleted,FACTURA
      WHERE
        /*  %JoinFKPK(FACTURA,deleted," = "," AND") */
        FACTURA.ID_VIAJE = deleted.ID_VIAJE
    )
    BEGIN
      SELECT @errno  = 30001,
             @errmsg = 'Cannot delete VIAJE because FACTURA exists.'
      GOTO ERROR
    END

    /* ERwin Builtin Trigger */
    /* VIAJE  ENCOMIENDAS on parent delete no action */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="VIAJE"
    CHILD_OWNER="", CHILD_TABLE="ENCOMIENDAS"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_12", FK_COLUMNS="ID_VIAJE" */
    IF EXISTS (
      SELECT * FROM deleted,ENCOMIENDAS
      WHERE
        /*  %JoinFKPK(ENCOMIENDAS,deleted," = "," AND") */
        ENCOMIENDAS.ID_VIAJE = deleted.ID_VIAJE
    )
    BEGIN
      SELECT @errno  = 30001,
             @errmsg = 'Cannot delete VIAJE because ENCOMIENDAS exists.'
      GOTO ERROR
    END

    /* ERwin Builtin Trigger */
    /* BUS  VIAJE on child delete no action */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="BUS"
    CHILD_OWNER="", CHILD_TABLE="VIAJE"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_11", FK_COLUMNS="ID_BUS" */
    IF EXISTS (SELECT * FROM deleted,BUS
      WHERE
        /* %JoinFKPK(deleted,BUS," = "," AND") */
        deleted.ID_BUS = BUS.ID_BUS AND
        NOT EXISTS (
          SELECT * FROM VIAJE
          WHERE
            /* %JoinFKPK(VIAJE,BUS," = "," AND") */
            VIAJE.ID_BUS = BUS.ID_BUS
        )
    )
    BEGIN
      SELECT @errno  = 30010,
             @errmsg = 'Cannot delete last VIAJE because BUS exists.'
      GOTO ERROR
    END

    /* ERwin Builtin Trigger */
    /* CHOFER  VIAJE on child delete no action */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="CHOFER"
    CHILD_OWNER="", CHILD_TABLE="VIAJE"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_9", FK_COLUMNS="ID_CHOFER" */
    IF EXISTS (SELECT * FROM deleted,CHOFER
      WHERE
        /* %JoinFKPK(deleted,CHOFER," = "," AND") */
        deleted.ID_CHOFER = CHOFER.ID_CHOFER AND
        NOT EXISTS (
          SELECT * FROM VIAJE
          WHERE
            /* %JoinFKPK(VIAJE,CHOFER," = "," AND") */
            VIAJE.ID_CHOFER = CHOFER.ID_CHOFER
        )
    )
    BEGIN
      SELECT @errno  = 30010,
             @errmsg = 'Cannot delete last VIAJE because CHOFER exists.'
      GOTO ERROR
    END

    /* ERwin Builtin Trigger */
    /* HORARIO  VIAJE on child delete no action */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="HORARIO"
    CHILD_OWNER="", CHILD_TABLE="VIAJE"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_8", FK_COLUMNS="ID_HORARIO" */
    IF EXISTS (SELECT * FROM deleted,HORARIO
      WHERE
        /* %JoinFKPK(deleted,HORARIO," = "," AND") */
        deleted.ID_HORARIO = HORARIO.ID_HORARIO AND
        NOT EXISTS (
          SELECT * FROM VIAJE
          WHERE
            /* %JoinFKPK(VIAJE,HORARIO," = "," AND") */
            VIAJE.ID_HORARIO = HORARIO.ID_HORARIO
        )
    )
    BEGIN
      SELECT @errno  = 30010,
             @errmsg = 'Cannot delete last VIAJE because HORARIO exists.'
      GOTO ERROR
    END

    /* ERwin Builtin Trigger */
    /* RUTA  VIAJE on child delete no action */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="RUTA"
    CHILD_OWNER="", CHILD_TABLE="VIAJE"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_7", FK_COLUMNS="ID_RUTA" */
    IF EXISTS (SELECT * FROM deleted,RUTA
      WHERE
        /* %JoinFKPK(deleted,RUTA," = "," AND") */
        deleted.ID_RUTA = RUTA.ID_RUTA AND
        NOT EXISTS (
          SELECT * FROM VIAJE
          WHERE
            /* %JoinFKPK(VIAJE,RUTA," = "," AND") */
            VIAJE.ID_RUTA = RUTA.ID_RUTA
        )
    )
    BEGIN
      SELECT @errno  = 30010,
             @errmsg = 'Cannot delete last VIAJE because RUTA exists.'
      GOTO ERROR
    END


    /* ERwin Builtin Trigger */
    RETURN
ERROR:
    raiserror @errno @errmsg
    rollback transaction
END

go


CREATE TRIGGER tU_VIAJE ON VIAJE FOR UPDATE AS
/* ERwin Builtin Trigger */
/* UPDATE trigger on VIAJE */
BEGIN
  DECLARE  @NUMROWS int,
           @nullcnt int,
           @validcnt int,
           @insID_VIAJE integer,
           @errno   int,
           @errmsg  varchar(255)

  SELECT @NUMROWS = @@rowcount
  /* ERwin Builtin Trigger */
  /* VIAJE  FACTURA on parent update no action */
  /* ERWIN_RELATION:CHECKSUM="00075f10", PARENT_OWNER="", PARENT_TABLE="VIAJE"
    CHILD_OWNER="", CHILD_TABLE="FACTURA"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_15", FK_COLUMNS="ID_VIAJE" */
  IF
    /* %ParentPK(" OR",UPDATE) */
    UPDATE(ID_VIAJE)
  BEGIN
    IF EXISTS (
      SELECT * FROM deleted,FACTURA
      WHERE
        /*  %JoinFKPK(FACTURA,deleted," = "," AND") */
        FACTURA.ID_VIAJE = deleted.ID_VIAJE
    )
    BEGIN
      SELECT @errno  = 30005,
             @errmsg = 'Cannot update VIAJE because FACTURA exists.'
      GOTO ERROR
    END
  END

  /* ERwin Builtin Trigger */
  /* VIAJE  ENCOMIENDAS on parent update no action */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="VIAJE"
    CHILD_OWNER="", CHILD_TABLE="ENCOMIENDAS"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_12", FK_COLUMNS="ID_VIAJE" */
  IF
    /* %ParentPK(" OR",UPDATE) */
    UPDATE(ID_VIAJE)
  BEGIN
    IF EXISTS (
      SELECT * FROM deleted,ENCOMIENDAS
      WHERE
        /*  %JoinFKPK(ENCOMIENDAS,deleted," = "," AND") */
        ENCOMIENDAS.ID_VIAJE = deleted.ID_VIAJE
    )
    BEGIN
      SELECT @errno  = 30005,
             @errmsg = 'Cannot update VIAJE because ENCOMIENDAS exists.'
      GOTO ERROR
    END
  END

  /* ERwin Builtin Trigger */
  /* BUS  VIAJE on child update no action */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="BUS"
    CHILD_OWNER="", CHILD_TABLE="VIAJE"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_11", FK_COLUMNS="ID_BUS" */
  IF
    /* %ChildFK(" OR",UPDATE) */
    UPDATE(ID_BUS)
  BEGIN
    SELECT @nullcnt = 0
    SELECT @validcnt = count(*)
      FROM inserted,BUS
        WHERE
          /* %JoinFKPK(inserted,BUS) */
          inserted.ID_BUS = BUS.ID_BUS
    /* %NotnullFK(inserted," IS NULL","select @nullcnt = count(*) from inserted where"," AND") */
    select @nullcnt = count(*) from inserted where
      inserted.ID_BUS IS NULL
    IF @validcnt + @nullcnt != @NUMROWS
    BEGIN
      SELECT @errno  = 30007,
             @errmsg = 'Cannot update VIAJE because BUS does not exist.'
      GOTO ERROR
    END
  END

  /* ERwin Builtin Trigger */
  /* CHOFER  VIAJE on child update no action */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="CHOFER"
    CHILD_OWNER="", CHILD_TABLE="VIAJE"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_9", FK_COLUMNS="ID_CHOFER" */
  IF
    /* %ChildFK(" OR",UPDATE) */
    UPDATE(ID_CHOFER)
  BEGIN
    SELECT @nullcnt = 0
    SELECT @validcnt = count(*)
      FROM inserted,CHOFER
        WHERE
          /* %JoinFKPK(inserted,CHOFER) */
          inserted.ID_CHOFER = CHOFER.ID_CHOFER
    /* %NotnullFK(inserted," IS NULL","select @nullcnt = count(*) from inserted where"," AND") */
    select @nullcnt = count(*) from inserted where
      inserted.ID_CHOFER IS NULL
    IF @validcnt + @nullcnt != @NUMROWS
    BEGIN
      SELECT @errno  = 30007,
             @errmsg = 'Cannot update VIAJE because CHOFER does not exist.'
      GOTO ERROR
    END
  END

  /* ERwin Builtin Trigger */
  /* HORARIO  VIAJE on child update no action */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="HORARIO"
    CHILD_OWNER="", CHILD_TABLE="VIAJE"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_8", FK_COLUMNS="ID_HORARIO" */
  IF
    /* %ChildFK(" OR",UPDATE) */
    UPDATE(ID_HORARIO)
  BEGIN
    SELECT @nullcnt = 0
    SELECT @validcnt = count(*)
      FROM inserted,HORARIO
        WHERE
          /* %JoinFKPK(inserted,HORARIO) */
          inserted.ID_HORARIO = HORARIO.ID_HORARIO
    /* %NotnullFK(inserted," IS NULL","select @nullcnt = count(*) from inserted where"," AND") */
    select @nullcnt = count(*) from inserted where
      inserted.ID_HORARIO IS NULL
    IF @validcnt + @nullcnt != @NUMROWS
    BEGIN
      SELECT @errno  = 30007,
             @errmsg = 'Cannot update VIAJE because HORARIO does not exist.'
      GOTO ERROR
    END
  END

  /* ERwin Builtin Trigger */
  /* RUTA  VIAJE on child update no action */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="RUTA"
    CHILD_OWNER="", CHILD_TABLE="VIAJE"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_7", FK_COLUMNS="ID_RUTA" */
  IF
    /* %ChildFK(" OR",UPDATE) */
    UPDATE(ID_RUTA)
  BEGIN
    SELECT @nullcnt = 0
    SELECT @validcnt = count(*)
      FROM inserted,RUTA
        WHERE
          /* %JoinFKPK(inserted,RUTA) */
          inserted.ID_RUTA = RUTA.ID_RUTA
    /* %NotnullFK(inserted," IS NULL","select @nullcnt = count(*) from inserted where"," AND") */
    select @nullcnt = count(*) from inserted where
      inserted.ID_RUTA IS NULL
    IF @validcnt + @nullcnt != @NUMROWS
    BEGIN
      SELECT @errno  = 30007,
             @errmsg = 'Cannot update VIAJE because RUTA does not exist.'
      GOTO ERROR
    END
  END


  /* ERwin Builtin Trigger */
  RETURN
ERROR:
    raiserror @errno @errmsg
    rollback transaction
END

go



