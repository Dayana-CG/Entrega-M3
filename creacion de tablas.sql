CREATE TABLE usuario (
idUsuario int not null,
nombre varchar(100),
email varchar(50),
password varchar(50),
saldo decimal(10,2),
PRIMARY KEY (idUsuario)
);

CREATE TABLE moneda (
idMoneda int not null,
nombre varchar(100),
simbolo varchar(8),
PRIMARY KEY (idMoneda)
);

CREATE TABLE transaccion (
  idTransaccion INT NOT NULL,
  envio_idUsuario INT NOT NULL,
  recepcion_idUsuario INT NOT NULL,
  fecha DATE NOT NULL,
  moneda_idMoneda INT NOT NULL,
  importe VARCHAR(45) NOT NULL,
  PRIMARY KEY (idTransaccion),
  INDEX fk_transaccion_usuario1_idx (envio_idUsuario ASC) VISIBLE,
  INDEX fk_transaccion_usuario2_idx (recepcion_idUsuario ASC) VISIBLE,
  INDEX fk_transaccion_moneda1_idx (moneda_idMoneda ASC) VISIBLE,
  CONSTRAINT fk_transaccion_usuario1
    FOREIGN KEY (envio_idUsuario)
    REFERENCES usuario (idUsuario)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT fk_transaccion_usuario2
    FOREIGN KEY (recepcion_idUsuario)
    REFERENCES usuario (idUsuario)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT fk_transaccion_moneda1
    FOREIGN KEY (moneda_idMoneda)
    REFERENCES moneda (idMoneda)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);

