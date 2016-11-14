-- Generado por Oracle SQL Developer 
--   en:        2016-09-27 12:35:37 COT
--   sitio:      Oracle Database 11g
--   tipo:      Oracle Database 11g

-- srn_tbl_estado
INSERT INTO srn_tbl_estado (str_cod_estado, str_descripcion) VALUES ('A','ACTIVO') ;
INSERT INTO srn_tbl_estado (str_cod_estado, str_descripcion) VALUES ('I','INACTIVO') ;

-- srn_tbl_genero
INSERT INTO srn_tbl_genero (str_cod_genero, str_descripcion) VALUES ('M','MASCULINO') ;
INSERT INTO srn_tbl_genero (str_cod_genero, str_descripcion) VALUES ('F','FEMENINO') ;

-- srn_tbl_materia
INSERT INTO srn_tbl_materia (num_id_materia, str_nombre_materia, num_intensidad_horaria) VALUES ('1','CALCULO 1','3') ;
INSERT INTO srn_tbl_materia (num_id_materia, str_nombre_materia, num_intensidad_horaria) VALUES ('2','CALCULO 2','3') ;
INSERT INTO srn_tbl_materia (num_id_materia, str_nombre_materia, num_intensidad_horaria) VALUES ('3','FISICA 1','3') ;
INSERT INTO srn_tbl_materia (num_id_materia, str_nombre_materia, num_intensidad_horaria) VALUES ('4','FISICA 2','3') ;
INSERT INTO srn_tbl_materia (num_id_materia, str_nombre_materia, num_intensidad_horaria) VALUES ('5','FISICA 3','3') ;
INSERT INTO srn_tbl_materia (num_id_materia, str_nombre_materia, num_intensidad_horaria) VALUES ('6','BASE DE DATOS 1','3') ;
INSERT INTO srn_tbl_materia (num_id_materia, str_nombre_materia, num_intensidad_horaria) VALUES ('7','BASE DE DATOS 2','3') ;

-- srn_tbl_rol
INSERT INTO srn_tbl_rol (num_id_rol, str_descripcion) VALUES ('1','ADMINISTRADOR') ;
INSERT INTO srn_tbl_rol (num_id_rol, str_descripcion) VALUES ('2','DOCENTE') ;
INSERT INTO srn_tbl_rol (num_id_rol, str_descripcion) VALUES ('3','ESTUDIANTE') ;

-- srn_tbl_tipo_documento
INSERT INTO srn_tbl_tipo_documento (str_cod_tipo_doc, str_descripcion) VALUES ('1','CEDULA DE CIUDADANIA') ;
INSERT INTO srn_tbl_tipo_documento (str_cod_tipo_doc, str_descripcion) VALUES ('2','PASAPORTE') ;
INSERT INTO srn_tbl_tipo_documento (str_cod_tipo_doc, str_descripcion) VALUES ('3','LICENCIA DE VEHICULO') ;

---srn_tbl_usuarios
Insert into SRN_USER.SRN_TBL_USUARIO (NUM_ID_USUARIO,NUM_TIPO_DOCUMENTO,NUM_COD_DOCUMENTO,STR_NOMBRE,STR_APELLIDO,STR_ESTADO,STR_GENERO,NUM_COD_ROL,STR_LOGIN,STR_PASSWORD,STR_EMAIL) values ('3','1','12334456778','Andres','Martinez','A','M','1','AMARTINEZ','65d5d89b003c4a58de2bf4f31e37b12a','camv568@gmail.com');
Insert into SRN_USER.SRN_TBL_USUARIO (NUM_ID_USUARIO,NUM_TIPO_DOCUMENTO,NUM_COD_DOCUMENTO,STR_NOMBRE,STR_APELLIDO,STR_ESTADO,STR_GENERO,NUM_COD_ROL,STR_LOGIN,STR_PASSWORD,STR_EMAIL) values ('4','1','1211233333','Claudia','Narvaez','A','M','1','CNARVAEZ','5009e841d76252f4078f68dbb6003fdd','claudialorena310@gmail.com');
Insert into SRN_USER.SRN_TBL_USUARIO (NUM_ID_USUARIO,NUM_TIPO_DOCUMENTO,NUM_COD_DOCUMENTO,STR_NOMBRE,STR_APELLIDO,STR_ESTADO,STR_GENERO,NUM_COD_ROL,STR_LOGIN,STR_PASSWORD,STR_EMAIL) values ('1','1','1144143209','Andres','Revelo','A','M','1','AREVELO','202cb962ac59075b964b07152d234b70','ing2013andresfe@gmail.com');
Insert into SRN_USER.SRN_TBL_USUARIO (NUM_ID_USUARIO,NUM_TIPO_DOCUMENTO,NUM_COD_DOCUMENTO,STR_NOMBRE,STR_APELLIDO,STR_ESTADO,STR_GENERO,NUM_COD_ROL,STR_LOGIN,STR_PASSWORD,STR_EMAIL) values ('2','1','123456789','Cesar','Riascos','A','M','1','CRIASCOS','81ba46ef5ebbf2c21cec7b868ea78e6c','ing_2013andresfe@hotmail.es');
