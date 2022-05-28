--------------------------------------------------------------------
TRIGGER localizador
---------------------------------------------------------------------
CREATE TRIGGER auditoria_localizador_insert AFTER INSERT ON localizador FOR EACH ROW 
INSERT INTO  auditoria_localizador_insert (telefono_uno_auditoria, telefono_dos_auditoria, usuario, fecha_hora, accion, connection_id)
VALUES (new.telefono_uno, new.telefono_dos, current_user(), now(),"se realizo una nueva insercion en nuestra la tabla localizador", CONNECTION_ID())
;

CREATE TRIGGER auditoria_localizador_update BEFORE UPDATE ON localizador FOR EACH ROW
INSERT INTO auditoria_localizador_update (telefono_uno_auditoria, telefono_dos_auditoria, usuario, fecha_hora, accion, connection_id)
VALUES (old.telefono_uno, old.telefono_dos, current_user(), now(), "se realizo la modificacion de una columna en la tabla localizador", CONNECTION_ID())
;


CREATE TRIGGER auditoria_localizador_delete BEFORE DELETE ON localizador FOR EACH ROW 
INSERT INTO auditoria_localizador_delete (idauditoria_localizador_eliminar, telefono_uno_auditoria, telefono_dos_auditoria, usuario, fecha_hora, accion, connection_id)
VALUES (old.idlocalizador, old.telefono_uno, old.telefono_dos, current_user(), now(),"se realizo la eliminacion de un registro en la tabla localizador", CONNECTION_ID())
;
-----------------------------------------------------------------------
TRIGGER correo
------------------------------------------------------------------------
CREATE TRIGGER auditoria_correo_insertar AFTER INSERT ON correo FOR EACH ROW
INSERT INTO auditoria_correo_insert (email_auditoria, usuario, fecha_hora, accion, connection_id)
VALUES (new.email, current_user(), now(),"se realizo una nueva insercion en la tabla correo", CONNECTION_ID())
;

CREATE TRIGGER auditoria_correo_update BEFORE UPDATE ON correo FOR EACH ROW 
INSERT INTO auditoria_correo_update (email_auditoria, usuario, fecha_hora, accion, connection_id)
VALUES (old.email, current_user(), now(),"se realizo una nueva actualizacion en la tabla correo", CONNECTION_ID())
;

CREATE TRIGGER auditoria_correo_delete BEFORE DELETE ON correo FOR EACH ROW
INSERT INTO auditoria_correo_eliminar (email_auditoria, usuario, fecha_hora, accion, connection_id)
VALUES (old.email, current_user(), now(), "se realizo una eliminacion en la tabla correo", CONNECTION_ID())
;
----------------------------------------------------------------------------
TRIGGER domicilio 
---------------------------------------------------------------------------
CREATE TRIGGER auditoria_domicilio_insertar AFTER INSERT ON domicilio FOR EACH ROW
INSERT INTO auditoria_domicilio_insert (calle_auditoria, num_exterior_auditoria, num_interior_auditoria, colonia_auditoria, municipio_auditoria, entidad_federativa_auditoria, codigo_postal_auditoria, usuario, fecha_hora, accion, connection_id)
VALUES (new.calle, new.num_exterior, new.num_interior, new.colonia, new.municipio, new.entidad_federativa, new.codigo_postal, current_user(), now(), "se realizo una nueva insercion en la tabla domicilio", CONNECTION_ID())
;

CREATE TRIGGER auditoria_domicilio_actualizar BEFORE UPDATE ON domicilio FOR EACH ROW
INSERT INTO auditoria_domicilio_update (calle_auditoria, num_exterior_auditoria, num_interior_auditoria, colonia_auditoria, municipio_auditoria, entidad_federativa_auditoria, codigo_postal_auditoria, usuario, fecha_hora, accion, connection_id)
VALUES (old.calle, old.num_exterior, old.num_interior, old.colonia, old.municipio, old.entidad_federativa, old.codigo_postal, current_user(), now(), "se realizo una nueva actualizacion en la tabla domicilio",CONNECTION_ID())
;

