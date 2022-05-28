----------------------------------------------------
Desarollador:Jose Ramon Damazo Pelaez
---------------------------------------------------
Auditoria localizador insertar
---------------------------------------------------
CREATE TABLE auditoria_localizador_insert
(
    idauditoria_localizador_insertar INT NOT NULL AUTO_INCREMENT,
    telefono_uno_auditoria BIGINT(10),
    telefono_dos_auditoria BIGINT(10),
    usuario VARCHAR(45) NOT NULL,
    fecha_hora DATETIME NOT NULL,
    accion TEXT,
    connection_id BIGINT(13), 
    PRIMARY KEY (idauditoria_localizador_insertar)
)   
    ENGINE = INNODB;
-----------------------------------------------------
Auditoria localizador actualizar
-----------------------------------------------------
CREATE TABLE auditoria_localizador_update
(
    idauditoria_localizador_actualizar INT NOT NULL AUTO_INCREMENT,
    telefono_uno_auditoria BIGINT(10),
    telefono_dos_auditoria BIGINT(10),
    usuario VARCHAR(45) NOT NULL,
    fecha_hora DATETIME NOT NULL,
    accion TEXT, 
    connection_id BIGINT(13), 
    PRIMARY KEY (idauditoria_localizador_actualizar)
)
    ENGINE = INNODB;
--------------------------------------------------------------
Auditoria localizador eliminar
---------------------------------------------------------------
CREATE TABLE auditoria_localizador_delete
(
    idauditoria_localizador_eliminar INT NOT NULL AUTO_INCREMENT,
    telefono_uno_auditoria BIGINT(10),
    telefono_dos_auditoria BIGINT(10),
    usuario VARCHAR(45) NOT NULL,
    fecha_hora DATETIME NOT NULL,
    accion TEXT, 
    connection_id BIGINT(13), 
    PRIMARY KEY (idauditoria_localizador_eliminar)
)
    ENGINE = INNODB;
----------------------------------------------------
Auditoria correo insertar
---------------------------------------------------
CREATE TABLE auditoria_correo_insert
(
    idauditoria_correo_insertar INT NOT NULL AUTO_INCREMENT,
    email_auditoria VARCHAR (50) NOT NULL,
    usuario VARCHAR(45) NOT NULL,
    fecha_hora DATETIME NOT NULL,
    accion TEXT, 
    connection_id BIGINT(13), 
    PRIMARY KEY (idauditoria_correo_insertar)

)   
    ENGINE = INNODB;
---------------------------------------------------------
Auditoria correo actualizar
--------------------------------------------------------
CREATE TABLE auditoria_correo_update
(
    idauditoria_correo_actualizar INT NOT NULL AUTO_INCREMENT,
    email_auditoria VARCHAR (50) NOT NULL,
    usuario VARCHAR(45) NOT NULL,
    fecha_hora DATETIME NOT NULL,
    accion TEXT, 
    connection_id BIGINT(13), 
    PRIMARY KEY (idauditoria_correo_actualizar)

)
    ENGINE = INNODB;
-----------------------------------------------------------------
Auditoria correo eliminar 
-----------------------------------------------------------------
CREATE TABLE auditoria_correo_eliminar
(
    idauditoria_correo_eliminar INT NOT NULL AUTO_INCREMENT,
    email_auditoria VARCHAR (50) NOT NULL,
    usuario VARCHAR (45) NOT NULL,
    fecha_hora DATETIME NOT NULL,
    accion TEXT,
    connection_id BIGINT(13), 
    PRIMARY KEY (idauditoria_correo_eliminar)
)
    ENGINE = INNODB;

