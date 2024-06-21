create database WebProject3;
use WebProject3;

create table tbl_user_info(
	no int primary key not null auto_increment, 
	id varchar(50) not null, 
	passwd varchar(200) not null, 
	name varchar(100) not null, 
	nickname varchar(200), 
	phone_number varchar(50) not null, 
	is_verified tinyint not null default 0, 
	gender char(1), 
	addr varchar(500), 
	profile_image varchar(500));

create table tbl_user_verified(
	no int primary key not null auto_increment, 
	phone_number varchar(50) not null, 
	code varchar(6) not null, 
	expirationTime datetime default null);
DELIMITER //
CREATE TRIGGER before_insert_tbl_user_verified
BEFORE INSERT ON tbl_user_verified
FOR EACH ROW
BEGIN
    IF NEW.expirationTime IS NULL THEN
        SET NEW.expirationTime = DATE_ADD(NOW(), INTERVAL 5 MINUTE);
    END IF;
END;
//
DELIMITER ;

create table tbl_post_info(
	no int primary key not null auto_increment, 
	parent_post_no int, 
	author_no int not null, 
	title varchar(255) not null, 
	context text not null, 
	creation_date datetime not null default now(),
	modified_date datetime not null,
	likes int not null default 0,
views int not null default 0, 
	foreign key(parent_post_no) references tbl_post_info(no), 
	foreign key(author_no) references tbl_user_info(no));

create table tbl_post_comments(
	no int primary key not null auto_increment, 
	post_no int not null,
	parent_comment_no int, 
	author_no int, 
	content text not null, 
	date datetime not null default now(), 
	likes int not null default 0, 
	foreign key(post_no) references tbl_post_info(no), 
	foreign key(parent_comment_no) references tbl_post_comments(no), 
	foreign key(author_no) references tbl_user_info(no));

create table tbl_product_info(
	no int primary key not null auto_increment, 
	seller_no int not null, title varchar(255) not null, 
	title text not null,
	description text,
addr varchar(255) not null, 
	price int not null, 
	creation_date datetime not null default now(), 
	modified_date datetime not null,
	likes int not null default 0
	views int not null default 0, 
	foreign key(seller_no) references tbl_user_info(no));

create table tbl_product_chat(
	no int primary key not null auto_increment, 
	parent_chat_no int not null,
	product_no int not null,
	sender_no int not null, 
	receiver_no int not null, 
	content text not null, 
	date datetime not null default now(), 
	foreign key(parent_chat_no) references tbl_product_chat(no),
	foreign key(product_no) references tbl_product_info(no),
	foreign key(sender_no) references tbl_user_info(no), 
	foreign key(receiver_no) references tbl_user_info(no));

create table tbl_transaction_info(
	no int primary key not null auto_increment, 
	product_no int not null, 
	buyer_no int not null, 
	date datetime not null default now(), 
	foreign key(product_no) references tbl_product_info(no), 
	foreign key(buyer_no) references tbl_user_info(no));



