USE PortfolioDB;

create table member ( 
    id varchar(10) not null,
    password varchar(10) not null,
    name varchar(10) not null,
    birthday  varchar(10),

    email  varchar(30),
    regist_day varchar(50),    
    primary key(id) 
) default CHARSET=utf8;

select * from member;

drop table member;