CREATE TRIGGER auditoria_domicilio_eliminar BEFORE DELETE ON domicilio FOR EACH ROW
INSERT INTO auditoria_domicilio_insert (calle_auditoria, num_exterior_auditoria, num_interior_auditoria, colonia_auditoria, municipio_auditoria, entidad_federativa_auditoria, codigo_postal_auditoria, usuario, fecha_hora, accion, connection_id)
VALUES (old.calle, old.num_exterior, old.num_interior, old.colonia, old.municipio, old.entidad_federativa, old.codigo_postal, current_user(), now(), "se realizo una nueva eliminacion en la tabla domicilio", CONNECTION_ID())
;

-----------------------------------------------------------------------------------------------
TRIGGER nivel_acceso
-----------------------------------------------------------------------------------------------
CREATE TRIGGER auditoria_nivel_acceso_insertar AFTER INSERT ON nivel_acceso FOR EACH ROW
INSERT INTO auditoria_nivel_acceso_insert (acceso_auditoria, usuario, fecha_hora, accion ,connection_id)
VALUES (new.nivel_acceso, current_user(), now(), "se realizo una nueva insercion en la tabla acceso_comercial", CONNECTION_ID())
;

CREATE TRIGGER auditoria_nivel_acceso_actualizar BEFORE UPDATE ON nivel_acceso FOR EACH ROW
INSERT INTO auditoria_nivel_acceso_update (acceso_auditoria, usuario ,fecha_hora, accion ,connection_id)
VALUES (old.nivel_acceso, current_user(), now(), "se realizo una actualizacion en la tabla acceso_comercial", CONNECTION_ID())
;

CREATE TRIGGER auditoria_nivel_acceso_eliminar BEFORE DELETE ON nivel_acceso FOR EACH ROW
INSERT INTO auditoria_nivel_acceso_delete (idauditoria_nivel_acceso_eliminar, acceso_auditoria, usuario ,fecha_hora, accion ,connection_id)
VALUES (old.idnivel_acceso, old.nivel_acceso, current_user(), now(), "se realizo una eliminacion en la tabla acceso_comercial", CONNECTION_ID())
;

----------------------------------------------------------------------------------------------------
TRIGGER nivel_comercial
-----------------------------------------------------------------------------------------------------
CREATE TRIGGER auditoria_nivel_comercial_insertar AFTER INSERT ON nivel_comercial FOR EACH ROW
INSERT INTO auditoria_nivel_comercial_insert  (comercial_auditoria, usuario ,fecha_hora, accion, connection_id)
VALUES (new.nivel_comercial, current_user(), now(), "se realizo una nueva insercion en la tabla nivel_comercial", CONNECTION_ID())
;

CREATE TRIGGER auditoria_nivel_comercial_actualizar BEFORE UPDATE ON nivel_comercial FOR EACH ROW
INSERT INTO auditoria_nivel_comercial_update  (comercial_auditoria, usuario ,fecha_hora, accion, connection_id)
VALUES (new.nivel_comercial, current_user(), now(), "se realizo una actualizacion en la tabla nivel_comercial", CONNECTION_ID())
;

CREATE TRIGGER auditoria_nivel_comercial_eliminar BEFORE DELETE ON nivel_comercial FOR EACH ROW
INSERT INTO auditoria_nivel_comercial_delete  (idauditoria_nivel_comercial_eliminar, comercial_auditoria ,usuario ,fecha_hora, accion, connection_id)
VALUES (old.idnivel_comercial, old.nivel_comercial, current_user(), now(), "se realizo una eliminacion en la tabla nivel_comercial", CONNECTION_ID())
;
--------------------------------------------------------------------------------------------------------
TRIGGER roles
--------------------------------------------------------------------------------------------------------
CREATE TRIGGER auditoria_roles_insert AFTER INSERT ON roles FOR EACH ROW 
INSERT INTO auditoria_roles_insert (roles_auditoria, usuario, fecha_hora, accion, connection_id)
VALUES (new.roles, current_user(), now(), "se realizo una nueva insercion en la tabla roles", CONNECTION_ID())
;

CREATE TRIGGER auditoria_roles_update BEFORE UPDATE ON roles FOR EACH ROW 
INSERT INTO auditoria_roles_update (roles_auditoria, usuario, fecha_hora, accion, connection_id)
VALUES (old.roles, current_user(), now(), "se realizo una actualizacion en la tabla roles", CONNECTION_ID())
;

CREATE TRIGGER auditoria_roles_delete BEFORE DELETE ON roles FOR EACH ROW 
INSERT INTO auditoria_roles_delete (idauditoria_roles_eliminar, roles_auditoria, usuario, fecha_hora, accion, connection_id)
VALUES (old.idroles, old.roles, current_user(), now(), "se realizo una eliminacion en la tabla roles", CONNECTION_ID())
;

