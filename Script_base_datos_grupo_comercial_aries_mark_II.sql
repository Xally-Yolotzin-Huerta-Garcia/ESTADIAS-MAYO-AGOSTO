Desarollador Jose Ramon Damazo Pelaez
-----------------------------------------------------------
TABLAS SIN LLAVES FORANEAS
-----------------------------------------------------------
CREATE TABLE roles 
(
    idroles INT NOT NULL AUTO_INCREMENT,
    roles VARCHAR(20) NOT NULL,
    PRIMARY KEY (idroles)) 
    ENGINE = INNODB;

CREATE TABLE nivel_comercial 
(
    idnivel_comercial INT NOT NULL AUTO_INCREMENT,
    nivel_comercial VARCHAR (20) NOT NULL,
    PRIMARY KEY (idnivel_comercial)
    ) 
    ENGINE = INNODB;

CREATE TABLE correo 
(
    idcorreo INT NOT NULL AUTO_INCREMENT,
    email VARCHAR(50) NOT NULL,
    PRIMARY KEY (idcorreo),
    UNIQUE INDEX email_UNIQUE (email ASC)
)
    ENGINE = INNODB;

CREATE TABLE domicilio 
(
    iddomicilio INT NOT NULL AUTO_INCREMENT,
    calle VARCHAR(45) NOT NULL,
    num_interior BIGINT(2) NOT NULL,
    num_exterior BIGINT(2) NOT NULL ,
    colonia VARCHAR(45) NOT NULL,
    municipio VARCHAR (30) NOT NULL,
    entidad_federativa VARCHAR (50) NOT NULL,
    codigo_postal BIGINT(5) NOT NULL,
    PRIMARY KEY (iddomicilio)) 
    ENGINE = INNODB;


CREATE TABLE nivel_acceso
(
    idnivel_acceso INT NOT NULL,
    nivel_acceso VARCHAR(30) NOT NULL,
    PRIMARY KEY (idnivel_acceso))
    ENGINE = INNODB; 
	


CREATE TABLE correo 
(
    idcorreo INT NOT NULL AUTO_INCREMENT ,
    email VARCHAR(50) NOT NULL,
    PRIMARY KEY (idcorreo),
    UNIQUE INDEX email_UNIQUE (email ASC))
    ENGINE = INNODB;

CREATE TABLE localizador
(
    idlocalizador INT NOT NULL AUTO_INCREMENT,
    telefono_uno BIGINT(10),
    telefono_dos BIGINT(10),
    PRIMARY KEY (idlocalizador),
    UNIQUE INDEX telefono_uno_UNIQUE(telefono_uno ASC),
    UNIQUE INDEX telefono_dos_UNIQUE (telefono_dos ASC ))
    ENGINE = INNODB;
    