----------------------------------------------------------
Auditoria nivel_acceso insertar
-----------------------------------------------------------
CREATE TABLE auditoria_nivel_acceso_insert
(
    idauditoria_nivel_acceso_insertar INT NOT NULL AUTO_INCREMENT,
    acceso_auditoria VARCHAR (45) NOT NULL, 
    usuario VARCHAR (45) NOT NULL,
    fecha_hora DATETIME NOT NULL,
    accion TEXT, 
    connection_id BIGINT(13), 
    PRIMARY KEY (idauditoria_nivel_acceso_insertar)
)
    ENGINE = INNODB;
-----------------------------------------------------------
Auditoria nivel_acceso actualizar
-----------------------------------------------------------
CREATE TABLE auditoria_nivel_acceso_update
(
    idauditoria_nivel_acceso_actualizar INT NOT NULL AUTO_INCREMENT,
    acceso_auditoria VARCHAR(30) NOT NULL,
    usuario VARCHAR(45) NOT NULL,
    fecha_hora DATETIME NOT NULL,
    accion TEXT, 
    connection_id BIGINT(13), 
    PRIMARY KEY (idauditoria_nivel_acceso_actualizar)
)
    ENGINE = INNODB;

------------------------------------------------------------------
Auditoria nivel_acceso eliminar
------------------------------------------------------------------
CREATE TABLE auditoria_nivel_acceso_delete
(
    idauditoria_nivel_acceso_eliminar INT NOT NULL AUTO_INCREMENT,
    acceso_auditoria VARCHAR (30) NOT NULL,
    usuario VARCHAR(45) NOT NULL,
    fecha_hora DATETIME NOT NULL,
    accion TEXT, 
    connection_id BIGINT(13), 
    PRIMARY KEY (idauditoria_nivel_acceso_eliminar)
)
    ENGINE = INNODB;
--------------------------------------------------------------
Auditoria domicilio insertar 
--------------------------------------------------------------
CREATE TABLE auditoria_domicilio_insert
(
    idauditoria_domicilio_insertar INT NOT NULL AUTO_INCREMENT,
    calle_auditoria VARCHAR(45) NOT NULL,
    num_interior_auditoria BIGINT (2) NOT NULL,
    num_exterior_auditoria BIGINT (2) NOT NULL,
    colonia_auditoria VARCHAR (45) NOT NULL,
    municipio_auditoria VARCHAR (30) NOT NULL,
    entidad_federativa_auditoria VARCHAR(50) NOT NULL,
    codigo_postal_auditoria BIGINT(5) NOT NULL,
    usuario VARCHAR(45)NOT NULL,
    fecha_hora DATETIME NOT NULL,
    accion TEXT, 
    connection_id BIGINT(13), 
    PRIMARY KEY (idauditoria_domicilio_insertar)
)
    ENGINE = INNODB;
------------------------------------------------------------------
Auditoria domicilio actualizar
-------------------------------------------------------------------
CREATE TABLE auditoria_domicilio_update
(
    idauditoria_domicilio_actualizar INT NOT NULL AUTO_INCREMENT,
    calle_auditoria VARCHAR(45) NOT NULL,
    num_interior_auditoria BIGINT (2) NOT NULL,
    num_exterior_auditoria BIGINT (2) NOT NULL,
    colonia_auditoria VARCHAR (45) NOT NULL,
    municipio_auditoria VARCHAR (30) NOT NULL,
    entidad_federativa_auditoria VARCHAR(50) NOT NULL,
    codigo_postal_auditoria BIGINT(5) NOT NULL,
    usuario VARCHAR(45)NOT NULL,
    fecha_hora DATETIME NOT NULL,
    accion TEXT, 
    connection_id BIGINT(13), 
    PRIMARY KEY (idauditoria_domicilio_actualizar)
)
    ENGINE = INNODB;