-----------------------------------------------------------------------------------------------------------
TRIGGER cliente
------------------------------------------------------------------------------------------------------------
CREATE TRIGGER auditoria_cliente_insert AFTER INSERT ON cliente FOR EACH ROW
INSERT INTO auditoria_cliente_insert (persona_idpersona_auditoria, usuario, fecha_hora, accion, connection_id)
VALUES (new.persona_idpersona, current_user(), now(), "se realizo una nueva insercion en la tabla cliente", CONNECTION_ID())
;

CREATE TRIGGER auditoria_cliente_update BEFORE UPDATE ON cliente FOR EACH ROW
INSERT INTO auditoria_cliente_update (persona_idpersona_auditoria, usuario, fecha_hora, accion, connection_id)
VALUES (new.persona_idpersona, current_user(), now(), "se realizo una actualizacion en la tabla cliente",CONNECTION_ID())
;

CREATE TRIGGER auditoria_cliente_delete BEFORE DELETE ON cliente FOR EACH ROW
INSERT INTO auditoria_cliente_delete (idauditoria_cliente_eliminar, persona_idpersona_auditoria, usuario, fecha_hora, accion, connection_id)
VALUES (old.idcliente ,old.persona_idpersona, current_user(), now(), "se realizo una eliminacion en la tabla cliente",CONNECTION_ID())
;
--------------------------------------------------------------------------------------------------------------
TRIGGER empleado 
--------------------------------------------------------------------------------------------------------------
CREATE TRIGGER auditoria_empleado_insert AFTER INSERT ON empleado FOR EACH ROW
INSERT INTO auditoria_empleado_insert (persona_idpersona_auditoria, usuario, fecha_hora, accion, connection_id)
VALUES (new.persona_idpersona, current_user(), now(), "se realizo una nueva insercion en la tabla empleado", CONNECTION_ID())
;

CREATE TRIGGER auditoria_empleado_update BEFORE UPDATE ON empleado FOR EACH ROW
INSERT INTO auditoria_empleado_update (persona_idpersona_auditoria, usuario, fecha_hora, accion, connection_id)
VALUES (old.persona_idpersona, current_user(), now(), "se realizo una nueva insercion en la tabla empleado", CONNECTION_ID())
;

CREATE TRIGGER auditoria_empleado_delete BEFORE DELETE ON empleado FOR EACH ROW
INSERT INTO auditoria_empleado_delete (idauditoria_empleado_eliminar, persona_idpersona_auditoria, usuario, fecha_hora, accion, connection_id)
VALUES (old.idempleado, old.persona_idpersona, current_user(), now(), "se realizo una nueva insercion en la tabla empleado", CONNECTION_ID())
;
---------------------------------------------------------------------------------------------------------------------
TRIGGER persona
---------------------------------------------------------------------------------------------------------------------
CREATE TRIGGER auditoria_persona_insert AFTER INSERT ON persona FOR EACH ROW
INSERT INTO auditoria_persona_insert (primer_nombre_auditoria, segundo_nombre_auditoria, apellido_paterno_auditoria, apellido_materno_auditoria, clave_auditoria, correo_idcorreo_auditoria, domicilio_iddomicilio_auditoria, localizador_idlocalizador_auditoria, nivel_acceso_idnivel_acceso_auditoria, nivel_comercial_idnivel_comercial_auditoria, curp_auditoria, rfc_auditoria, nss_auditoria, observaciones_auditoria, usuario, fecha_hora, accion, connection_id)
VALUES (new.primer_nombre, new.segundo_nombre, new.apellido_materno, new.apellido_paterno, new.clave, new.correo_idcorreo, new.domicilio_iddomicilio, new.localizador_idlocalizador, new.nivel_acceso_idnivel_acceso, new.nivel_comercial_idnivel_comercial, new.curp, new.rfc, new.nss,  new.observaciones, current_user(), now(), "se realizo una nueva insercion en la tabla persona",CONNECTION_ID())
;


