insert into section values (001 , 'novel' ,200);
insert into section values (002 , 'reality' ,200);

insert into book values (1001 , 'da vinci code' ,001,'available'); 
insert into Author values (1001, 'dan brown');

insert into book values (1002 , 'hayat fe aledarah' ,002, 'available');  
insert into Author values (1002, 'ghazi alqosaiby');

insert into book values (1003 , 'The circle' ,001, 'available'); 
insert into Author values (1003, 'hoci');

insert into book values (1004 , 'a thousand' ,001, 'available');
insert into Author values (1004, 'khalid hussiny');

insert into book values (1005 , 'The 1984' ,001, 'available'); 
insert into Author values (1005, 'george orwell');


select * from book , Author where Author.ISBN = book.ISBN;
