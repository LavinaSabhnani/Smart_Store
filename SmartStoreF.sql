create database SmartStore;

use SmartStore;

CREATE TABLE User (
   membership_id int(11) NOT NULL auto_increment,
   UserName varchar(45) NOT NULL,
   Name varchar(45) NOT NULL,
   Email varchar(20) DEFAULT NULL,
   Password varchar(200) default NULL,
   Type varchar(20) DEFAULT NULL,
   NumCart int(20),
   NumCredits int(20),
   NumOffers int(20),
   PRIMARY KEY(membership_id) 
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

insert into User values (1,'abcd2107','ABCD','abcd@gmail.com','aaa','customer',0,1,1),
(2,'pqr','PQR','pqr@gmail.com','bbb','customer',0,1,1),
(3,'ghi','GHI','ghi@gmail.com','ccc','customer',0,1,1),
(4,'XYZ','XYZ','xyz@gmail.com','ddd','customer',0,1,1),
(5,'a1b2','A1B2','a1b2@gmail.com','eee','customer',0,1,1),
(6,'admin','AABB','admin@gmail.com','admin','admin',0,0,0);

select * from User;

CREATE TABLE Product (
   ProductID int(11) NOT NULL auto_increment,
   ProductCode varchar(45) NOT NULL,
   ProductName varchar(45) NOT NULL,
   ProductAddedDate varchar(45) default NULL,
	ProductOrderEmail varchar(45) default NULL,
   Category varchar(20) DEFAULT NULL,
   Status varchar(20) DEFAULT NULL,
   ProductDesc varchar(250) DEFAULT NULL,
   Price int(20),
   Quantity int(20),
   PRIMARY KEY(ProductID) 
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

insert into Product values((1,'p1','Hardisk','04-25-2017','aaa@gmail.com','aa','Brand1','available',100,20),
(2,'p2','CanonCamera','05-02-2017','bbb@gmail.com','bb','Brand3','available',10,25),
(3,'p3','Refrigerator','10-04-2016','ccc@gmail.com','cc','Brand7','available',50,10),
(4,'p4','televison','11-25-2016','ddd@gmail.com','dd','Brand4','available',70,80),
(5,'p5','Speakers','11-18-2016','eee@gmail.com','ee','Brand2','notavailable',100,15),
(6,'p6','Iron','04-25-2017','fff@gmail.com','ff','Brand3','available',80,40),
(7,'p7','Laptop','05-09-2017','ggg@gmail.com','gg','Brand5','notavailable',110,90),
(8,'p8','Mixer','09-02-2017','hhh@gmail.com','hh','Brand6','available',120,20),
(9,'p9','Fan','03-28-2017','iii@gmail.com','ii','Brand2','available',150,50),
(10,'p10','VacumCleaner','04-25-2017','jjj@gmail.com','jj','Brand1','available',130,13);


CREATE TABLE Payment (
	ProductCode VARCHAR(100),
    UserName VARCHAR(100),
    OrderDate date
);

select * from User;
select * from Product;

