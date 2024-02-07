Create database SQLEX3;
USE SQLEX3;

Create Table Customer(
id Integer Not Null Primary Key auto_increment,
customer_name varchar(255),
city_id int(50),
customer_address varchar(255),
contact_person varchar(255) Not Null,
email varchar(128),
phone varchar(128)
);

Create Table Product(
id Integer Not Null Primary Key auto_increment,
sku varchar(32),
product_name varchar(128),
product_description text,
current_price decimal(8,2),
quantity_in_stock int(100)
);

Create Table Invoice(
id Integer Not Null Primary Key auto_increment,
 invoice_number varchar(255),
 customer_id int(500),
 user_account_id int(100),
 total_price decimal(8,2),
 time_issued varchar(255) Not null ,
 time_paid varchar (255) Not null,
 time_canceled varchar(255) Not null,
 time_refunded varchar(255) Not Null
 );
 
 Create Table Invoice_Item(
 id Integer Not Null Primary Key auto_increment,
 invoice_id int(200) Not Null,
 product_id int(200) Not Null,
 quantity int(100),
 price decimal(8,2),
 line_total_price decimal (8,2)
 );
 
 Alter Table Invoice
Add Foreign Key (customer_id) references Customer (id);

Alter Table Invoice_item
Add Foreign Key (invoice_id) references invoice (id);

Alter Table Invoice_item
Add Foreign Key (product_id) references product (id);


Insert into customer
(id,customer_name,city_id,customer_address,contact_person,email,phone) values
('1','Drogerie Wien', '1' , 'Deckergasse 15A', 'Emil Steinbach', 'emildrogeriewien.com', '094234234'),
('2', 'Cosmetics Store' '4', 'Watling Street 347', 'Jeremy Corbyn', 'jeremy"c-store.org', '093923923'),
('3', 'Kosmetikstudio', '3' 'Rothenbaumchaussee 53', 'Willy Brandt', 'willy"kosmetikstudio.com', '0941562222'),
('4', 'Neue Kosmetik', '1', 'Karlsplatz 2', Null, 'infoneuekosmetik.com', '094109253'),
('5','Bio Kosmetilk','2' 'MotstraBe 23', 'Clara Zetkin', 'clara"biokosmetik.org', '093825825'),
('6','K-Wien','1','Karntner StraBe204', 'Maria Rauch-Kallat','maria"kwien.org', '093427002'),
('7','Natural Cosmetics','4', 'Clerkenwellroad 14B', 'Glenda Jackson', 'glena.j"natural-cosmetics.com', '093555123'),
('8', 'Kosmetik Plus', '2' , 'Unter den Linden 1', 'Angela Merkel', 'angela"k-plus.com', '094727727'),
('9','New Line Cosmetics','4','Devonshire Street 92', 'Oliver Crornwell', 'oliver"nlc.org', '093202404');
