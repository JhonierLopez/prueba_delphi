/******************************************************************************/
/***             Generated by IBExpert 2/05/2022 7:36:38 a. m.              ***/
/******************************************************************************/

/******************************************************************************/
/***      Following SET SQL DIALECT is just for the Database Comparer       ***/
/******************************************************************************/
SET SQL DIALECT 3;



/******************************************************************************/
/***                                 Tables                                 ***/
/******************************************************************************/


CREATE GENERATOR GEN_PRODUCTOS_ID;

CREATE TABLE PRODUCTOS (
    PRODUCTO         INTEGER NOT NULL,
    NOMBRE_PRODUCTO  VARCHAR(100),
    VALOR            FLOAT
);




/******************************************************************************/
/***                              Primary Keys                              ***/
/******************************************************************************/

ALTER TABLE PRODUCTOS ADD CONSTRAINT PK_PRODUCTOS PRIMARY KEY (PRODUCTO);


/******************************************************************************/
/***                                Triggers                                ***/
/******************************************************************************/


SET TERM ^ ;



/******************************************************************************/
/***                          Triggers for tables                           ***/
/******************************************************************************/



/* Trigger: PRODUCTOS_BI */
CREATE OR ALTER TRIGGER PRODUCTOS_BI FOR PRODUCTOS
ACTIVE BEFORE INSERT POSITION 0
as
begin
  if (new.producto is null) then
    new.producto = gen_id(gen_productos_id,1);
end
^


SET TERM ; ^



/******************************************************************************/
/***                               Privileges                               ***/
/******************************************************************************/





/******************************************************************************/
/***             Generated by IBExpert 2/05/2022 7:37:12 a. m.              ***/
/******************************************************************************/

/******************************************************************************/
/***      Following SET SQL DIALECT is just for the Database Comparer       ***/
/******************************************************************************/
SET SQL DIALECT 3;



/******************************************************************************/
/***                                 Tables                                 ***/
/******************************************************************************/


CREATE GENERATOR GEN_CLIENTES_ID;

CREATE TABLE CLIENTES (
    CLIENTE         INTEGER NOT NULL,
    NOMBRE_CLIENTE  VARCHAR(100),
    DIRECCION       VARCHAR(100)
);




/******************************************************************************/
/***                              Primary Keys                              ***/
/******************************************************************************/

ALTER TABLE CLIENTES ADD CONSTRAINT PK_CLIENTES PRIMARY KEY (CLIENTE);


/******************************************************************************/
/***                                Triggers                                ***/
/******************************************************************************/


SET TERM ^ ;



/******************************************************************************/
/***                          Triggers for tables                           ***/
/******************************************************************************/



/* Trigger: CLIENTES_BI */
CREATE OR ALTER TRIGGER CLIENTES_BI FOR CLIENTES
ACTIVE BEFORE INSERT POSITION 0
as
begin
  if (new.cliente is null) then
    new.cliente = gen_id(gen_clientes_id,1);
end
^


SET TERM ; ^



/******************************************************************************/
/***                               Privileges                               ***/
/******************************************************************************/

/******************************************************************************/
/***             Generated by IBExpert 2/05/2022 7:37:28 a. m.              ***/
/******************************************************************************/

/******************************************************************************/
/***      Following SET SQL DIALECT is just for the Database Comparer       ***/
/******************************************************************************/
SET SQL DIALECT 3;



/******************************************************************************/
/***                                 Tables                                 ***/
/******************************************************************************/


CREATE GENERATOR GEN_CABEZA_FACTURA_ID;

CREATE TABLE CABEZA_FACTURA (
    NUMERO   INTEGER NOT NULL,
    FECHA    DATE,
    CLIENTE  INTEGER,
    TOTAL    FLOAT
);




/******************************************************************************/
/***                              Primary Keys                              ***/
/******************************************************************************/

ALTER TABLE CABEZA_FACTURA ADD CONSTRAINT PK_CABEZA_FACTURA PRIMARY KEY (NUMERO);


/******************************************************************************/
/***                              Foreign Keys                              ***/
/******************************************************************************/

ALTER TABLE CABEZA_FACTURA ADD CONSTRAINT FK_CABEZA_FACTURA_1 FOREIGN KEY (CLIENTE) REFERENCES CLIENTES (CLIENTE);


/******************************************************************************/
/***                                Triggers                                ***/
/******************************************************************************/


SET TERM ^ ;



/******************************************************************************/
/***                          Triggers for tables                           ***/
/******************************************************************************/



/* Trigger: CABEZA_FACTURA_BI */
CREATE OR ALTER TRIGGER CABEZA_FACTURA_BI FOR CABEZA_FACTURA
ACTIVE BEFORE INSERT POSITION 0
as
begin
  if (new.numero is null) then
    new.numero = gen_id(gen_cabeza_factura_id,1);
end
^


SET TERM ; ^



/******************************************************************************/
/***                               Privileges                               ***/
/******************************************************************************/

/******************************************************************************/
/***             Generated by IBExpert 2/05/2022 7:37:39 a. m.              ***/
/******************************************************************************/

/******************************************************************************/
/***      Following SET SQL DIALECT is just for the Database Comparer       ***/
/******************************************************************************/
SET SQL DIALECT 3;



/******************************************************************************/
/***                                 Tables                                 ***/
/******************************************************************************/



CREATE TABLE DETALLE_FACTURA (
    NUMERO    INTEGER,
    PRODUCTO  INTEGER,
    CANTIDAD  FLOAT,
    VALOR     FLOAT
);




/******************************************************************************/
/***                              Foreign Keys                              ***/
/******************************************************************************/

ALTER TABLE DETALLE_FACTURA ADD CONSTRAINT FK_DETALLE_FACTURA_1 FOREIGN KEY (NUMERO) REFERENCES CABEZA_FACTURA (NUMERO);
ALTER TABLE DETALLE_FACTURA ADD CONSTRAINT FK_DETALLE_FACTURA_2 FOREIGN KEY (PRODUCTO) REFERENCES PRODUCTOS (PRODUCTO);


/******************************************************************************/
/***                               Privileges                               ***/
/******************************************************************************/
