-- Generado por Oracle SQL Developer Data Modeler 4.0.3.853
--   en:        2016-09-27 12:35:37 COT
--   sitio:      Oracle Database 11g
--   tipo:      Oracle Database 11g



CREATE TABLE srn_tbl_estado
  (
    str_cod_estado  VARCHAR2 (1) NOT NULL ,
    str_descripcion VARCHAR2 (100) NOT NULL
  ) ;
ALTER TABLE srn_tbl_estado ADD CONSTRAINT srn_tbl_estado_PK PRIMARY KEY ( str_cod_estado ) ;

CREATE TABLE srn_tbl_genero
  (
    str_cod_genero  VARCHAR2 (1) CONSTRAINT NNC_tbl_estado_str_codestado NOT NULL ,
    str_descripcion VARCHAR2 (100) CONSTRAINT NNC_tbl_estado_str_desc NOT NULL
  ) ;
ALTER TABLE srn_tbl_genero ADD CONSTRAINT PK_srn_tbl_genero PRIMARY KEY ( str_cod_genero ) ;

CREATE TABLE srn_tbl_materia
  (
    num_id_materia         NUMBER (10) NOT NULL ,
    str_nombre_materia     VARCHAR2 (100) NOT NULL ,
    num_intensidad_horaria NUMBER (11)
  ) ;
CREATE INDEX srn_tbl_materia__IDX ON srn_tbl_materia
  (
    num_id_materia ASC ,
    str_nombre_materia ASC
  ) ;
ALTER TABLE srn_tbl_materia ADD CONSTRAINT srn_tbl_materia_PK PRIMARY KEY ( num_id_materia ) ;

CREATE TABLE srn_tbl_rol
  (
    num_id_rol      NUMBER (5) CONSTRAINT NNC_tbl_rol_str_codrol NOT NULL ,
    str_descripcion VARCHAR2 (100) CONSTRAINT NNC_tbl_rol_str_desc NOT NULL
  ) ;
ALTER TABLE srn_tbl_rol ADD CONSTRAINT PK_srn_tbl_rol PRIMARY KEY ( num_id_rol ) ;

CREATE TABLE srn_tbl_tipo_documento
  (
    str_cod_tipo_doc NUMBER (3) CONSTRAINT NNC_tbl_genero_str_codgenero NOT NULL ,
    str_descripcion  VARCHAR2 (100) CONSTRAINT NNC_tbl_genero_str_desc NOT NULL
  ) ;
ALTER TABLE srn_tbl_tipo_documento ADD CONSTRAINT PK_srn_tbl_tipo_doc PRIMARY KEY ( str_cod_tipo_doc ) ;

CREATE TABLE srn_tbl_menu_permisos
  (
    num_id_menu_permiso NUMBER (5) CONSTRAINT NNC_tbl_permisos_num_idpermiso NOT NULL ,
    str_descripcion     VARCHAR2 (50) ,
    num_cod_rol         NUMBER (5) CONSTRAINT NNC_tbl_permisos_num_codrol NOT NULL
  ) ;
ALTER TABLE srn_tbl_menu_permisos ADD CONSTRAINT PK_tbl_menu_permisos PRIMARY KEY ( num_id_menu_permiso ) ;


CREATE TABLE srn_tbl_permisos
  (
    num_id_permiso  NUMBER (5) NOT NULL ,
    str_descripcion VARCHAR2 (50) ,
    num_cod_rol     NUMBER (5) NOT NULL
  ) ;
ALTER TABLE srn_tbl_permisos ADD CONSTRAINT srn_tbl_permisos_PK PRIMARY KEY ( num_id_permiso ) ;

CREATE TABLE srn_tbl_usuario
  (
    num_id_usuario     NUMBER (12) NOT NULL ,
    num_tipo_documento NUMBER (3) NOT NULL ,
    num_cod_documento  NUMBER (15) NOT NULL ,
    str_nombre         VARCHAR2 (50) NOT NULL ,
    str_apellido       VARCHAR2 (50) NOT NULL ,
    str_estado         VARCHAR2 (1) NOT NULL ,
    str_genero         VARCHAR2 (1) NOT NULL ,
    num_cod_rol        NUMBER (5) NOT NULL ,
    str_login          VARCHAR2 (50) NOT NULL ,
    str_password       VARCHAR2 (100) NOT NULL,
    STR_EMAIL          VARCHAR2 (100) NOT NULL
  ) ;
CREATE INDEX srn_tbl_usuario__IDX ON srn_tbl_usuario
  (
    num_id_usuario ASC ,
    num_cod_documento ASC ,
    str_nombre ASC ,
    str_apellido ASC ,
    str_login ASC
  ) ;
ALTER TABLE srn_tbl_usuario ADD CONSTRAINT PK_srn_tbl_usuario PRIMARY KEY ( num_id_usuario ) ;

