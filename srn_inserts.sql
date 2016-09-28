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
