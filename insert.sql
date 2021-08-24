-- this file run on MySQL
-- In Ms SQL, the double quotation need to change to single quotation
-- business ' s name can not use apostrophe in the string

use group2_csis2300;
-- Emp_ID char(15),Name_Emp varchar(30) NOT NULL,DoB_Emp date,Supervisor_Emp_ID char(15)
insert into Employee values ('B001', "Daniel Williams", '1873-03-14','B001');
insert into Employee values ('A001', "Brian Smith", '2000-10-22','B001');
insert into Employee values ('A002', "Mary Johnson", '1987-11-02','A001');
INSERT INTO Employee VALUES ('10001', "Jane Doe", '1990-08-01', '10001');
INSERT INTO Employee VALUES ('10002', "Kos Volkov", '1992-05-03', '10001');
INSERT INTO Employee VALUES ('10003', "Anna Volkova", '1995-12-21', '10001');
INSERT INTO Employee VALUES ('10004', "Richie Evander", '1996-07-12', '10001');
INSERT INTO Employee VALUES ('10005', "Patel Quinn", '1986-05-01', '10002');
INSERT INTO Employee VALUES ('10006', "Lopez Mason", '1970-04-13', '10002');
INSERT INTO Employee VALUES ('10007', "Reily Smith", '1967-03-18', '10003');
INSERT INTO Employee VALUES ('10008', "Kris Fisher", '1996-02-20', '10003');
select * from Employee;
-- Bu_ID char(15),Name_Bu varchar (100) NOT NULL,Apt_Bu int,Str_Bu varchar (20),
-- City_Bu char(15),State_Bu char(20),Country_Bu char(15),Zip_Bu char(6)
insert into Business values ('BU001', "Name of business 1",1555, "Victoria Drive", "Vancouver","BC","Canada","V2PY2Y");
insert into Business values ('BU002', "Business 2",2555, "Victoria", "Vancouver","BC","Canada","V3PY2Y");
insert into Business values ('BU003', "Business's name 3",3555, "Shebrooke", "Vancouver","BC","Canada","V5PY2Y");
INSERT INTO Business VALUES (20001, "AgroSystems",2110,"Commercial Drive", 'Washington',"Washington DC","USA",'97827');
INSERT INTO Business VALUES (20002, "Coffee place",1460,"West Broadway", 'Vancouver',"BC","Canada",'V3M0L5');
INSERT INTO Business VALUES (20003, "Photography by Kos",1100,"Main Street", 'Toronto',"Ontario","Canada",'V3F2K1');
INSERT INTO Business VALUES (20004, "Plumbing ltd.",0650,"West 1st Avenue", 'Calgary','Alberta', 'Canada','H1J1C3');
INSERT INTO Business VALUES (20005, "Local Aquarium",3020,"Number 5 Road", 'Atlanta','Georgia', 'USA','232131');
select * from Business;
-- Ser_ID char(15),Name_Ser varchar(30) NOT NULL,Desc_Ser varchar (100),
-- Fee_Ser numeric(5,2) NOT NULL check (Fee_Ser >0),Unit_Ser varchar(100) NOT NULL
insert into Services values ('SE001', "Name of service 1", "this is service 1",123.45, "1hour");
insert into Services values ('SE002', "Name of service 2", "this is service 2",12.35, "1hour");
insert into Services values ('SE003', "Name of service 3", "this is service 3",123.10, "1 hour");
INSERT INTO Services VALUES ('30000001', 'Plumbing', "Plumbing done right at your home or office", 199.00 , "1 hour" );
INSERT INTO Services VALUES ('30000002', "Portrait Photography", "Indoor or outdoor portrait photography session", 299.00 , "1 hour" );
INSERT INTO Services VALUES ('30000003', "Aquarium installation", "We will bring a part of an ocean to your home", 199.99 , "40 gallon marine fish tank" );
INSERT INTO Services VALUES ('30000004', 'Cleaning', "Everything shine after we done", 99.99, "er 10 gallons aquarium" );
INSERT INTO Services VALUES ('30000005', "Coffee delivery", "Get yourself some boost and donuts", 19.00 , "Minimun order 1l coffee + dozen of donuts");
INSERT INTO Services VALUES ('30000006', "Soil sale", "Keep your plants alive", 39.99 , "20lbs of soil with delivery" );
INSERT INTO Services VALUES ('30000007', "Pest removal", "No more bed bugs", 199.99 , "Price per room");
INSERT INTO Services VALUES ('30000008', "Wedding photography", "Capture your most lovely moments", 999.99 , "Full day package" );
INSERT INTO Services VALUES ('30000009', 'Catering', "Feed your party well", 99.99 , "Per one guest" );
INSERT INTO Services VALUES ('30000010', "Leak fix", "We will fix your pipes", 299.99 , "Per one fix" );
select * from Services;
-- Cus_ID char(15),Name_Cus varchar(30) NOT NULL,Phone_Cus char(15) UNIQUE,DoB_Cus date
insert into Customers values ('CU001', "Mark Williams",'6041234567','2000-10-22');
insert into Customers values ('CU002', "Andy Johson",'6041234568','2000-10-23');
insert into Customers values ('CU003', "Jack Jones",'6041234569','2000-10-24');
INSERT INTO Customers VALUES ('400001', "Clark Baker", '12368658463', '1992-02-01');
INSERT INTO Customers VALUES ('400002', "Davis Evans", '12368629532', '1995-07-06');
INSERT INTO Customers VALUES ('400003', "Frank Ghosh", '12368964413', '1992-01-04');
INSERT INTO Customers VALUES ('400004', "Hills Irwin", '12368626923', '1991-08-08');
INSERT INTO Customers VALUES ('400005', "Jones Klein", '12368853863', '1990-02-01');
INSERT INTO Customers VALUES ('400006', "Lopez Mason", '12368236334', '1989-09-04');
INSERT INTO Customers VALUES ('400007', "Nalty Ochoa", '16046953483', '1987-04-07');
INSERT INTO Customers VALUES ('400008', "Patel Quinn", '12360642864', '1990-03-12');
INSERT INTO Customers VALUES ('400009', "Reily Smith", '12360862075', '1996-12-08');
INSERT INTO Customers VALUES ('400010', "Trott Usman", '17786123055', '1985-11-10');
select * from Customers;
-- Cus_ID char(15),Sequence int,Apt_Cus int,Str_Cus varchar (20),City_Cus char(15),
-- State_Cus char(20),Country_Cus char(15),Zip_Cus char(6)
insert into Customers_Address values ('CU001', 0001, 5555, "Victoria Drive", "Vancouver","BC","Canada","V2PY2Y");
insert into Customers_Address values ('CU002', 0002, 5554, "Main", "Vancouver","BC","Canada","N3PY2Y");
insert into Customers_Address values ('CU003', 0003,5553, "Victoria Drive", "Washington","Washington DC","USA","C6VY2Y");
INSERT INTO Customers_Address VALUES ('400001', 500001,2001, "Regiment Square", 'Vancouver',"BC","Canada",'V6B1X6');
INSERT INTO Customers_Address VALUES ('400002', 500002,1903, "Nicola Street", 'Calgary','Alberta', 'Canada','WX16LT');
INSERT INTO Customers_Address VALUES ('400003', 500003,1508, "Oak Street", 'Toronto',"Ontario","Canada",'EC25NT');
INSERT INTO Customers_Address VALUES ('400004', 500004,1623, "Quayside Drive", 'Langley',"BC","Canada",'T2F8M4');
INSERT INTO Customers_Address VALUES ('400005', 500005,1254, "Dennman Street", 'Washington',"Washington DC","USA",'583340');
INSERT INTO Customers_Address VALUES ('400006', 500006,1454, "Tsawassen Blvd.", 'Toronto',"Ontario","Canada",'E3A3G5');
INSERT INTO Customers_Address VALUES ('400007', 500007,1811, "Berkeley Gardens", 'Atlanta','Georgia', 'USA','T1Y5J4');
INSERT INTO Customers_Address VALUES ('400008', 500008,9644, "City Center Plaza", 'Vancouver',"BC","Canada",'V6F1H3');
INSERT INTO Customers_Address VALUES ('400009', 500009,6510, "Main st", 'Langley',"BC","Canada",'V3M0L5');
INSERT INTO Customers_Address VALUES ('400010', 500010, 3200, "South House", 'Washington',"Washington DC","USA",'739532');
select * from Customers_Address;
-- Cont_ID char(15),Date_Con Date,Cost_Con numeric(5,2) NOT NULL check (Cost_Con >0),
-- Location_Con varchar(30),Emp_ID char(15),Bu_ID char(15),Cus_ID char(15),Sequence int
insert into Contracts values ('CO001', '2000-10-22', 123.10, 'Paris','A001','BU002','CU001',0001);
insert into Contracts values ('CO002', '2003-12-23', 123.10, 'Paris','A001','BU002','CU002',0002);
insert into Contracts values ('CO003', '1999-03-24', 123.10, 'LonDon','A002','BU003','CU003',0003);
INSERT INTO Contracts VALUES ('6000000001', '2021-02-21', 199.99, 'Burquitlam', '10008','20004', '400001',500001);
INSERT INTO Contracts VALUES ('6000000002', '2021-03-01', 299.99, 'Guildford', '10003','20003', '400002',500002);
INSERT INTO Contracts VALUES ('6000000003', '2021-01-28', 99.99, 'Abby', '10005', '20005','400004',500004);
INSERT INTO Contracts VALUES ('6000000004', '2021-02-17', 199.99, 'Newton', '10001','20005', '400003',500003);
INSERT INTO Contracts VALUES ('6000000005', '2021-03-02', 999.99, 'Downtown', '10003', '20003','400006',500006);
INSERT INTO Contracts VALUES ('6000000006', '2021-01-04', 99.99, 'Commercial', '10006','20002', '400005',500005);
INSERT INTO Contracts VALUES ('6000000007', '2021-02-12', 199.99, 'Kitsilano', '10004', '20001','400008',500008);
INSERT INTO Contracts VALUES ('6000000008', '2021-03-01', 299.99, 'NewWest', '10008','20004', '400007',500007);
INSERT INTO Contracts VALUES ('6000000009', '2021-01-23', 39.99, "King George", '10002','20001', '400010',500010);
INSERT INTO Contracts VALUES ('6000000010', '2021-03-01', 57.00, 'Gateway', '10006','20002', '400009',500009);
insert into Contracts values ('CO004', '2003-12-23', 125.10, 'Paris','A001','BU002','CU002',0002);
select * from Contracts;
-- Cus_ID char(15),Date_Time varchar(20),Title varchar (20) NOT NULL,Comments varchar(100) NOT NULL,
-- Image varchar (1000),Score int check (Score >=1 AND Score <=5),Bu_ID char(15)
insert into Customers_Reviews values ('CU001', '2020-10-24',"All good","eveything is good","picsum.photos/id/1/200/300",5,'BU001');
insert into Customers_Reviews values ('CU002', '2020-10-25',"Ok","Great","picsum.photos/id/1/200/300",3,'BU001');
insert into Customers_Reviews values ('CU001', '2020-10-26',"Good","eveything is good","picsum.photos/id/1/200/300",1,'BU002');
INSERT INTO Customers_Reviews VALUES ('400001', '2021-03-01 21:43:21',  'Awesome!', "Glad I ordered, all went very well!",'picsum.photos/id/1/200/300', 5, '20001');
INSERT INTO Customers_Reviews VALUES ('400002', '2021-02-21 20:26:53',  'Good!', "I am satisfied, good quality", 'picsum.photos/id/2/200/300',4, '20002');
INSERT INTO Customers_Reviews VALUES ('400003', '2021-02-28 18:24:12',  "Not Bad!", "Its ok could have been worse", 'picsum.photos/id/3/200/300',3, '20003');
INSERT INTO Customers_Reviews VALUES ('400004', '2021-02-14 16:15:43', 'Bad!',  "Should have not go cheap",'picsum.photos/id/4/200/300', 2, '20004');
INSERT INTO Customers_Reviews VALUES ('400005', '2021-02-18 15:54:26',  'Disgusting!',  "Will never order again!!!",'picsum.photos/id/5/200/300', 1, '20005');
select * from Customers_Reviews;
-- Emp_ID char(15),Bu_ID char(15),DoH date,
insert into Employee_Workfor_Business values ('A001', 'BU002','2010-11-04');
insert into Employee_Workfor_Business values ('A002', 'BU003','2010-12-24');
insert into Employee_Workfor_Business values ('B001', 'BU001','2010-10-14');
INSERT INTO Employee_Workfor_Business VALUES ('10002', '20001', '2020-03-21'); 
INSERT INTO Employee_Workfor_Business VALUES ('10001', '20005', '2018-07-13'); 
INSERT INTO Employee_Workfor_Business VALUES ('10003', '20003', '2016-12-17'); 
INSERT INTO Employee_Workfor_Business VALUES ('10005', '20005', '2013-05-22'); 
INSERT INTO Employee_Workfor_Business VALUES ('10007', '20003', '2011-12-02'); 
INSERT INTO Employee_Workfor_Business VALUES ('10008', '20004', '2012-04-14'); 
INSERT INTO Employee_Workfor_Business VALUES ('10004', '20001', '2013-02-11'); 
INSERT INTO Employee_Workfor_Business VALUES ('10006', '20002', '2015-12-04');
select * from Employee_Workfor_Business;
-- Bu_ID char(15),Ser_ID char(15),Area varchar(20),
insert into Business_Provides_Services values ('BU001','SE001',"Main floor");
insert into Business_Provides_Services values ('BU002','SE002',"Second floor");
insert into Business_Provides_Services values ('BU003','SE003',"Second floor");
INSERT INTO Business_provides_Services VALUES ('20001', '30000006', 'Kitsilano');
INSERT INTO Business_provides_Services VALUES ('20002', '30000005', 'Downtown');
INSERT INTO Business_provides_Services VALUES ('20002', '30000009',"Surrey Central");
INSERT INTO Business_provides_Services VALUES ('20001', '30000007','Guildford');
INSERT INTO Business_provides_Services VALUES ('20003', '30000002','Burquitlam');
INSERT INTO Business_provides_Services VALUES ('20003', '30000008','PoCo');
INSERT INTO Business_provides_Services VALUES ('20004', '30000001',"Number 5 road");
INSERT INTO Business_provides_Services VALUES ('20004', '30000010','Newton');
INSERT INTO Business_provides_Services VALUES ('20005', '30000003',"Deep Cove");
INSERT INTO Business_provides_Services VALUES ('20005', '30000004',"Sea To Sky");
select * from Business_Provides_Services;

