create database sp

create table administrator (
id_admin  int not null,
name_admin varchar not null,
constraint pkAdmin primary key(id_admin)
);

create table customerr (
id_customer int not null,
name_customer varchar not null,
phonenumber varchar not null,
address varchar  null,
constraint pkCustomer primary key(id_customer)
);

create table Productt (
id_product int not null,
name_product varchar not null,
quantity int not null,
price float not null,
constraint pkProduct primary key(id_product)
);