CREATE TRIGGER auditoria_persona_update BEFORE UPDATE ON persona FOR EACH ROW
INSERT INTO auditoria_persona_update (primer_nombre_auditoria, segundo_nombre_auditoria, apellido_paterno_auditoria, apellido_materno_auditoria, clave_auditoria, correo_idcorreo_auditoria, domicilio_iddomicilio_auditoria, localizador_idlocalizador_auditoria, nivel_acceso_idnivel_acceso_auditoria, nivel_comercial_idnivel_comercial_auditoria, curp_auditoria, rfc_auditoria, nss_auditoria, observaciones_auditoria, usuario, fecha_hora, accion, connection_id)
VALUES (old.primer_nombre, old.segundo_nombre, old.apellido_materno, old.apellido_paterno, old.clave, old.correo_idcorreo, old.domicilio_iddomicilio, old.localizador_idlocalizador, old.nivel_acceso_idnivel_acceso, old.nivel_comercial_idnivel_comercial, old.curp, old.rfc, old.nss, old.observaciones, current_user(), now(), "se realizo una nueva insercion en la tabla persona",CONNECTION_ID())
;

CREATE TRIGGER auditoria_persona_delete BEFORE DELETE ON persona FOR EACH ROW
INSERT INTO auditoria_persona_delete (idauditoria_persona_eliminar ,primer_nombre_auditoria, segundo_nombre_auditoria, apellido_paterno_auditoria, apellido_materno_auditoria, clave_auditoria, correo_idcorreo_auditoria, domicilio_iddomicilio_auditoria, localizador_idlocalizador_auditoria, nivel_acceso_idnivel_acceso_auditoria, nivel_comercial_idnivel_comercial_auditoria, curp_auditoria, rfc_auditoria, nss_auditoria, observaciones_auditoria, usuario, fecha_hora, accion, connection_id)
VALUES (old.idpersona, old.primer_nombre, old.segundo_nombre, old.apellido_materno, old.apellido_paterno, old.clave, old.correo_idcorreo, old.domicilio_iddomicilio, old.localizador_idlocalizador, old.nivel_acceso_idnivel_acceso, old.nivel_comercial_idnivel_comercial, old.curp, old.rfc, old.nss, old.observaciones, current_user(), now(), "se realizo una nueva insercion en la tabla persona",CONNECTION_ID())
;
------------------------------------------------------------------------------------------------------------------------
TRIGGER producto
-----------------------------------------------------------------------------------------------------------------------
CREATE TRIGGER auditoria_producto_insert AFTER INSERT ON producto FOR EACH ROW
INSERT INTO auditoria_producto_insert (nombre_producto_auditoria, marca_auditoria, codigo_barras_auditoria, clave_auditoria, precio_compra, codigo_sat, familia_idfamilia_auditoria, familia_sat_idfamilia_sat_auditoria, precios_idprecios_auditoria, usuario, fecha_hora, accion, connection_id)
VALUES (new.nombre_producto, new.marca, new.codigo_barras, new.clave, new.precios_idprecios, new.codigo_sat, new.familia_sat_idfamilia_sat, new.precios_idprecios, current_user(), now(), "se realizo una insercion en la tabla producto", CONNECTION_ID())
;

CREATE TRIGGER auditoria_producto_insert AFTER INSERT ON producto FOR EACH ROW
INSERT INTO auditoria_producto_insert (nombre_producto_auditoria, marca_auditoria, codigo_barras_auditoria, clave_auditoria, precio_compra, codigo_sat, familia_idfamilia_auditoria, familia_sat_idfamilia_sat_auditoria, precios_idprecios_auditoria, usuario, fecha_hora, accion, connection_id)
VALUES (old.nombre_producto, old.marca, old.codigo_barras, old.clave, old.precios_idprecios, old.codigo_sat, old.familia_sat_idfamilia_sat, old.precios_idprecios, current_user(), now(), "se realizo una insercion en la tabla producto", CONNECTION_ID())
;

CREATE TRIGGER auditoria_producto_insert AFTER INSERT ON producto FOR EACH ROW
INSERT INTO auditoria_producto_insert (nombre_producto_auditoria, marca_auditoria, codigo_barras_auditoria, clave_auditoria, precio_compra, codigo_sat, familia_idfamilia_auditoria, familia_sat_idfamilia_sat_auditoria, precios_idprecios_auditoria, usuario, fecha_hora, accion, connection_id)
VALUES (old.nombre_producto, old.marca, old.codigo_barras, old.clave, old.precios_idprecios, old.codigo_sat, old.familia_sat_idfamilia_sat, old.precios_idprecios, current_user(), now(), "se realizo una insercion en la tabla producto", CONNECTION_ID())
;