-- Bu_ID char(15),Cus_ID char(15),
insert into Business_Serves_Customers values('BU001', 'CU001');
insert into Business_Serves_Customers values('BU001','CU002');
insert into Business_Serves_Customers values('BU002','CU003');
INSERT INTO Business_Serves_Customers VALUES('20001', '400008');
INSERT INTO Business_Serves_Customers VALUES('20001', '400010');
INSERT INTO Business_Serves_Customers VALUES('20002', '400005');
INSERT INTO Business_Serves_Customers VALUES('20002', '400009');
INSERT INTO Business_Serves_Customers VALUES('20003', '400003');
INSERT INTO Business_Serves_Customers VALUES('20003', '400006');
INSERT INTO Business_Serves_Customers VALUES('20004', '400001');
INSERT INTO Business_Serves_Customers VALUES('20004', '400007');
INSERT INTO Business_Serves_Customers VALUES('20005', '400004');
INSERT INTO Business_Serves_Customers VALUES('20005', '400003');
select * from Business_Serves_Customers;

 -- Ser_ID char(15),Cont_ID char(15),
insert into Services_Connect_Contracts values('SE002', 'CO001');
insert into Services_Connect_Contracts values('SE002', 'CO002');
insert into Services_Connect_Contracts values('SE003', 'CO003');
INSERT INTO Services_Connect_Contracts VALUES('30000001', '6000000001');
INSERT INTO Services_Connect_Contracts VALUES('30000002', '6000000002');
INSERT INTO Services_Connect_Contracts VALUES('30000004', '6000000003');
INSERT INTO Services_Connect_Contracts VALUES('30000003', '6000000004');
INSERT INTO Services_Connect_Contracts VALUES('30000008', '6000000005');
INSERT INTO Services_Connect_Contracts VALUES('30000009', '6000000006');
INSERT INTO Services_Connect_Contracts VALUES('30000007', '6000000007');
INSERT INTO Services_Connect_Contracts VALUES('30000010', '6000000008');
INSERT INTO Services_Connect_Contracts VALUES('30000006', '6000000009');
INSERT INTO Services_Connect_Contracts VALUES('30000005', '6000000010');
select * from Services_Connect_Contracts;