----------------------------------------------------------------------
Auditoria domicilio eliminar
---------------------------------------------------------------------
CREATE TABLE auditoria_domicilio_delete
(
    idauditoria_domicilio_eliminar INT NOT NULL AUTO_INCREMENT,
    calle_auditoria VARCHAR(45) NOT NULL,
    num_interior_auditoria BIGINT (2) NOT NULL,
    num_exterior_auditoria BIGINT (2) NOT NULL,
    colonia_auditoria VARCHAR (45) NOT NULL,
    municipio_auditoria VARCHAR (30) NOT NULL,
    entidad_federativa_auditoria VARCHAR(50) NOT NULL,
    codigo_postal_auditoria BIGINT(5) NOT NULL,
    usuario VARCHAR(45)NOT NULL,
    fecha_hora DATETIME NOT NULL,
    accion TEXT, 
    connection_id BIGINT(13), 
    PRIMARY KEY (idauditoria_domicilio_eliminar)
)
    ENGINE = INNODB;
-----------------------------------------------------------------------
Auditoria roles insertar
------------------------------------------------------------------------
CREATE TABLE auditoria_roles_insert
(
    idauditoria_roles_insertar INT NOT NULL AUTO_INCREMENT,
    roles_auditoria VARCHAR(20) NOT NULL,
    usuario VARCHAR(45) NOT NULL,
    fecha_hora DATETIME NOT NULL,
    accion TEXT, 
    connection_id BIGINT(13), 
    PRIMARY KEY (idauditoria_roles_insertar)
)
    ENGINE = INNODB;
-----------------------------------------------------------------------
Auditoria roles actualizar
-----------------------------------------------------------------------
CREATE TABLE auditoria_roles_update
(
    idauditoria_roles_actualizar INT NOT NULL AUTO_INCREMENT,
    roles_auditoria VARCHAR(20) NOT NULL,
    usuario VARCHAR(45) NOT NULL,
    fecha_hora DATETIME NOT NULL,
    accion TEXT, 
    connection_id BIGINT(13), 
    PRIMARY KEY (idauditoria_roles_actualizar)
)
    ENGINE = INNODB;
------------------------------------------------------------------------
Auditoria roles eliminar
-------------------------------------------------------------------------
CREATE TABLE auditoria_roles_delete
(
    idauditoria_roles_eliminar INT NOT NULL AUTO_INCREMENT,
    roles_auditoria VARCHAR(20) NOT NULL,
    usuario VARCHAR(45) NOT NULL,
    fecha_hora DATETIME NOT NULL,
    accion TEXT, 
    connection_id BIGINT(13), 
    PRIMARY KEY (idauditoria_roles_eliminar)
)
    ENGINE = INNODB;
-------------------------------------------------------------------------
Auditoria nivel_comercial insertar
-------------------------------------------------------------------------
CREATE TABLE auditoria_nivel_comercial_insert
(
    idauditoria_nivel_comercial_insertar INT NOT NULL AUTO_INCREMENT,
    comercial_auditoria VARCHAR(20) NOT NULL,
    usuario VARCHAR(45) NOT NULL,
    fecha_hora DATETIME NOT NULL,
    accion TEXT, 
    connection_id BIGINT(13),
    PRIMARY KEY (idauditoria_nivel_comercial_insertar)
)
    ENGINE = INNODB;
-------------------------------------------------------------------------
Auditoria nivel_comercial actualizar
-------------------------------------------------------------------------
CREATE TABLE auditoria_nivel_comercial_update 
(
    idauditoria_nivel_comercial_actualizar INT NOT NULL AUTO_INCREMENT,
    comercial_auditoria VARCHAR(20) NOT NULL,
    usuario VARCHAR(45) NOT NULL,
    fecha_hora DATETIME NOT NULL,
    accion TEXT, 
    connection_id BIGINT(13),
    PRIMARY KEY (idauditoria_nivel_comercial_actualizar)
)
    ENGINE = INNODB;
--------------------------------------------------------------------
Auditoria nivel_comercial eliminar
---------------------------------------------------------------------
CREATE TABLE auditoria_nivel_comercial_delete
(
    idauditoria_nivel_comercial_eliminar INT NOT NULL AUTO_INCREMENT,
    comercial_auditoria VARCHAR(20) NOT NULL,
    usuario VARCHAR(45) NOT NULL,
    fecha_hora DATETIME NOT NULL,
    accion TEXT,
    connection_id BIGINT(13),
    PRIMARY KEY (idauditoria_nivel_comercial_eliminar)
)
    ENGINE = INNODB;
