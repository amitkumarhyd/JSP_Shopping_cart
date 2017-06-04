use shopping_app;

create table cus_login
(
 Name varchar(100) not null,
 cus_Id int not null,
 Age int not null,
 email_id varchar(150) not null,
 Phone int not null,
 primary key (cus_Id)
);

  insert into cus_login(Name,Age,email_id,Phone) values('Rohit',19,'rohit@gmail.com',0616462072);
  insert into cus_login(Name,Age,email_id,Phone) values('Mahesh',21,'mahesh@gmail.com',0712468795);
  insert into cus_login(Name,Age,email_id,Phone) values('Manga',21,'manga@rediffmail.com',0812467893); 
  insert into cus_login(Name,Age,email_id,Phone) values('Sanga',28,'sanga@in.com',091246851);
  
  alter table cus_login
  modify cus_Id int not null ;
  
  select*from cus_login;
  
 create table prod_inventory
 (
  prod_Id int not null,
  prod_name varchar(150) not null,
  discount float,
  price float not null,
  primary key (prod_Id)
 );
 
 describe prod_inventory;
 
 insert into prod_inventory(prod_name,discount,price) values('ARM', 10.0,25000.00); 
 insert into prod_inventory(prod_name,discount,price) values('Arduino', 0.1,965.00); 
 insert into prod_inventory(prod_name,discount,price) values('Resberry Pi',2.0,2500.00);
 insert into prod_inventory(prod_name,discount,price) values('ATmega 328a', 0.5,700.00); 
 insert into prod_inventory(prod_name,discount,price) values('8051 controller', 0.2,525.00);
 insert into prod_inventory(prod_name,discount,price) values('8085 microprocessor', 0.1,600.00); 
 insert into prod_inventory(prod_name,discount,price) values('PIC controler', 0.2,550.00);
  
 alter table prod_inventory
 modify prod_Id int not null auto_increment;
 
 update prod_inventory set discount=0.1
 where prod_Id=6;
 
 select*from prod_inventory;
 
 create table cus_cart
 (
  cus_Id int not null,
  prod_Id int not null,
  pay_mode varchar(100),
  pay_status varchar(100) not null,
  total_price int,
  Bill_no int 
 );
  
 describe cus_cart;
 
 alter table cus_cart
 modify Bill_no varchar(100);
 
 alter table cus_cart
 modify pay_status enum('paid','unpaid');
 
 alter table cus_cart
 modify pay_mode enum('e-payment','credit_card','Debit_card');
 
 insert into cus_cart(cus_Id,prod_Id,pay_status) values(1,2,'unpaid');
 insert into cus_cart(cus_Id,prod_Id,pay_mode,pay_status,total_price,Bill_no) values(1,3,'e-payment','paid',2000,'CX2187');
 insert into cus_cart(cus_Id,prod_Id,pay_mode,pay_status,total_price,Bill_no) values(2,6,'credit_card','paid',540,'RJ3695');  
 insert into cus_cart(cus_Id,prod_Id,pay_mode,pay_status,total_price,Bill_no) values(3,6,'Debit_card','paid',540,'PK3295');

 select*from cus_cart;