CREATE TABLE srn_tbl_materia_usuario
  (
    num_id_materiauser NUMBER (10) NOT NULL ,
    num_cod_materia    NUMBER (10) NOT NULL ,
    num_cod_usuario    NUMBER (12) NOT NULL
  ) ;
ALTER TABLE srn_tbl_materia_usuario ADD CONSTRAINT srn_tbl_materia_usuario_PK PRIMARY KEY ( num_id_materiauser ) ;

CREATE TABLE srn_tbl_nota
  (
    num_id_nota         NUMBER (10) NOT NULL ,
    num_cod_materiauser NUMBER (10) NOT NULL ,
    num_parcial_I       DECIMAL(2,2) ,
    num_parcial_II      DECIMAL (2,2) ,
    num_parcial_III     DECIMAL (2,2) ,
    num_nota_adicional  DECIMAL (2,2) ,
    num_pryecto         DECIMAL (2,2) ,
    num_nota_final      DECIMAL (3,2)
  ) ;
ALTER TABLE srn_tbl_nota ADD CONSTRAINT srn_tbl_nota_PK PRIMARY KEY ( num_id_nota ) ;

ALTER TABLE srn_tbl_menu_permisos ADD CONSTRAINT FK_tbl_menu_per_tbl_rol FOREIGN KEY ( num_cod_rol ) REFERENCES srn_tbl_rol ( num_id_rol ) ;

ALTER TABLE srn_tbl_nota ADD CONSTRAINT FK_tbl_nota_tbl_materia_usua FOREIGN KEY ( num_cod_materiauser ) REFERENCES srn_tbl_materia_usuario ( num_id_materiauser ) ;

ALTER TABLE srn_tbl_usuario ADD CONSTRAINT FK_tbl_usuario_tbl_estado FOREIGN KEY ( str_estado ) REFERENCES srn_tbl_estado ( str_cod_estado ) ;

ALTER TABLE srn_tbl_usuario ADD CONSTRAINT FK_tbl_usuario_tbl_genero FOREIGN KEY ( str_genero ) REFERENCES srn_tbl_genero ( str_cod_genero ) ;

ALTER TABLE srn_tbl_usuario ADD CONSTRAINT FK_tbl_usuario_tbl_rol FOREIGN KEY ( num_cod_rol ) REFERENCES srn_tbl_rol ( num_id_rol ) ;

ALTER TABLE srn_tbl_usuario ADD CONSTRAINT FK_tbl_usuario_tbl_tipo_doc FOREIGN KEY ( num_tipo_documento ) REFERENCES srn_tbl_tipo_documento ( str_cod_tipo_doc ) ;

ALTER TABLE srn_tbl_materia_usuario ADD CONSTRAINT PK_tbl_materia_user_tbl_mate FOREIGN KEY ( num_cod_materia ) REFERENCES srn_tbl_materia ( num_id_materia ) ;

ALTER TABLE srn_tbl_materia_usuario ADD CONSTRAINT PK_tbl_materia_user_tbl_usua FOREIGN KEY ( num_cod_usuario ) REFERENCES srn_tbl_usuario ( num_id_usuario ) ;

ALTER TABLE srn_tbl_permisos ADD CONSTRAINT PK_tbl_permisos_tbl_rol FOREIGN KEY ( num_cod_rol ) REFERENCES srn_tbl_rol ( num_id_rol ) ;


-- Informe de Resumen de Oracle SQL Developer Data Modeler: 
-- 
-- CREATE TABLE                            10
-- CREATE INDEX                             2
-- ALTER TABLE                             19
-- CREATE VIEW                              0
-- CREATE PACKAGE                           0
-- CREATE PACKAGE BODY                      0
-- CREATE PROCEDURE                         0
-- CREATE FUNCTION                          0
-- CREATE TRIGGER                           0
-- ALTER TRIGGER                            0
-- CREATE COLLECTION TYPE                   0
-- CREATE STRUCTURED TYPE                   0
-- CREATE STRUCTURED TYPE BODY              0
-- CREATE CLUSTER                           0
-- CREATE CONTEXT                           0
-- CREATE DATABASE                          0
-- CREATE DIMENSION                         0
-- CREATE DIRECTORY                         0
-- CREATE DISK GROUP                        0
-- CREATE ROLE                              0
-- CREATE ROLLBACK SEGMENT                  0
-- CREATE SEQUENCE                          0
-- CREATE MATERIALIZED VIEW                 0
-- CREATE SYNONYM                           0
-- CREATE TABLESPACE                        0
-- CREATE USER                              0
-- 
-- DROP TABLESPACE                          0
-- DROP DATABASE                            0
-- 
-- REDACTION POLICY                         0
-- 
-- ERRORS                                   0
-- WARNINGS                                 0