---------------------------------------------------------------------------
Auditoria cliente insertar
----------------------------------------------------------------------------
CREATE TABLE auditoria_cliente_insert
(
    idauditoria_cliente_insertar INT NOT NULL AUTO_INCREMENT,
    persona_idpersona_auditoria VARCHAR (45) NOT NULL,
    usuario VARCHAR(45) NOT NULL,
    fecha_hora DATETIME NOT NULL,
    accion TEXT,
    connection_id BIGINT(13), 
    PRIMARY KEY (idauditoria_cliente_insertar)
)
    ENGINE = INNODB;
----------------------------------------------------------------------
Auditoria cliente actualizar
---------------------------------------------------------------------
CREATE TABLE auditoria_cliente_update
(
    idauditoria_cliente_actualizar INT NOT NULL AUTO_INCREMENT,
    persona_idpersona_auditoria INT NOT NULL,
    usuario VARCHAR(45) NOT NULL,
    fecha_hora DATETIME NOT NULL,
    accion TEXT, 
    connection_id BIGINT(13),
    PRIMARY KEY (idauditoria_cliente_actualizar)
    
)
    ENGINE = INNODB;
--------------------------------------------------------------------
Auditoria cliente eliminar
---------------------------------------------------------------------
CREATE TABLE auditoria_cliente_delete
(
    idauditoria_cliente_eliminar INT NOT NULL AUTO_INCREMENT,
    persona_idpersona_auditoria INT NOT NULL,
    usuario VARCHAR(45) NOT NULL,
    fecha_hora DATETIME NOT NULL,
    accion TEXT, 
    connection_id BIGINT(13),
    PRIMARY KEY (idauditoria_cliente_eliminar)
)
    ENGINE = INNODB;
------------------------------------------------------------------
Auditoria empleado insertar
------------------------------------------------------------------
CREATE TABLE auditoria_empleado_insert
(
    idauditoria_empleado_insertar INT NOT NULL AUTO_INCREMENT,
    persona_idpersona_auditoria VARCHAR (45) NOT NULL,
    usuario VARCHAR(45) NOT NULL,
    fecha_hora DATETIME NOT NULL,
    accion TEXT,
    connection_id BIGINT(13), 
    PRIMARY KEY (idauditoria_empleado_insertar)
)
    ENGINE = INNODB;
--------------------------------------------------------------------
CREATE TABLE auditoria_empleado_update
(
    idauditoria_empleado_actualizar INT NOT NULL AUTO_INCREMENT,
    persona_idpersona_auditoria VARCHAR (45) NOT NULL,
    usuario VARCHAR(45) NOT NULL,
    fecha_hora DATETIME NOT NULL,
    accion TEXT, 
    connection_id BIGINT(13),
    PRIMARY KEY (idauditoria_empleado_actualizar)
)
    ENGINE = INNODB;
---------------------------------------------------------------------
CREATE TABLE auditoria_empleado_delete
(
    idauditoria_empleado_eliminar INT NOT NULL AUTO_INCREMENT,
    persona_idpersona_auditoria VARCHAR (45) NOT NULL,
    usuario VARCHAR(45) NOT NULL,
    fecha_hora DATETIME NOT NULL,
    accion TEXT, 
    connection_id BIGINT(13),
    PRIMARY KEY (idauditoria_empleado_eliminar)
)
    ENGINE = INNODB;