-- Emp_ID char(15),Phone_Emp char(15),
insert into Employee_Phone values('A001', '6041233569');
insert into Employee_Phone values('A002', '6041238569');
insert into Employee_Phone values('B001', '6041236569');
INSERT INTO Employee_phone VALUES ('10001', '12368743234');
INSERT INTO Employee_phone VALUES ('10002', '12384730234');
INSERT INTO Employee_phone VALUES ('10003', '12369542350');
INSERT INTO Employee_phone VALUES ('10004', '12369343458');
INSERT INTO Employee_phone VALUES ('10005', '17787923038');
INSERT INTO Employee_phone VALUES ('10006', '17784394723');
INSERT INTO Employee_phone VALUES ('10007', '16043285643');
INSERT INTO Employee_phone VALUES ('10008', '16043849201');
select * from Employee_Phone;

-- Bu_ID char(15),Phone_Bu char(15),
insert into Business_Phone values('BU001', '6031236569');
insert into Business_Phone values('BU002', '6051236569');
insert into Business_Phone values('BU003', '6061236569');
INSERT INTO Business_phone VALUES ('20001', '16048626862');
INSERT INTO Business_phone VALUES ('20002', '16049432348');
INSERT INTO Business_phone VALUES ('20003', '16040729437');
INSERT INTO Business_phone VALUES ('20004', '16041085754');
INSERT INTO Business_phone VALUES ('20005', '16041102965');
select * from Business_Phone;


