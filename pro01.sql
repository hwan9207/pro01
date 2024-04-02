create table member(id varchar(20) primary key, name varchar(10), pw varchar(20), tel int, addr varchar(50),brith int );
create table notice(no int primary key, title varchar(100),content varchar(3000),resdate varchar(20),visited int);
create table culturalheritage(cname VARCHAR(100),no int primary key, ctype varchar(50), addr varchar(100),dyear varchar(30),admin varchar(30));
create table office(tname VARCHAR(30),addr VARCHAR(100),tel VARCHAR(20), fax VARCHAR(20));
commit;