-----------------------------------------------------------------------
Auditoria persona insertar
-----------------------------------------------------------------------
CREATE TABLE auditoria_persona_insert
(
    idauditoria_persona_insertar INT NOT NULL AUTO_INCREMENT,
    clave_auditoria VARCHAR(5) NOT NULL,
    primer_nombre_auditoria VARCHAR(45) NOT NULL,
    segundo_nombre_auditoria VARCHAR(45) NOT NULL,
    apellido_paterno_auditoria VARCHAR(45) NOT NULL,
    apellido_materno_auditoria VARCHAR(45) NOT NULL,
    curp_auditoria VARCHAR(18) NOT NULL,
    rfc_auditoria VARCHAR(13) NOT NULL,
    nss_auditoria VARCHAR(13) NOT NULL,
    observaciones_auditoria TEXT (145) NOT NULL,
    correo_idcorreo_auditoria INT NOT NULL,
    nivel_comercial_idnivel_comercial_auditoria INT NOT NULL,
    nivel_acceso_idnivel_acceso_auditoria INT NOT NULL,
    roles_idroles_auditoria INT NOT NULL,
    domicilio_iddomicilio_auditoria INT NOT NULL,
    localizador_idlocalizador_auditoria INT NOT NULL,
    usuario VARCHAR(45) NOT NULL,
    fecha_hora DATETIME NOT NULL,
    accion VARCHAR (150) NOT NULL,
    connection_id BIGINT(13) NOT NULL,
    PRIMARY KEY (idauditoria_persona_insertar)
)
    ENGINE = INNODB;
-----------------------------------------------------------------------
Auditoria persona actualizar
-----------------------------------------------------------------------
CREATE TABLE auditoria_persona_update
(
    idauditoria_persona_actualizar INT NOT NULL AUTO_INCREMENT,
    clave_auditoria VARCHAR(5) NOT NULL,
    primer_nombre_auditoria VARCHAR(45) NOT NULL,
    segundo_nombre_auditoria VARCHAR(45) NOT NULL,
    apellido_paterno_auditoria VARCHAR(45) NOT NULL,
    apellido_materno_auditoria VARCHAR(45) NOT NULL,
    curp_auditoria VARCHAR(18) NOT NULL,
    rfc_auditoria VARCHAR(13) NOT NULL,
    nss_auditoria VARCHAR(13) NOT NULL,
    observaciones_auditoria TEXT (145) NOT NULL,
    correo_idcorreo_auditoria INT NOT NULL,
    nivel_comercial_idnivel_comercial_auditoria INT NOT NULL,
    nivel_acceso_idnivel_acceso_auditoria INT NOT NULL,
    roles_idroles_auditoria INT NOT NULL,
    domicilio_iddomicilio_auditoria INT NOT NULL,
    localizador_idlocalizador_auditoria INT NOT NULL,
    usuario VARCHAR(45) NOT NULL,
    fecha_hora DATETIME NOT NULL,
    accion VARCHAR (150) NOT NULL,
    connection_id BIGINT(13) NOT NULL,
    PRIMARY KEY (idauditoria_persona_actualizar)
)
    ENGINE = INNODB;
-----------------------------------------------------------------------
Auditoria persona eliminar
-----------------------------------------------------------------------
CREATE TABLE auditoria_persona_delete
(
    idauditoria_persona_eliminar INT NOT NULL AUTO_INCREMENT,
    clave_auditoria VARCHAR(5) NOT NULL,
    primer_nombre_auditoria VARCHAR(45) NOT NULL,
    segundo_nombre_auditoria VARCHAR(45) NOT NULL,
    apellido_paterno_auditoria VARCHAR(45) NOT NULL,
    apellido_materno_auditoria VARCHAR(45) NOT NULL,
    curp_auditoria VARCHAR(18) NOT NULL,
    rfc_auditoria VARCHAR(13) NOT NULL,
    nss_auditoria VARCHAR(13) NOT NULL,
    observaciones_auditoria TEXT (145) NOT NULL,
    correo_idcorreo_auditoria INT NOT NULL,
    nivel_comercial_idnivel_comercial_auditoria INT NOT NULL,
    nivel_acceso_idnivel_acceso_auditoria INT NOT NULL,
    roles_idroles_auditoria INT NOT NULL,
    domicilio_iddomicilio_auditoria INT NOT NULL,
    localizador_idlocalizador_auditoria INT NOT NULL,
    usuario VARCHAR(45) NOT NULL,
    fecha_hora DATETIME NOT NULL,
    accion VARCHAR (150) NOT NULL,
    connection_id BIGINT(13) NOT NULL,
    PRIMARY KEY (idauditoria_persona_eliminar)
)
    ENGINE = INNODB;

