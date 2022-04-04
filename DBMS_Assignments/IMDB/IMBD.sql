--IMBD

create table Actors(
   ActorId varchar(45) primary key,
   ActorName varchar(45) not null,
   FilmsActed varchar(45) not null,
   Languages varchar(45) not null);


create table Movies(
   MovieId varchar(45) primary key,
   MovieName varchar(45) not null,
   Category varchar(45) not null,
   Rating decimal not null,
   Foriegn key Actorid References Actors(ActorId));
   
create table TvSeries(
   TvSeriesId varchar(45) primary key,
   TvSeriesName varchar(45) not null,
   Channel varchar(45) not null,
   Time timestamp not null,
   Foriegn key Actorid References Actors(ActorId));
