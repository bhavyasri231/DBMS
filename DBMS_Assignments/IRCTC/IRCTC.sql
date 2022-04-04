--IRCTC 

create table Train(
   Trainid varchar(45) primary key,
   TrainName varchar(45) not null,
   StartingStation varchar(45) not null,
   DestinationStation varchar(45) not null);
   

create table Ticket(
   TicketId varchar(45) primary key,
   Status varchar(45) not null,
   BoardingStation varchar(45) not null,
   DestinationStation varchar(45) not null,
   Foriegn key Customerid References Customer(CustomerId)
   Foriegn key Trainid References Train(TrainId)); 
   
   
create table Customer(
   CustomerId varchar(45) primary key,
   CustomerName varchar(45) not null,
   TicketStatus varchar(45) not null);
   

create table ReservedTicket(
   ReservedId varchar(45) primary key,
   SeatNumbers varchar(45) not null,
   foriegn key TicketId references Ticket(TicketId),
   Foriegn key Customerid References Customer(CustomerId)
   Foriegn key Trainid References Train(TrainId)); 
   
create table NotReservedTicket(
   NotReservedId varchar(45) primary key,
   foriegn key CustomerId References Customer(CustomerId));
   