-----------------------------------------------------------------
Auditoria producto insertar
-----------------------------------------------------------------
CREATE TABLE auditoria_producto_insert
(
    idauditoria_producto_insert INT NOT NULL AUTO_INCREMENT,
    clave_auditoria VARCHAR (45) NOT NULL, 
    nombre_producto_auditoria VARCHAR(45) NOT NULL, 
    marca_auditoria VARCHAR(45) NOT NULL,
    precio_compra_auditoria DOUBLE NOT NULL,
    cantidad_auditoria DOUBLE NOT NULL,
    codigo_sat BIGINT(13) NOT NULL,
    codigo_barras_auditoria INT NOT NULL,
    familia_idfamilia_auditoria INT NOT NULL,
    familia_sat_idfamilia_sat_auditoria INT NOT NULL,
    precios_idprecios_auditoria INT NOT NULL,
    usuario VARCHAR(45) NOT NULL,
    fecha_hora DATETIME NOT NULL,
    accion TEXT(150), NOT NULL,
    connection_id BIGINT (13) NOT NULL,
    PRIMARY KEY (idauditoria_producto_insert)
)
    ENGINE = INNODB;
--------------------------------------------------------------------
Auditoria producto actualizar
--------------------------------------------------------------------
CREATE TABLE auditoria_producto_update
(
    idauditoria_producto_update INT NOT NULL AUTO_INCREMENT,
    clave_auditoria VARCHAR (45) NOT NULL, 
    nombre_producto_auditoria VARCHAR(45) NOT NULL, 
    marca_auditoria VARCHAR(45) NOT NULL,
    precio_compra_auditoria DOUBLE NOT NULL,
    cantidad_auditoria DOUBLE NOT NULL,
    codigo_sat BIGINT(13) NOT NULL,
    codigo_barras_auditoria INT NOT NULL,
    familia_idfamilia_auditoria INT NOT NULL,
    familia_sat_idfamilia_sat_auditoria INT NOT NULL,
    usuario VARCHAR(45) NOT NULL,
    fecha_hora DATETIME NOT NULL,
    accion TEXT(150), NOT NULL,
    connection_id BIGINT (13) NOT NULL,
    PRIMARY KEY (idauditoria_producto_update)
)
    ENGINE = INNODB;
--------------------------------------------------------------------
Auditoria producto eliminar
--------------------------------------------------------------------
CREATE TABLE auditoria_producto_delete
(
    idauditoria_producto_delete INT NOT NULL AUTO_INCREMENT,
     clave_auditoria VARCHAR (45) NOT NULL, 
    nombre_producto_auditoria VARCHAR(45) NOT NULL, 
    marca_auditoria VARCHAR(45) NOT NULL,
    precio_compra_auditoria DOUBLE NOT NULL,
    cantidad_auditoria DOUBLE NOT NULL,
    codigo_sat BIGINT(13) NOT NULL,
    codigo_barras_auditoria INT NOT NULL,
    familia_idfamilia_auditoria INT NOT NULL,
    familia_sat_idfamilia_sat_auditoria INT NOT NULL,
    usuario VARCHAR(45) NOT NULL,
    fecha_hora DATETIME NOT NULL,
    accion TEXT(150), NOT NULL,
    connection_id BIGINT (13) NOT NULL,
    PRIMARY KEY ()
)