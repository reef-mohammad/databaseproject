create table section(
id_S int not null primary key ,
name_S varchar(20), 
co_S int);

create table staff(
pin int not null primary key ,
  password int ,
salary int,
phone int ,
f_name varchar(20),
l_name varchar(20) ,
id_S int,
FOREIGN key (id_S) REFERENCES section(id_S)
);

create table privilege_s(
prv_num int not null primary key ,
prv_name varchar(20),
prv_admin int ,
maxi_bor int,
loan_period varchar(20),
FOREIGN key (prv_admin) REFERENCES staff (pin));




create table  customer (
id_c int not null primary key ,
f_name varchar(20),
lname varchar(20),
street varchar(20),
email varchar(30),
b_date date,
phone int ,
building int ,
prv_num int,
FOREIGN key (prv_num) REFERENCES privilege_s(prv_num));

create table loans(
id_L int not null primary key,
date_L date, 
time_B int, 
end_B date, 
id_C int,
FOREIGN key (id_C) REFERENCES customer (id_C));

create table book( 
ISBN int not null primary key, 
name_B varchar(20),
id_s int,
status_B varchar(20),
FOREIGN key (id_S) REFERENCES section(id_S)
);

create table book_borrower(
ISBN int not null, 
borrower int,
FOREIGN key (borrower) REFERENCES customer(id_c),
CONSTRAINT book_borrower_FK FOREIGN KEY (ISBN) REFERENCES book (ISBN) on delete cascade);

create table Author(
ISBN int not null, 
Author varchar(20) not null, 
CONSTRAINT Author_FK FOREIGN KEY (ISBN) REFERENCES book (ISBN) on delete cascade);

create table fines (
id_F int not null primary key,
amount_F int ,
id_l int,
FOREIGN key (id_l) REFERENCES loans(id_l)
);

create table fines_date (
id_F int not null, 
due_date date, 
CONSTRAINT fines_FK FOREIGN KEY (id_F) REFERENCES fines (id_F) on delete cascade);
