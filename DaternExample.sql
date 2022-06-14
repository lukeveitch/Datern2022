create database daternexample;

use daternexample;

create table characters(
	C_ID int primary key not null identity(1,1),
	FirstName varchar(50) not null,
	LastName varchar(50) not null,
	Age int not null
);

insert into characters([FirstName],[LastName], [Age]) values 
('Ron', 'Weasley', 12),
('Albus', 'Dumbledore', 103),
('Rubeus', 'Hagrid', 58)

create table owls(
	O_ID int primary key not null identity(1,1),
	C_ID int foreign key references characters(C_ID),
	petName varchar(50) not null,
);

insert into owls([petName]) values 
('Hedwig'),
('Pigwidgeon')