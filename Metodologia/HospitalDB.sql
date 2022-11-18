create database hospital;
use hospital;
create table paciente(
idp int auto_increment primary key,
nombre varchar(200),
rut varchar(20)
);

create table ficha(
idf int auto_increment primary key,
edad int,
enfermedades_previas longtext,
tipo_sangre varchar(10),
altura decimal,
peso decimal,
idpaci int,
foreign key (idpaci) references paciente(idp)
);




delimiter $$
create procedure insert_pacientes(namese varchar(200), rute varchar(20))
begin
insert into paciente(nombre, rut)
values (namese, rute);
end$$
delimiter ;

delimiter $$
create procedure insert_ficha(edadd int, enfermedades_previasa longtext, tipo_sangres varchar(10), alturas decimal, pesos decimal, idpacia int)
begin
insert into ficha(edad, enfermedades_previas, tipo_sangre, altura, peso, idpaci)
values (edadd, enfermedades_previasa, tipo_sangres, alturas, pesoss, idpacia);
end$$
delimiter ;


 DELIMITER $$
CREATE PROCEDURE Update_pacientes(namese varchar(200), rute varchar(20), idC int)
BEGIN
update paciente
set nombre= rut, rut=nombre
where idp = idC;
END$$
delimiter ;

 DELIMITER $$
CREATE PROCEDURE Update_ficha (edadd int, enfermedades_previasa longtext, tipo_sangres varchar(10), alturas decimal, pesos decimal, idpacia int, idf int)
BEGIN
update ficha
set edad= edadd, enfermedades_previas=enfermedades_previasa, tipo_sangre=tipo_sangres, altura=alturas, peso=pesos,  idpaci= idpacia 
where idf = idC;
END$$

DELIMITER ;

 DELIMITER $$
CREATE PROCEDURE delete_pacientes(idC int)
BEGIN
delete from paciente where idp = idC;
END$$
delimiter ;

 DELIMITER $$
CREATE PROCEDURE delete_ficha(idC int)
BEGIN
delete from ficha where idf = idC;
END$$
delimiter ;
