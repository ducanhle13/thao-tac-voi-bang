create database contacts;
CREATE TABLE contacts
( contact_id INT(11) NOT NULL AUTO_INCREMENT,
  last_name VARCHAR(30) NOT NULL,
  first_name VARCHAR(25),
  birthday DATE,
  CONSTRAINT contacts_pk PRIMARY KEY (contact_id)
);

create table suppliers
(
  suppliers_id INT(11) NOT NULL AUTO_INCREMENT,
  suppliers_name varchar(50) NOT NULL,
  account_rep varchar(30) not null default 'TBD',
  constraint suppliers_kp primary key (suppliers_id)
);

drop table contacts;

alter table contacts
add email varchar(20) not null
after first_name;

alter table contacts
modify last_name varchar(50) null;

alter table contacts
drop column last_name;

alter table contacts
change column first_name ho_ten
varchar(20) not null;

alter table contacts
rename to ten_bang_moi;