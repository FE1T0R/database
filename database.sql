CREATE DATABASE passt;
USE passt;

CREATE TABLE sitio(
    id INT(11) NOT NULL PRIMARY KEY AUTO_INCREMENT,
    nombre_s VARCHAR(45) NOT NULL,
    usuario_s VARCHAR(45),
    email_s VARCHAR(255) NOT NULL,
    password_s VARCHAR(60) NOT NULL,
    fechacreado TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP );


#Se crea procedimeinto Almacenado
DROP PROCEDURE IF EXISTS busqueda;
DELIMITER //
CREATE PROCEDURE busqueda(IN sitioBuscado VARCHAR(45))
BEGIN
   SELECT * from sitio WHERE nombre_s LIKE (SELECT CONCAT('%',sitioBuscado,'%'));
END //

#Se crea funcion encriptar
DROP FUNCTION IF EXISTS encriptar;
DELIMITER //
CREATE FUNCTION encriptar(pass VARCHAR (60))
   RETURNS VARCHAR(255)
   BEGIN
   DECLARE a VARCHAR(255);
   SET a = hex(aes_encrypt(pass,'password'));
   RETURN a;
   END //

#Se crea funcion desencriptar
DROP FUNCTION IF EXISTS desencriptar;
DELIMITER //
CREATE FUNCTION desencriptar(pass VARCHAR(255))
   RETURNS VARCHAR (60)
   BEGIN
   DECLARE a VARCHAR(60);
   SET a = aes_decrypt(unhex(pass),'password');

   RETURN a;
   END //


INSERT INTO passt.sitio (id, nombre_s, usuario_s, email_s, password_s, fechacreado) VALUES ('1', 'Netflix', 'paquito', 'sucorreo@correo.com','hola123','2023-03-11 12:01:01');
INSERT INTO passt.sitio (id, nombre_s, usuario_s, email_s, password_s, fechacreado) VALUES ('2', 'Facebook', 'paquito', 'sucorreo@correo.com','123', '2023-03-11 12:01:01');
INSERT INTO passt.sitio (id, nombre_s, usuario_s, email_s, password_s, fechacreado) VALUES ('3', 'AulaVirtual', '1111111111', 'sucorreo@correo.com','abcd', '2023-03-11 12:01:01');
INSERT INTO passt.sitio (id, nombre_s, usuario_s, email_s, password_s, fechacreado) VALUES ('4', 'Paypal', 'paquito', 'sucorreo@correo.com','xyz', '2023-03-11 12:01:01');
INSERT INTO passt.sitio (id, nombre_s, usuario_s, email_s, password_s, fechacreado) VALUES ('5', 'Disney', 'paquito', 'sucorreo@correo.com','paco', '2023-03-11 12:01:01');
INSERT INTO passt.sitio (id, nombre_s, usuario_s, email_s, password_s, fechacreado) VALUES ('6', 'Hotmail', 'paquito', 'sucorreo@correo.com','ramon', '2023-03-11 12:01:01');
INSERT INTO passt.sitio (id, nombre_s, usuario_s, email_s, password_s, fechacreado) VALUES ('7', 'Mercado Libre', 'paquito', 'sucorreo@correo.com','contraseña', '2023-03-11 12:01:01');
INSERT INTO passt.sitio (id, nombre_s, usuario_s, email_s, password_s, fechacreado) VALUES ('8', 'Biblored', 'paquito', 'sucorreo@correo.com','procedimientos', '2023-03-11 12:01:01');
INSERT INTO passt.sitio (id, nombre_s, usuario_s, email_s, password_s, fechacreado) VALUES ('9', 'MiClaro', 'paquito', 'sucorreo@correo.com','almacenados', '2023-03-11 12:01:01');
INSERT INTO passt.sitio (id, nombre_s, usuario_s, email_s, password_s, fechacreado) VALUES ('10', 'MovistarApp', 'paquito', 'sucorreo@correo.com','clave', '2023-03-11 12:01:01');
INSERT INTO passt.sitio (id, nombre_s, usuario_s, email_s, password_s, fechacreado) VALUES ('11', 'Disney', 'paquito', 'sucorreo@correo.com','miclave', '2023-03-11 12:01:01');
INSERT INTO passt.sitio (id, nombre_s, usuario_s, email_s, password_s, fechacreado) VALUES ('12', 'Gef', 'paquito', 'sucorreo@correo.com','seguridad', '2023-03-11 12:01:01');
INSERT INTO passt.sitio (id, nombre_s, usuario_s, email_s, password_s, fechacreado) VALUES ('13', 'Reebok', 'paquito', 'sucorreo@correo.com','encriptacion', '2023-03-11 12:01:01');
INSERT INTO passt.sitio (id, nombre_s, usuario_s, email_s, password_s, fechacreado) VALUES ('14', 'ASIS', 'paquito', 'sucorreo@correo.com','php', '2023-03-11 12:01:01');
INSERT INTO passt.sitio (id, nombre_s, usuario_s, email_s, password_s, fechacreado) VALUES ('15', 'Youtube', 'paquito', 'sucorreo@correo.com','javascript', '2023-03-11 12:01:01');
INSERT INTO passt.sitio (id, nombre_s, usuario_s, email_s, password_s, fechacreado) VALUES ('16', 'Steam', 'paquito', 'sucorreo@correo.com','covid2019', '2023-03-11 12:01:01');
INSERT INTO passt.sitio (id, nombre_s, usuario_s, email_s, password_s, fechacreado) VALUES ('17', 'Tidal', 'paquito', 'sucorreo@correo.com','mono', '2023-03-11 12:01:01');
INSERT INTO passt.sitio (id, nombre_s, usuario_s, email_s, password_s, fechacreado) VALUES ('18', 'Amazon', 'paquito', 'sucorreo@correo.com','azucar123', '2023-03-11 12:01:01');
INSERT INTO passt.sitio (id, nombre_s, usuario_s, email_s, password_s, fechacreado) VALUES ('19', 'W3School', 'paquito', 'sucorreo@correo.com','transmilenio', '2023-03-11 12:01:01');
INSERT INTO passt.sitio (id, nombre_s, usuario_s, email_s, password_s, fechacreado) VALUES ('20', 'Nvidia', 'paquito', 'sucorreo@correo.com','universidad', '2023-03-11 12:01:01');
INSERT INTO passt.sitio (id, nombre_s, usuario_s, email_s, password_s, fechacreado) VALUES ('21', 'Spotify', 'paquito', 'sucorreo@correo.com','musica', '2023-03-11 12:01:01');
INSERT INTO passt.sitio (id, nombre_s, usuario_s, email_s, password_s, fechacreado) VALUES ('22', 'Computador Oficina', 'paquito', 'sucorreo@correo.com','paloquemao', '2023-03-11 12:01:01');
INSERT INTO passt.sitio (id, nombre_s, usuario_s, email_s, password_s, fechacreado) VALUES ('23', 'Sistema Contable', 'paquito', 'sucorreo@correo.com','ayayayya', '2023-03-11 12:01:01');
INSERT INTO passt.sitio (id, nombre_s, usuario_s, email_s, password_s, fechacreado) VALUES ('24', 'Seguridad Social', 'paquito', 'sucorreo@correo.com','camaron', '2023-03-11 12:01:01');
INSERT INTO passt.sitio (id, nombre_s, usuario_s, email_s, password_s, fechacreado) VALUES ('25', 'EPS Sura', 'paquito', 'sucorreo@correo.com','capoeira', '2023-03-11 12:01:01');