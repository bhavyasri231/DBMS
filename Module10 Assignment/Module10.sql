--1

Create table Student(
  StdNo integer primary key,
  StdName varchar(45) not null,
  StdAddress varchar(45) not null,
  StdCity varchar(45) not null,
  StdState varchar(45) not null,
  StdZip varchar(45) not null,
  StdEmail varchar(45) not null);
  
Create table Lender(
  LenderNo integer primary key,
  LenderName varchar(45) not null);


Create table Loan(
  LoanNo integer primary key,
  ProcDate timestamp not null,
  DisbMethod varchar(45) not null,
  DisbBank varchar(45) not null,
  DateAuth varchar(45) not null,
  NoteValue varchar(45) not null,
  Subsidized varchar(45) not null,
  Rate integer not null);
  
Create table DisburseLine(
  DataSent varchar(45) primary key,
  Amount integer not null,
  OrigFee varchar(45) not null,
  GuarFee varchar(45) not null);
  
Create table Institution(
  InstID varchar(45) primary key,
  InstName varchar(45) not null,
  InstMascot varchar(45) not null);
  
  
--2

Create table Student(
  StdNo integer primary key,
  StdName varchar(45) not null,
  StdAddress varchar(45) not null,
  StdCity varchar(45) not null,
  StdState varchar(45) not null,
  StdZip varchar(45) not null,
  StdEmail varchar(45) not null);
  
Create table Lender(
  LenderNo integer primary key,
  LenderName varchar(45) not null);


Create table Loan(
  LoanNo integer primary key,
  ProcDate timestamp not null,
  DisbMethod varchar(45) not null,
  DisbBank varchar(45) not null,
  DateAuth varchar(45) not null,
  NoteValue varchar(45) not null,
  Subsidized varchar(45) not null,
  Rate integer not null
  Foreign key (StdId) references Student(StdId),
  Foreign key (InstID) references Institution(InstID)
  Foreign key (LenderNo) references Lender(LenderNo));
  
Create table DisburseLine(
  DataSent varchar(45) primary key,
  Amount integer not null,
  OrigFee varchar(45) not null,
  GuarFee varchar(45) not null
  Foreign key (Loan) references Loan(LoanNo));
  
Create table Institution(
  InstID varchar(45) primary key,
  InstName varchar(45) not null,
  InstMascot varchar(45) not null);
  
  
--3
Create table Student(
  StdNo integer primary key,
  StdName varchar(45) not null,
  StdAddress varchar(45) not null,
  StdCity varchar(45) not null,
  StdState varchar(45) not null,
  StdZip varchar(45) not null,
  StdEmail varchar(45) not null);
  
Create table Lender(
  LenderNo integer primary key,
  LenderName varchar(45) not null,
  Foreign key (InstID) references Institution(InstID));

  
Create table DisburseLine(
  DataSent varchar(45) primary key,
  Amount integer not null,
  OrigFee varchar(45) not null,
  GuarFee varchar(45) not null);
  
Create table Institution(
  InstID varchar(45) primary key,
  InstName varchar(45) not null,
  InstMascot varchar(45) not null,
  Foreign key (LenderNo) references Lender(LenderNo));
  
  
  
--4

Create table Loan(
  LoanNo integer primary key,
  ProcDate timestamp not null,
  DisbMethod varchar(45) not null,
  DisbBank varchar(45) not null,
  DateAuth varchar(45) not null,
  NoteValue varchar(45) not null,
  Subsidized varchar(45) not null,
  Rate integer not null
  Foreign key (StdId) references Student(StdId),
  Foreign key (InstID) references Institution(InstID)
  Foreign key (LenderNo) references Lender(LenderNo));
  
Create table DisburseLine(
  DataSent varchar(45) primary key,
  Amount integer not null,
  OrigFee varchar(45) not null,
  GuarFee varchar(45) not null
  Foreign key (Loan) references Loan(LoanNo));
  
  
  
--5

Create table Account(
  AcctId varchar(45) primary key,
  AcctName varchar(45) not null,
  Balance integer not null,
  foreign key references Account(AcctId));


--6

Create table Owner(
  OwnId varchar(45) primary key,
  OwnName varchar(45) not null,
  OwnPhone integer not null);
  
Create table Share(
  shareId varchar(45) primary key,
  StartWeek varchar(45) not null,
  EndWeek varchar(45) not null,
  foreign key OwdId references Owner(OwnId),
  foreign key PropId references Property(PropId));
  
Create table Property(
  PropId varchar(45) primary key,
  BldgName varchar(45) not null,
  UnitNo integer not null,
  Bdrms varchar(45) not null);



  
  

  
  
  

