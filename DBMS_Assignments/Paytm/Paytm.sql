--Paytm

create table Customer(
   CustomerId varchar(45) primary key,
   CustomerName varchar(45) not null,
   PhoneNumber integer not null);
   
create table Accounts(
   AccountId varchar(45) primary key,
   AccountName varchar(45) not null,
   AccountType integer not null,
   Foriegn key Customerid References Customer(CustomerId));


create table Branches(
   BranchId varchar(45) primary key,
   IFSC varchar(45) not null,
   BankName varchar(45) not null,
   Location varchar(45) not null,
   Foriegn key AccountId References Accounts(AccountId),
   Foriegn key Customerid References Customer(CustomerId));
