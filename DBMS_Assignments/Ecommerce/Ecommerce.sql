--Ecommerce

create table Item(
   ItemId varchar(45) primary key,
   ItemName varchar(45) not null,
   Price integer not null); 
   
create table Orders(
   OrderId varchar(45) primary key,
   Quantity varchar(45) not null,
   Foriegn key Itemid References Item(ItemId));
   
create table Customer(
   CustomerId varchar(45) primary key,
   CustomerName varchar(45) not null,
   PhoneNumber integer not null,
   Location varchar(45) not null,
   Foriegn key Orderid References Orders(OrderId),
   Foriegn key Itemid References Item(ItemId));
   
create table Supplier(
   SupplierId varchar(45) primary key,
   SupplierName varchar(45) not null,
   ItemName varchar(45) not null,
   Foriegn key Itemid References Item(ItemId));
   