-----------------------------------------------------------
TABLAS CON LLAVES FORANEAS PERSONA
-----------------------------------------------------------
CREATE TABLE `persona` 
(
  `idpersona` INT NOT NULL AUTO_INCREMENT,
  `clave` VARCHAR(5) NOT NULL,
  `primer_nombre` VARCHAR(45) NOT NULL,
  `segundo_nombre` VARCHAR(45) NOT NULL,
  `apellido_paterno` VARCHAR(45) NOT NULL,
  `apellido_materno` VARCHAR(45) NOT NULL,
  `curp` VARCHAR (18) NOT NULL,
  `rfc` VARCHAR (13) NOT NULL,
  `nss` VARCHAR (11) NOT NULL,
  `observaciones` TEXT (150) NOT NULL,
  `correo_idcorreo` INT NOT NULL,
  `nivel_comercial_idnivel_comercial` INT NOT NULL,
  `roles_idroles` INT NOT NULL,
  `domicilio_iddomicilio` INT NOT NULL,
  `localizador_idlocalizador` INT NOT NULL,
  `nivel_acceso_idnivel_acceso` INT NOT NULL,
  PRIMARY KEY (`idpersona`, `correo_idcorreo`, `nivel_comercial_idnivel_comercial`, `roles_idroles`, `domicilio_iddomicilio`, `localizador_idlocalizador`, `nivel_acceso_idnivel_acceso`),
  INDEX `fk_persona_correo` (`correo_idcorreo` ASC) ,
  INDEX `fk_persona_nivel_comercial1` (`nivel_comercial_idnivel_comercial` ASC),
  INDEX `fk_persona_roles1` (`roles_idroles` ASC),
  INDEX `fk_persona_domicilio1` (`domicilio_iddomicilio` ASC),
  INDEX `fk_persona_localizador1` (`localizador_idlocalizador` ASC),
  INDEX `fk_persona_nivel_acceso1` (`nivel_acceso_idnivel_acceso` ASC),
  CONSTRAINT `fk_persona_correo`
    FOREIGN KEY (`correo_idcorreo`)
    REFERENCES `correo` (`idcorreo`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_persona_nivel_comercial1`
    FOREIGN KEY (`nivel_comercial_idnivel_comercial`)
    REFERENCES `nivel_comercial` (`idnivel_comercial`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
   CONSTRAINT `fk_persona_roles1`
    FOREIGN KEY (`roles_idroles`)
    REFERENCES `roles`(`idroles`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
   CONSTRAINT `fk_persona_domicilio1`
    FOREIGN KEY  (`domicilio_iddomicilio`)
    REFERENCES `domicilio`(`iddomicilio`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
   CONSTRAINT `fk_persona_localizador1`
    FOREIGN KEY (`localizador_idlocalizador`)
    REFERENCES `localizador`(`idlocalizador`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
   CONSTRAINT `fk_persona_nivel_acceso1`
    FOREIGN KEY (`nivel_acceso_idnivel_acceso`)
    REFERENCES `nivel_acceso` (`idnivel_acceso`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
	ENGINE = InnoDB;
-------------------------------------------------------
TABLA PERSONA CON LLAVES FORANES, SOLO CON DOS CAMPOS idcliente y idpersona
--------------------------------------------------------
    
CREATE TABLE cliente
(
    idcliente INT NOT NULL AUTO_INCREMENT,
    persona_idpersona INT NOT NULL,
    PRIMARY KEY (idcliente, persona_idpersona),
    INDEX fk_cliente_persona2 (persona_idpersona ASC),
   CONSTRAINT fk_cliente_persona2 
    FOREIGN KEY (persona_idpersona)
    REFERENCES persona (idpersona)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
    ENGINE = INNODB;
-------------------------------------------------------
TABLA EMPLEADOS CON LLAVES FORANEAS, SOLO CON DOS CAMPOS idempleado y idpersona
-------------------------------------------------------
CREATE TABLE empleado
(
    idempleado INT NOT NULL AUTO_INCREMENT,
    persona_idpersona INT NOT NULL,
    PRIMARY KEY (idempleado, persona_idpersona),
    INDEX fk_empleado_persona3 (persona_idpersona ASC),
   CONSTRAINT fk_empleado_persona3
    FOREIGN KEY (persona_idpersona)
    REFERENCES persona (idpersona)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
    ENGINE = INNODB;
    
---------------------------------------------------------
TABLA FAMILIA  PRIMARY KEY
---------------------------------------------------------
CREATE TABLE familia
(
    idfamilia INT NOT NULL AUTO_INCREMENT,
    familia_empresa VARCHAR (45) NOT NULL,
    PRIMARY KEY (idfamilia)
)
    ENGINE = INNODB;
----------------------------------------------------------
TABLA FAMILIA_SAT PRIMARY KEY 
----------------------------------------------------------
CREATE TABLE familia_sat
(
    idfamilia_sat INT NOT NULL AUTO_INCREMENT,
    familia_sat VARCHAR(45) NOT NULL,
    PRIMARY KEY (idfamilia_sat)
)
    ENGINE = INNODB;
----------------------------------------------------------
TABLA codigo_sat PRIMARY KEY 
----------------------------------------------------------
CREATE TABLE codigo_sat 
(
    idcodigo_sat BIGINT(13) NOT NULL,
    PRIMARY KEY (idcodigo_sat) 
)
    ENGINE = INNODB;
--------------------------------------------------------
TABLA CARGO FOREIGN KEY 
--------------------------------------------------------
CREATE TABLE cargo
(
    idcargo INT NOT NULL AUTO_INCREMENT,
    empleado_idempleado INT ,
    cliente_idcliente INT ,
    PRIMARY KEY (idcargo, empleado_idempleado, cliente_idcliente),
    INDEX fk_cargo_empleado4 (empleado_idempleado ASC),
    INDEX fk_cargo_cliente4 (cliente_idcliente ASC),
   CONSTRAINT fk_cargo_empleado4
    FOREIGN KEY (empleado_idempleado)
    REFERENCES empleado (idempleado)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
   CONSTRAINT fk_cargo_cliente4
    FOREIGN KEY (cliente_idcliente)
    REFERENCES cliente (idcliente)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION
    )
    ENGINE = INNODB;
---------------------------------------------------------
TABLA ABONO FOREIGN KEY
---------------------------------------------------------
CREATE TABLE abono
(
    idabono INT NOT NULL AUTO_INCREMENT,
    empleado_idempleado INT ,
    cliente_idcliente INT ,
    PRIMARY KEY (idabono, empleado_idempleado, cliente_idcliente),
    INDEX fk_cargo_empleado5 (empleado_idempleado ASC),
    INDEX fk_cargo_cliente5 (cliente_idcliente ASC),
   CONSTRAINT fk_cargo_empleado5
    FOREIGN KEY (empleado_idempleado)
    REFERENCES empleado (idempleado)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
   CONSTRAINT fk_cargo_cliente5
    FOREIGN KEY (cliente_idcliente)
    REFERENCES cliente (idcliente)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION
    )
    ENGINE = INNODB;
------------------------------------------------------------
TABLA REGISTRO_COMPRA FOREIGN KEY
------------------------------------------------------------
CREATE TABLE registro_compra 
(
    idregistro_compra INT NOT NULL AUTO_INCREMENT,
    folio_operacion VARCHAR (10) NOT NULL,
    razon_de_asiento VARCHAR(45) NOT NULL ,
    entrada DOUBLE NOT NULL,
    salida DOUBLE NOT NULL,
    cargo_idcargo INT,
    abono_idabono INT ,
    fecha_registro DATE,
    hora_registro TIME,
    PRIMARY KEY (idregistro_compra, cargo_idcargo, abono_idabono),
    INDEX fk_cargo_idcargo6 (cargo_idcargo ASC),
    INDEX fk_abono_idabono6 (abono_idabono ASC),
   CONSTRAINT fk_cargo_idcargo6 
    FOREIGN KEY (cargo_idcargo)
    REFERENCES cargo (idcargo)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
   CONSTRAINT fk_abono_idabono6
    FOREIGN KEY (abono_idabono)
    REFERENCES abono (idabono)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION
)
    ENGINE = INNODB;

----------------------------------------------------------
TABLA PROVEEDORES PRIMARY KEY
----------------------------------------------------------
CREATE TABLE proveedores 
(
    idproveedores INT NOT NULL AUTO_INCREMENT,
    primer_nombre VARCHAR (45) NOT NULL,
    segundo_nombre VARCHAR (45) NOT NULL,
    apellido_paterno VARCHAR(45) NOT NULL,
    apellido_materno VARCHAR(45) NOT NULL,
    PRIMARY KEY (idproveedores)
)
    ENGINE = INNODB;


------------------------------------------------------------
CREATE TABLE compras 
(
    idcompra INT NOT NULL AUTO_INCREMENT,
    No_comprobante VARCHAR(45) NOT NULL,
    registro_compra_idregistro_compra INT NOT NULL,
    proveedores_idproveedores INT NOT NULL,
    producto_idproducto INT NOT NULL,
    fecha_hora_compra DATETIME NOT NULL,
    PRIMARY KEY (idcompra, registro_compra_idregistro_compra, proveedores_idproveedores, producto_idproducto),
    INDEX fk_registro_compra_idregistro_compra7 (registro_compra_idregistro_compra ASC), 
    INDEX fk_proveedores_idproveedores7 (proveedores_idproveedores ASC),
    INDEX fk_producto_idproducto7 (producto_idproducto ASC),
   CONSTRAINT fk_registro_compra_idregistro_compra7 
    FOREIGN KEY (registro_compra_idregistro_compra)
    REFERENCES registro_compra (idregistro_compra)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
   CONSTRAINT fk_proveedores_idproveedores7
    FOREIGN KEY (proveedores_idproveedores)
    REFERENCES proveedores (idproveedores)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
   CONSTRAINT fk_producto_idproducto7
    FOREIGN KEY (producto_idproducto)
    REFERENCES producto (idproducto)
    ON DELETE NO ACTION 
    ON UPDATE NO ACTION
)
    ENGINE = INNODB;
--------------------------------------------------------------------
TABLA PRODUCTO PRIMARY 
----------------------------------------------------------------------
CREATE TABLE producto
(
    idproducto INT NOT NULL AUTO_INCREMENT,
    clave VARCHAR (45),
    nombre_producto VARCHAR(45) NOT NULL,
    marca VARCHAR (45) NOT NULL,
    precio_compra DOUBLE NOT NULL,
    cantidad DOUBLE NOT NULL,
    codigo_barras BIGINT(13) NOT NULL,
    codigo_sat BIGINT (13) NOT NULL UNIQUE,
    familia_sat_idfamilia_sat INT NOT NULL,
    familia_idfamilia INT NOT NULL,
    precios_idprecios INT NOT NULL,
    PRIMARY KEY (idproducto, familia_sat_idfamilia_sat, familia_idfamilia, precios_idprecios),
    INDEX fk_familia_sat_idfamilia_sat8 (familia_sat_idfamilia_sat ASC),
    INDEX fk_familia_idfamilia8 (familia_idfamilia ASC),
    INDEX fk_precios_idprecios8 (precios_idprecios ASC),
   CONSTRAINT fk_familia_sat_idfamilia_sat8
    FOREIGN KEY (familia_sat_idfamilia_sat)
    REFERENCES familia_sat (idfamilia_sat)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
   CONSTRAINT fk_familia_idfamilia8
    FOREIGN KEY (familia_idfamilia)
    REFERENCES familia (idfamilia)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
   CONSTRAINT fk_precios_idprecios8
    FOREIGN KEY (precios_idprecios)
    REFERENCES precios (idprecios)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION
   )
    ENGINE = INNODB;

------------------------------------------------------------------
Tabla precios PRIMARY KEY
-------------------------------------------------------------------
CREATE TABLE precios 
(
    idprecios INT NOT NULL AUTO_INCREMENT,
    precio_distribuidor DOUBLE NOT NULL,
    precio_subdistribuidor DOUBLE NOT NULL,
    precio_mayorista DOUBLE NOT NULL,
    precio_publico DOUBLE NOT NULL,
    PRIMARY KEY (idprecios)
)   
    ENGINE = INNODB;