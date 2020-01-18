create database springmvc;
use springmvc;
create table usuarios(
	Id int not null auto_increment,
    Nome char(50) not null,
    Email char(30) not null,
    Nacionalidade char(40) not null,
    primary key(Id)

);

insert into usuarios(Nome, Email, Nacionalidade)
values('Victor Gabriel', 'victorgabriel@gmail.com', 'brasileiro');
select * from usuarios;