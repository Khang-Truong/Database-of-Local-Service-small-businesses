Create database Group2_CSIS2300;
-- This files run in MySQL
-- In Ms SQL server, it doesn't need ENGINE=InnoDB 
-- ON DELETE SET NULL need to change to ON DELETE NO ACTION
-- cannot add comma after the last sentence
use Group2_CSIS2300;

-- Employee (Emp_ID, Name, DoB, Supervisor_Emp_ID) 
CREATE TABLE 	Employee(
	Emp_ID char(15),
    Name_Emp varchar(30) NOT NULL,
    DoB_Emp date,
    Supervisor_Emp_ID char(15),
    primary key (Emp_ID),
    foreign key (Supervisor_Emp_ID) references Employee(Emp_ID) ON DELETE SET NULL
)ENGINE=InnoDB;
-- Business (Bu_ID, Name, Apt#, Str#, City, State, Country, Zip)
CREATE TABLE Business(
	Bu_ID char(15),
    Name_Bu varchar (100) NOT NULL,
    Apt_Bu int,
    Str_Bu varchar (20),
    City_Bu char(15),
    State_Bu char(20),
    Country_Bu char(15),
    Zip_Bu char(6),
    primary key (Bu_ID)
)ENGINE=InnoDB;
-- Services (Ser_ID, Name, Desc, Fee, Unit)
CREATE TABLE Services(
    Ser_ID char(15),
	Name_Ser varchar(30) NOT NULL,
    Desc_Ser varchar (100),
    Fee_Ser numeric(5,2) NOT NULL check (Fee_Ser >0),
    Unit_Ser varchar(100) NOT NULL,
    primary key (Ser_ID)
)ENGINE=InnoDB;
-- Customers (Cus_ID, Name, Phone, DoB)
CREATE TABLE Customers(
    Cus_ID char(15),
    Name_Cus varchar(30) NOT NULL,
    Phone_Cus char(15) UNIQUE,
    DoB_Cus date,
    primary key (Cus_ID)
)ENGINE=InnoDB;
-- Customers_Address ((Cus_ID, Sequence), Apt#, Str#, City, State, Country, Zip)
CREATE TABLE Customers_Address(
    Cus_ID char(15),
    Sequence int,
    Apt_Cus int,
    Str_Cus varchar (20),
    City_Cus char(15),
    State_Cus char(20),
    Country_Cus char(15),
    Zip_Cus char(6),
    primary key (Cus_ID, Sequence),
    foreign key (Cus_ID) references Customers(Cus_ID) ON DELETE CASCADE
)ENGINE=InnoDB;
-- Contracts (Cont_ID, Date, Cost, Location, Emp_ID, Bu_ID, (Cus_ID, Sequence))
CREATE TABLE Contracts(
    Cont_ID char(15),
	Date_Con Date,
    Cost_Con numeric(5,2) NOT NULL check (Cost_Con >0),
    Location_Con varchar(30),
    Emp_ID char(15),
    Bu_ID char(15),
    Cus_ID char(15),
    Sequence int,
    primary key (Cont_ID),
    foreign key (Emp_ID) references Employee(Emp_ID),
    foreign key (Bu_ID) references Business(Bu_ID),
    foreign key (Cus_ID, Sequence) references Customers_Address(Cus_ID, Sequence)
)ENGINE=InnoDB;
-- Customers_Reviews ((Cus_ID, Date&time), Image, Title, Comment, Score, Bu_ID)
CREATE TABLE Customers_Reviews(
    Cus_ID char(15),
    Date_Time varchar(20),
    Title varchar (20) NOT NULL,
    Comments varchar(100) NOT NULL,
    Image varchar (1000),
    Score int check (Score >=1 AND Score <=5),
    Bu_ID char(15),
    primary key (Cus_ID, Date_Time),
    foreign key (Cus_ID) references Customers(Cus_ID),
    foreign key (Bu_ID) references Business(Bu_ID) ON DELETE CASCADE
)ENGINE=InnoDB;
-- Employee_Work for_Business (Emp_ID, Bu_ID, DoH) 
CREATE TABLE Employee_Workfor_Business(
    Emp_ID char(15),
    Bu_ID char(15),
    DoH date,
    primary key (Emp_ID, Bu_ID),
    foreign key (Emp_ID) references Employee(Emp_ID) ON DELETE CASCADE,
    foreign key (Bu_ID) references Business(Bu_ID) ON DELETE CASCADE
)ENGINE=InnoDB;
-- Business_Provides_Services (Bu_ID, Ser_ID, Area)
CREATE TABLE Business_Provides_Services(
    Bu_ID char(15),
    Ser_ID char(15),
    Area varchar(20),
    primary key (Bu_ID, Ser_ID),
    foreign key (Bu_ID) references Business(Bu_ID) ON DELETE CASCADE,
    foreign key (Ser_ID) references Services(Ser_ID) ON DELETE CASCADE
)ENGINE=InnoDB;
-- Business_Serves_Customers (Bu_ID, Cus_ID)
CREATE TABLE Business_Serves_Customers(
    Bu_ID char(15),
    Cus_ID char(15),
    primary key (Bu_ID, Cus_ID),
    foreign key (Bu_ID) references Business(Bu_ID) ON DELETE CASCADE,
    foreign key (Cus_ID) references Customers(Cus_ID) ON DELETE CASCADE
)ENGINE=InnoDB;
-- Services_Connect_Contracts (Ser_ID, Cont_ID)
CREATE TABLE Services_Connect_Contracts(
    Ser_ID char(15),
    Cont_ID char(15),
    primary key (Ser_ID, Cont_ID),
    foreign key (Ser_ID) references Services(Ser_ID) ON DELETE CASCADE,
    foreign key (Cont_ID) references Contracts(Cont_ID) ON DELETE CASCADE
)ENGINE=InnoDB;
-- Employee_Phone (Emp_ID, Phone)
CREATE TABLE Employee_Phone(
    Emp_ID char(15),
    Phone_Emp char(15),
    primary key (Emp_ID, Phone_Emp),
    foreign key (Emp_ID) references Employee(Emp_ID) ON DELETE CASCADE
)ENGINE=InnoDB;
-- Business_Phone (Bu_ID, Phone)
CREATE TABLE Business_Phone(
    Bu_ID char(15),
    Phone_Bu char(15),
    primary key (Bu_ID, Phone_Bu),
    foreign key (Bu_ID) references Business(Bu_ID) ON DELETE CASCADE
)ENGINE=InnoDB;


