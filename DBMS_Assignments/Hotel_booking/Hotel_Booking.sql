--Hotel booking

create table Customer(
   CustomerId varchar(45) primary key,
   CustomerName varchar(45) not null,
   PhoneNumber varchar(45) not null,
   Location varchar(45) not null,
   CustomerType varchar(45) not null);

create table Hotel(
   HotelId varchar(45) primary key,
   HotelName varchar(45) not null,
   Menu varchar(45) not null,
   Location varchar(45) not null,
   Foriegn key Customerid References Customer(CustomerId));
