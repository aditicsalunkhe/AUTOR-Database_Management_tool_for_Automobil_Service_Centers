“Hey there! I’m in the main branch”
@@@@@
CREATE TABLE Service_Centre (  
    storeid integer,  
    address varchar2(20),  
    phoneno integer,  
    oos integer,  
    managerid integer,  
    minwage integer,  
    maxwage integer,  
    hourlyrate integer,  
    constraint pk_sc primary key (storeid)  
);

ALTER TABLE Service_Centre  
    add constraint chk_mxmnhr   
    check (minwage <= hourlyrate AND hourlyrate <= maxwage);

ALTER TABLE Service_Centre  
    add constraint bool_oos   
    check (oos in (1,0));

drop table Service_Centre;

CREATE TABLE Service_Centre (  
    storeid integer,  
    address varchar2(20),  
    phoneno integer,  
    oos integer,  
    managerid integer,  
    minwage integer,  
    maxwage integer,  
    hourlyrate integer,  
    constraint pk_sc primary key (storeid)  
);

ALTER TABLE Service_Centre MODIFY(ADDRESS VARCHAR2(100)) ;

ALTER TABLE Service_Centre  
    add constraint chk_mxmnhr   
    check (minwage <= hourlyrate AND hourlyrate <= maxwage);

ALTER TABLE Service_Centre  
    add constraint bool_oos   
    check (oos in (1,0));

insert into Service_Centre   
values(30001, '3921 Western Blvd, Raleigh, NC 27606', 3392601234, 1, 123456789, 30, 40, 35) ;

insert into Service_Centre   
values(30002, '4500 Preslyn Dr Suite 103, Raleigh, NC 27616', 8576890280, 1, 987654321, 25, 35, 25) ;

insert into Service_Centre   
values(30003, '9515 Chapel Hill Rd, Morrisville, NC 27560', 7798182200, 0, 987612345, 20, 25, 22) ;

CREATE TABLE Contract_Basis(   
    empid integer,   
    storeid integer,   
    empname varchar2(30),   
    address varchar2(100),   
    phoneno integer,   
    email varchar2(20),   
    salary integer,   
    emprole integer,   
    constraint pk_cb primary key (storeid, empid),   
    constraint fk_cbsc foreign key (storeid) REFERENCES Service_Centre   
)  ;

ALTER TABLE Contract_Basis  
    add constraint bool_emprole    
    check (emprole in (1,0))  ;

insert into Contract_Basis     
values(123456789, 30001, 'John Doe', '1378 University Woods, Raleigh, NC 27612', 8636368778, 'jdoe@gmail.com', 44, 1) ;

insert into Contract_Basis     
values(987654321, 30002, 'Rachel Brooks', '2201 Gorman Parkwood, Raleigh, NC 27618', 8972468552, 'rbrooks@ymail.com', 35, 1) ;

insert into Contract_Basis     
values(987612345, 30003, 'Caleb Smith', '1538 Red Bud Lane, Morrisville, NC 27560', 8547963210, 'csmith@yahoo.com', 25, 1)  ;

CREATE TABLE Hourly_Basis(  
    empid integer,  
    storeid integer,  
    empname VARCHAR2(20),  
    address VARCHAR2(100),  
    phoneno integer,  
    email VARCHAR2(20),  
    startdate DATE,  
    CONSTRAINT pk_hb PRIMARY KEY (storeid, empid),  
    CONSTRAINT fk_hbsc FOREIGN KEY (storeid) REFERENCES Service_Centre  
)  ;

insert into Hourly_Basis     
values(132457689, 30001, 'James Williams', '1400 Gorman St, Raleigh, NC 27606-2972', 4576312882, 'jwilliams@gmail.com', DATE '2021-7-2') ;

insert into Hourly_Basis     
values(314275869, 30001, 'David Johnson', '686 Stratford Court, Raleigh, NC 27606', 9892321100, 'djohnson@ymail.com', DATE '2021-8-25') ;

insert into Hourly_Basis     
values(241368579, 30001, 'Maria Garcia', '1521 Graduate Lane, Raleigh, NC 27606', 4573459090, 'mgarcia@yahoo.com', DATE '2021-8-26') ;

insert into Hourly_Basis     
values(423186759, 30002, 'Ellie Clark', '3125 Avent Ferry Road, Raleigh, NC 27605', 9892180921, 'eclark@gmail.com', DATE '2021-9-1') ;

insert into Hourly_Basis     
values(123789456, 30002, 'Robert Martinez', '1232 Tartan Circle, Raleigh, NC 27607', 7652304282, 'rmartinez@ymail.com', DATE '2021-10-11') ;

insert into Hourly_Basis     
values(789123456, 30002, 'Charles Rodriguez', '218 Patton Lane, Raleigh, NC 27603', 9092234281, 'crodriguez@yahoo.com', DATE '2021-10-11') ;

insert into Hourly_Basis     
values(125689347, 30002, 'Jose Hernandez', '4747 Dola Mine Road, Raleigh, NC 27609', 7653241714, 'jhernandez@gmail.com', DATE '2021-10-17') ;

insert into Hourly_Basis     
values(347812569, 30003, 'Charlie Brown', '1 Rockford Mountain Lane, Morrisville, NC 27560', 9091237568, 'cbrown@ymail.com', DATE '2021-10-18') ;

insert into Hourly_Basis     
values(123456780, 30003, 'Jeff Gibson', '900 Development Drive, Morrisville, NC 27560', 3390108899, 'jgibson@yahoo.com', DATE '2021-10-20') ;

insert into Hourly_Basis     
values(123456708, 30003, 'Isabelle Wilder', '6601 Koppers Road, Morrisville, NC 27560', 3394561231, 'iwilder@gmail.com', DATE '2021-10-22') ;

insert into Hourly_Basis     
values(123456078, 30003, 'Peter Titus', '2860 Slater Road, Morrisville, NC 27560', 3396723418, 'ptitus@ymail.com', DATE '2021-10-28') ;

insert into Hourly_Basis     
values(123450678, 30003, 'Mark Mendez', '140 Southport Drive, Morrisville, NC 27560', 3395792080, 'mmendez@yahoo.com', DATE '2021-10-31') ;

insert into Hourly_Basis     
values(123405678, 30003, 'Lisa Alberti', '100 Valley Glen Drive, Morrisville, NC 27560', 3391126787, 'lalberti@yahoo.com', DATE '2021-11-1') ;

drop table Hourly_Basis;

CREATE TABLE Hourly_Basis(  
    empid integer,  
    storeid integer,  
    empname VARCHAR2(20),  
    address VARCHAR2(100),  
    phoneno integer,  
    email VARCHAR2(20),  
    startdate DATE,  
    CONSTRAINT pk_hb PRIMARY KEY (storeid, empid),  
    CONSTRAINT fk_hbsc FOREIGN KEY (storeid) REFERENCES Service_Centre  
)  ;

insert into Hourly_Basis     
values(132457689, 30001, 'James Williams', '1400 Gorman St, Raleigh, NC 27606-2972', 4576312882, 'jwilliams@gmail.com', DATE '2021-7-2') ;

insert into Hourly_Basis     
values(314275869, 30001, 'David Johnson', '686 Stratford Court, Raleigh, NC 27606', 9892321100, 'djohnson@ymail.com', DATE '2021-8-25') ;

insert into Hourly_Basis     
values(241368579, 30001, 'Maria Garcia', '1521 Graduate Lane, Raleigh, NC 27606', 4573459090, 'mgarcia@yahoo.com', DATE '2021-8-26') ;

insert into Hourly_Basis     
values(423186759, 30002, 'Ellie Clark', '3125 Avent Ferry Road, Raleigh, NC 27605', 9892180921, 'eclark@gmail.com', DATE '2021-9-1') ;

insert into Hourly_Basis     
values(123789456, 30002, 'Robert Martinez', '1232 Tartan Circle, Raleigh, NC 27607', 7652304282, 'rmartinez@ymail.com', DATE '2021-10-11') ;

insert into Hourly_Basis     
values(789123456, 30002, 'Charles Rodriguez', '218 Patton Lane, Raleigh, NC 27603', 9092234281, 'crodriguez@yahoo.com', DATE '2021-10-11') ;

insert into Hourly_Basis     
values(125689347, 30002, 'Jose Hernandez', '4747 Dola Mine Road, Raleigh, NC 27609', 7653241714, 'jhernandez@gmail.com', DATE '2021-10-17') ;

insert into Hourly_Basis     
values(347812569, 30003, 'Charlie Brown', '1 Rockford Mountain Lane, Morrisville, NC 27560', 9091237568, 'cbrown@ymail.com', DATE '2021-10-18') ;

insert into Hourly_Basis     
values(123456780, 30003, 'Jeff Gibson', '900 Development Drive, Morrisville, NC 27560', 3390108899, 'jgibson@yahoo.com', DATE '2021-10-20') ;

insert into Hourly_Basis     
values(123456708, 30003, 'Isabelle Wilder', '6601 Koppers Road, Morrisville, NC 27560', 3394561231, 'iwilder@gmail.com', DATE '2021-10-22') ;

insert into Hourly_Basis     
values(123456078, 30003, 'Peter Titus', '2860 Slater Road, Morrisville, NC 27560', 3396723418, 'ptitus@ymail.com', DATE '2021-10-28') ;

insert into Hourly_Basis     
values(123450678, 30003, 'Mark Mendez', '140 Southport Drive, Morrisville, NC 27560', 3395792080, 'mmendez@yahoo.com', DATE '2021-10-31') ;

insert into Hourly_Basis     
values(123405678, 30003, 'Lisa Alberti', '100 Valley Glen Drive, Morrisville, NC 27560', 3391126787, 'lalberti@yahoo.com', DATE '2021-11-1') ;

CREATE TABLE Auth(  
    username varchar(100),  
	userpassword varchar(10),  
    storeid integer,  
    emprole varchar(10),   
    constraint pk_auth primary key (username, userpassword)  
);

insert into Auth      
values('12345678930001', 'abcd1234', 30001, 'Manager') ;

insert into Auth  
values('98765432130002', 'abcd1234', 30002, 'Manager') ;

insert into Auth  
values('98761234530003', 'abcd1234', 30003, 'Manager') ;

insert into Auth  
values('13245768930001', 'abcd1234', 30001, 'Mechanic') ;

insert into Auth  
values('31427586930001', 'abcd1234', 30001, 'Mechanic') ;

insert into Auth  
values('24136857930001', 'abcd1234', 30001, 'Mechanic') ;

insert into Auth  
values('42318675930002', 'abcd1234', 30002, 'Mechanic') ;

insert into Auth  
values('12378945630002', 'abcd1234', 30002, 'Mechanic') ;

insert into Auth  
values('78912345630002', 'abcd1234', 30002, 'Mechanic') ;

insert into Auth  
values('12568934730002', 'abcd1234', 30002, 'Mechanic') ;

insert into Auth  
values('34781256930003', 'abcd1234', 30003, 'Mechanic') ;

insert into Auth  
values('12345678030003', 'abcd1234', 30003, 'Mechanic') ;

insert into Auth  
values('12345670830003', 'abcd1234', 30003, 'Mechanic') ;

insert into Auth  
values('12345607830003', 'abcd1234', 30003, 'Mechanic') ;

insert into Auth  
values('12345067830003', 'abcd1234', 30003, 'Mechanic') ;

insert into Auth  
values('12340567830003', 'abcd1234', 30003, 'Mechanic') ;

insert into Auth  
values('1000130001', 'abcd1234', 30001, 'Customer') ;

insert into Auth  
values('1000230001', 'abcd1234', 30001, 'Customer') ;

insert into Auth  
values('1005330002', 'abcd1234', 30002, 'Customer') ;

insert into Auth  
values('1001030002', 'abcd1234', 30002, 'Customer') ;

insert into Auth  
values('1000130002', 'abcd1234', 30002, 'Customer') ;

insert into Auth  
values('1003530002', 'abcd1234', 30002, 'Customer') ;

insert into Auth  
values('1000230003', 'abcd1234', 30003, 'Customer') ;

insert into Auth  
values('1000330003', 'abcd1234', 30003, 'Customer') ;

insert into Auth  
values('1001130003', 'abcd1234', 30003, 'Customer') ;

insert into Auth  
values('1006230003', 'abcd1234', 30003, 'Customer') ;

insert into Auth  
values('1050130003', 'abcd1234', 30003, 'Customer') ;

insert into Auth  
values('1001030003', 'abcd1234', 30003, 'Customer') ;

CREATE TABLE Repair_Service(   
    serviceid number,   
    servicename varchar2(30),   
    svcategory varchar2(30),   
    svduration number,   
    CONSTRAINT pk PRIMARY KEY (serviceid)   
) ;

INSERT INTO Repair_Service (serviceid, servicename, svcategory, svduration)   
VALUES (101, 'Belt Replacement', 'Engine Services', 1) ;

INSERT INTO Repair_Service (serviceid, servicename, svcategory, svduration)   
VALUES (102, 'Engine Repair', 'Engine Services', 5) ;

INSERT INTO Repair_Service (serviceid, servicename, svcategory, svduration)   
VALUES (103, 'Exhaust Repair', 'Exhaust Services', 4) ;

INSERT INTO Repair_Service (serviceid, servicename, svcategory, svduration)   
VALUES (104, 'Muffler Repair', 'Exhaust Services', 2) ;

INSERT INTO Repair_Service (serviceid, servicename, svcategory, svduration)   
VALUES (105, 'Alternator Repair', 'Electrical Services', 4) ;

INSERT INTO Repair_Service (serviceid, servicename, svcategory, svduration)   
VALUES (106, 'Power Lock Repair', 'Electrical Services', 5) ;

INSERT INTO Repair_Service (serviceid, servicename, svcategory, svduration)   
VALUES (107, 'Axle Repair', 'Transmission Services', 7) ;

INSERT INTO Repair_Service (serviceid, servicename, svcategory, svduration)   
VALUES (108, 'Brake Repair', 'Transmission Services', 3) ;

INSERT INTO Repair_Service (serviceid, servicename, svcategory, svduration)   
VALUES (109, 'Tire Balancing', 'Tire Services', 2) ;

INSERT INTO Repair_Service (serviceid, servicename, svcategory, svduration)   
VALUES (110, 'Wheel Alignment', 'Tire Services', 1) ;

INSERT INTO Repair_Service (serviceid, servicename, svcategory, svduration)   
VALUES (111, 'Compressor Repair', 'Heating and A/C Services', 3) ;

INSERT INTO Repair_Service (serviceid, servicename, svcategory, svduration)   
VALUES (112, 'Evaporator Repair', 'Heating and A/C Services', 4) ;

CREATE TABLE Maintenance_Service(  
    serviceid integer,  
    servicename varchar2(100),  
    schedule varchar2(1),  
    servicetype integer,    -- 0 - Maintenance Service only, 1 - Maintenance + Repair Service  
    scheduletime integer,  
    CONSTRAINT pk_ms PRIMARY KEY (serviceid, servicename)  
) ;

ALTER TABLE Maintenance_Service    
    add constraint bool_svc     
    check (SERVICETYPE in (1,0)) ;

INSERT INTO Maintenance_Service (serviceid, servicename, schedule, servicetype, scheduletime)   
VALUES (113, 'Oil Changes', 'A', 0, 3) ;

INSERT INTO Maintenance_Service (serviceid, servicename, schedule, servicetype, scheduletime)   
VALUES (113, 'Filter Replacements', 'A', 0, 3) ;

INSERT INTO Maintenance_Service (serviceid, servicename, schedule, servicetype, scheduletime)   
VALUES (114, 'Oil Changes', 'B', 0, 6) ;

INSERT INTO Maintenance_Service (serviceid, servicename, schedule, servicetype, scheduletime)   
VALUES (114, 'Brake Repair', 'B', 1, 6) ;

INSERT INTO Maintenance_Service (serviceid, servicename, schedule, servicetype, scheduletime)   
VALUES (114, 'Check Engine Light Diagnostics', 'B', 0, 6) ;

INSERT INTO Maintenance_Service (serviceid, servicename, schedule, servicetype, scheduletime)   
VALUES (115, 'Oil Changes', 'C', 0, 9) ;

INSERT INTO Maintenance_Service (serviceid, servicename, schedule, servicetype, scheduletime)   
VALUES (115, 'Filter Replacements', 'C', 0, 9) ;

INSERT INTO Maintenance_Service (serviceid, servicename, schedule, servicetype, scheduletime)   
VALUES (115, 'Brake Repair', 'C', 1, 9) ;

INSERT INTO Maintenance_Service (serviceid, servicename, schedule, servicetype, scheduletime)   
VALUES (115, 'Check Engine Light Diagonstics', 'C', 0, 9) ;

INSERT INTO Maintenance_Service (serviceid, servicename, schedule, servicetype, scheduletime)   
VALUES (115, 'Suspension Repair', 'C', 0, 9) ;

INSERT INTO Maintenance_Service (serviceid, servicename, schedule, servicetype, scheduletime)   
VALUES (115, 'Evaporator Repair', 'C', 1, 9) ;

CREATE TABLE Prices(  
    storeid INTEGER,  
	serviceid INTEGER,  
	modelname VARCHAR2(10),  
    price INTEGER,  
    CONSTRAINT pk_prices PRIMARY KEY (serviceid, storeid, modelname)  
) ;

INSERT INTO Prices(storeid, serviceid, modelname, price)  
VALUES (30001, 101, 'Honda', 140) ;

INSERT INTO Prices(storeid, serviceid, modelname, price)  
VALUES (30001, 101, 'Nissan', 175) ;

INSERT INTO Prices(storeid, serviceid, modelname, price)  
VALUES (30001, 101, 'Toyota', 160) ;

INSERT INTO Prices(storeid, serviceid, modelname, price)  
VALUES (30001, 102, 'Honda', 400) ;

INSERT INTO Prices(storeid, serviceid, modelname, price)  
VALUES (30001, 102, 'Nissan', 500) ;

INSERT INTO Prices(storeid, serviceid, modelname, price)  
VALUES (30001, 102, 'Toyota', 450) ;

INSERT INTO Prices(storeid, serviceid, modelname, price)  
VALUES (30001, 103, 'Honda', 590) ;

INSERT INTO Prices(storeid, serviceid, modelname, price)  
VALUES (30001, 103, 'Nissan', 700) ;

INSERT INTO Prices(storeid, serviceid, modelname, price)  
VALUES (30001, 103, 'Toyota', 680) ;

INSERT INTO Prices(storeid, serviceid, modelname, price)  
VALUES (30001, 104, 'Honda', 140) ;

INSERT INTO Prices(storeid, serviceid, modelname, price)  
VALUES (30001, 104, 'Nissan', 175) ;

INSERT INTO Prices(storeid, serviceid, modelname, price)  
VALUES (30001, 104, 'Toyota', 160) ;

INSERT INTO Prices(storeid, serviceid, modelname, price)  
VALUES (30001, 105, 'Honda', 400) ;

INSERT INTO Prices(storeid, serviceid, modelname, price)  
VALUES (30001, 105, 'Nissan', 500) ;

INSERT INTO Prices(storeid, serviceid, modelname, price)  
VALUES (30001, 105, 'Toyota', 450) ;

INSERT INTO Prices(storeid, serviceid, modelname, price)  
VALUES (30001, 106, 'Honda', 400) ;

INSERT INTO Prices(storeid, serviceid, modelname, price)  
VALUES (30001, 106, 'Nissan', 500) ;

INSERT INTO Prices(storeid, serviceid, modelname, price)  
VALUES (30001, 106, 'Toyota', 450) ;

INSERT INTO Prices(storeid, serviceid, modelname, price)  
VALUES (30001, 107, 'Honda', 1000) ;

INSERT INTO Prices(storeid, serviceid, modelname, price)  
VALUES (30001, 107, 'Nissan', 1200) ;

INSERT INTO Prices(storeid, serviceid, modelname, price)  
VALUES (30001, 107, 'Toyota', 1100) ;

INSERT INTO Prices(storeid, serviceid, modelname, price)  
VALUES (30001, 108, 'Honda', 400) ;

INSERT INTO Prices(storeid, serviceid, modelname, price)  
VALUES (30001, 108, 'Nissan', 500) ;

INSERT INTO Prices(storeid, serviceid, modelname, price)  
VALUES (30001, 108, 'Toyota', 450) ;

INSERT INTO Prices(storeid, serviceid, modelname, price)  
VALUES (30001, 109, 'Honda', 50) ;

INSERT INTO Prices(storeid, serviceid, modelname, price)  
VALUES (30001, 109, 'Nissan', 70) ;

INSERT INTO Prices(storeid, serviceid, modelname, price)  
VALUES (30001, 109, 'Toyota', 60) ;

INSERT INTO Prices(storeid, serviceid, modelname, price)  
VALUES (30001, 110, 'Honda', 140) ;

INSERT INTO Prices(storeid, serviceid, modelname, price)  
VALUES (30001, 110, 'Nissan', 175) ;

INSERT INTO Prices(storeid, serviceid, modelname, price)  
VALUES (30001, 110, 'Toyota', 160) ;

INSERT INTO Prices(storeid, serviceid, modelname, price)  
VALUES (30001, 111, 'Honda', 590) ;

INSERT INTO Prices(storeid, serviceid, modelname, price)  
VALUES (30001, 111, 'Nissan', 700) ;

INSERT INTO Prices(storeid, serviceid, modelname, price)  
VALUES (30001, 111, 'Toyota', 680) ;

INSERT INTO Prices(storeid, serviceid, modelname, price)  
VALUES (30001, 112, 'Honda', 400) ;

INSERT INTO Prices(storeid, serviceid, modelname, price)  
VALUES (30001, 112, 'Nissan', 500) ;

INSERT INTO Prices(storeid, serviceid, modelname, price)  
VALUES (30001, 112, 'Toyota', 450) ;

INSERT INTO Prices(storeid, serviceid, modelname, price)  
VALUES (30001, 113, 'Honda', 120) ;

INSERT INTO Prices(storeid, serviceid, modelname, price)  
VALUES (30001, 113, 'Nissan', 190) ;

INSERT INTO Prices(storeid, serviceid, modelname, price)  
VALUES (30001, 113, 'Toyota', 200) ;

INSERT INTO Prices(storeid, serviceid, modelname, price)  
VALUES (30001, 114, 'Honda', 195) ;

INSERT INTO Prices(storeid, serviceid, modelname, price)  
VALUES (30001, 114, 'Nissan', 210) ;

INSERT INTO Prices(storeid, serviceid, modelname, price)  
VALUES (30001, 114, 'Toyota', 215) ;

INSERT INTO Prices(storeid, serviceid, modelname, price)  
VALUES (30001, 115, 'Honda', 300) ;

INSERT INTO Prices(storeid, serviceid, modelname, price)  
VALUES (30001, 115, 'Nissan', 310) ;

INSERT INTO Prices(storeid, serviceid, modelname, price)  
VALUES (30001, 115, 'Toyota', 305) ;

INSERT INTO Prices(storeid, serviceid, modelname, price)  
VALUES (30002, 101, 'Honda', 160) ;

INSERT INTO Prices(storeid, serviceid, modelname, price)  
VALUES (30002, 101, 'Nissan', 195) ;

INSERT INTO Prices(storeid, serviceid, modelname, price)  
VALUES (30002, 101, 'Toyota', 180) ;

INSERT INTO Prices(storeid, serviceid, modelname, price)  
VALUES (30002, 102, 'Honda', 420) ;

INSERT INTO Prices(storeid, serviceid, modelname, price)  
VALUES (30002, 102, 'Nissan', 520) ;

INSERT INTO Prices(storeid, serviceid, modelname, price)  
VALUES (30002, 102, 'Toyota', 470) ;

INSERT INTO Prices(storeid, serviceid, modelname, price)  
VALUES (30002, 103, 'Honda', 610) ;

INSERT INTO Prices(storeid, serviceid, modelname, price)  
VALUES (30002, 103, 'Nissan', 720) ;

INSERT INTO Prices(storeid, serviceid, modelname, price)  
VALUES (30002, 103, 'Toyota', 700) ;

INSERT INTO Prices(storeid, serviceid, modelname, price)  
VALUES (30002, 104, 'Honda', 160) ;

INSERT INTO Prices(storeid, serviceid, modelname, price)  
VALUES (30002, 104, 'Nissan', 195) ;

INSERT INTO Prices(storeid, serviceid, modelname, price)  
VALUES (30002, 104, 'Toyota', 180) ;

INSERT INTO Prices(storeid, serviceid, modelname, price)  
VALUES (30002, 105, 'Honda', 420) ;

INSERT INTO Prices(storeid, serviceid, modelname, price)  
VALUES (30002, 105, 'Nissan', 520) ;

INSERT INTO Prices(storeid, serviceid, modelname, price)  
VALUES (30002, 105, 'Toyota', 470) ;

INSERT INTO Prices(storeid, serviceid, modelname, price)  
VALUES (30002, 106, 'Honda', 420) ;

INSERT INTO Prices(storeid, serviceid, modelname, price)  
VALUES (30002, 106, 'Nissan', 520) ;

INSERT INTO Prices(storeid, serviceid, modelname, price)  
VALUES (30002, 106, 'Toyota', 470) ;

INSERT INTO Prices(storeid, serviceid, modelname, price)  
VALUES (30002, 107, 'Honda', 1020) ;

INSERT INTO Prices(storeid, serviceid, modelname, price)  
VALUES (30002, 107, 'Nissan', 1220) ;

INSERT INTO Prices(storeid, serviceid, modelname, price)  
VALUES (30002, 107, 'Toyota', 1120) ;

INSERT INTO Prices(storeid, serviceid, modelname, price)  
VALUES (30002, 108, 'Honda', 420) ;

INSERT INTO Prices(storeid, serviceid, modelname, price)  
VALUES (30002, 108, 'Nissan', 520) ;

INSERT INTO Prices(storeid, serviceid, modelname, price)  
VALUES (30002, 108, 'Toyota', 470) ;

INSERT INTO Prices(storeid, serviceid, modelname, price)  
VALUES (30002, 109, 'Honda', 70) ;

INSERT INTO Prices(storeid, serviceid, modelname, price)  
VALUES (30002, 109, 'Nissan', 90) ;

INSERT INTO Prices(storeid, serviceid, modelname, price)  
VALUES (30002, 109, 'Toyota', 80) ;

INSERT INTO Prices(storeid, serviceid, modelname, price)  
VALUES (30002, 110, 'Honda', 160) ;

INSERT INTO Prices(storeid, serviceid, modelname, price)  
VALUES (30002, 110, 'Nissan', 195) ;

INSERT INTO Prices(storeid, serviceid, modelname, price)  
VALUES (30002, 110, 'Toyota', 180) ;

INSERT INTO Prices(storeid, serviceid, modelname, price)  
VALUES (30002, 111, 'Honda', 610) ;

INSERT INTO Prices(storeid, serviceid, modelname, price)  
VALUES (30002, 111, 'Nissan', 720) ;

INSERT INTO Prices(storeid, serviceid, modelname, price)  
VALUES (30002, 111, 'Toyota', 700) ;

INSERT INTO Prices(storeid, serviceid, modelname, price)  
VALUES (30002, 112, 'Honda', 420) ;

INSERT INTO Prices(storeid, serviceid, modelname, price)  
VALUES (30002, 112, 'Nissan', 520) ;

INSERT INTO Prices(storeid, serviceid, modelname, price)  
VALUES (30002, 112, 'Toyota', 470) ;

INSERT INTO Prices(storeid, serviceid, modelname, price)  
VALUES (30002, 113, 'Honda', 125) ;

INSERT INTO Prices(storeid, serviceid, modelname, price)  
VALUES (30002, 113, 'Nissan', 195) ;

INSERT INTO Prices(storeid, serviceid, modelname, price)  
VALUES (30002, 113, 'Toyota', 205) ;

INSERT INTO Prices(storeid, serviceid, modelname, price)  
VALUES (30002, 114, 'Honda', 200) ;

INSERT INTO Prices(storeid, serviceid, modelname, price)  
VALUES (30002, 114, 'Nissan', 215) ;

INSERT INTO Prices(storeid, serviceid, modelname, price)  
VALUES (30002, 114, 'Toyota', 220) ;

INSERT INTO Prices(storeid, serviceid, modelname, price)  
VALUES (30002, 115, 'Honda', 305) ;

INSERT INTO Prices(storeid, serviceid, modelname, price)  
VALUES (30002, 115, 'Nissan', 315) ;

INSERT INTO Prices(storeid, serviceid, modelname, price)  
VALUES (30002, 115, 'Toyota', 310) ;

INSERT INTO Prices(storeid, serviceid, modelname, price)  
VALUES (30003, 101, 'Honda', 175) ;

INSERT INTO Prices(storeid, serviceid, modelname, price)  
VALUES (30003, 101, 'Nissan', 210) ;

INSERT INTO Prices(storeid, serviceid, modelname, price)  
VALUES (30003, 101, 'Toyota', 195) ;

INSERT INTO Prices(storeid, serviceid, modelname, price)  
VALUES (30003, 102, 'Honda', 435) ;

INSERT INTO Prices(storeid, serviceid, modelname, price)  
VALUES (30003, 102, 'Nissan', 535) ;

INSERT INTO Prices(storeid, serviceid, modelname, price)  
VALUES (30003, 102, 'Toyota', 485) ;

INSERT INTO Prices(storeid, serviceid, modelname, price)  
VALUES (30003, 103, 'Honda', 625) ;

INSERT INTO Prices(storeid, serviceid, modelname, price)  
VALUES (30003, 103, 'Nissan', 735) ;

INSERT INTO Prices(storeid, serviceid, modelname, price)  
VALUES (30003, 103, 'Toyota', 715) ;

INSERT INTO Prices(storeid, serviceid, modelname, price)  
VALUES (30003, 104, 'Honda', 175) ;

INSERT INTO Prices(storeid, serviceid, modelname, price)  
VALUES (30003, 104, 'Nissan', 210) ;

INSERT INTO Prices(storeid, serviceid, modelname, price)  
VALUES (30003, 104, 'Toyota', 195) ;

INSERT INTO Prices(storeid, serviceid, modelname, price)  
VALUES (30003, 105, 'Honda', 435) ;

INSERT INTO Prices(storeid, serviceid, modelname, price)  
VALUES (30003, 105, 'Nissan', 535) ;

INSERT INTO Prices(storeid, serviceid, modelname, price)  
VALUES (30003, 105, 'Toyota', 485) ;

INSERT INTO Prices(storeid, serviceid, modelname, price)  
VALUES (30003, 106, 'Honda', 435) ;

INSERT INTO Prices(storeid, serviceid, modelname, price)  
VALUES (30003, 106, 'Nissan', 535) ;

INSERT INTO Prices(storeid, serviceid, modelname, price)  
VALUES (30003, 106, 'Toyota', 485) ;

INSERT INTO Prices(storeid, serviceid, modelname, price)  
VALUES (30003, 107, 'Honda', 1035) ;

INSERT INTO Prices(storeid, serviceid, modelname, price)  
VALUES (30003, 107, 'Nissan', 1235) ;

INSERT INTO Prices(storeid, serviceid, modelname, price)  
VALUES (30003, 107, 'Toyota', 1135) ;

INSERT INTO Prices(storeid, serviceid, modelname, price)  
VALUES (30003, 108, 'Honda', 435) ;

INSERT INTO Prices(storeid, serviceid, modelname, price)  
VALUES (30003, 108, 'Nissan', 535) ;

INSERT INTO Prices(storeid, serviceid, modelname, price)  
VALUES (30003, 108, 'Toyota', 485) ;

INSERT INTO Prices(storeid, serviceid, modelname, price)  
VALUES (30003, 109, 'Honda', 85) ;

INSERT INTO Prices(storeid, serviceid, modelname, price)  
VALUES (30003, 109, 'Nissan', 105) ;

INSERT INTO Prices(storeid, serviceid, modelname, price)  
VALUES (30003, 109, 'Toyota', 95) ;

INSERT INTO Prices(storeid, serviceid, modelname, price)  
VALUES (30003, 110, 'Honda', 175) ;

INSERT INTO Prices(storeid, serviceid, modelname, price)  
VALUES (30003, 110, 'Nissan', 210) ;

INSERT INTO Prices(storeid, serviceid, modelname, price)  
VALUES (30003, 110, 'Toyota', 195) ;

INSERT INTO Prices(storeid, serviceid, modelname, price)  
VALUES (30003, 111, 'Honda', 625) ;

INSERT INTO Prices(storeid, serviceid, modelname, price)  
VALUES (30003, 111, 'Nissan', 735) ;

INSERT INTO Prices(storeid, serviceid, modelname, price)  
VALUES (30003, 111, 'Toyota', 715) ;

INSERT INTO Prices(storeid, serviceid, modelname, price)  
VALUES (30003, 112, 'Honda', 435) ;

INSERT INTO Prices(storeid, serviceid, modelname, price)  
VALUES (30003, 112, 'Nissan', 535) ;

INSERT INTO Prices(storeid, serviceid, modelname, price)  
VALUES (30003, 112, 'Toyota', 485) ;

INSERT INTO Prices(storeid, serviceid, modelname, price)  
VALUES (30003, 113, 'Honda', 140) ;

INSERT INTO Prices(storeid, serviceid, modelname, price)  
VALUES (30003, 113, 'Nissan', 180) ;

INSERT INTO Prices(storeid, serviceid, modelname, price)  
VALUES (30003, 113, 'Toyota', 195) ;

INSERT INTO Prices(storeid, serviceid, modelname, price)  
VALUES (30003, 114, 'Honda', 210) ;

INSERT INTO Prices(storeid, serviceid, modelname, price)  
VALUES (30003, 114, 'Nissan', 220) ;

INSERT INTO Prices(storeid, serviceid, modelname, price)  
VALUES (30003, 114, 'Toyota', 215) ;

INSERT INTO Prices(storeid, serviceid, modelname, price)  
VALUES (30003, 115, 'Honda', 310) ;

INSERT INTO Prices(storeid, serviceid, modelname, price)  
VALUES (30003, 115, 'Nissan', 305) ;

INSERT INTO Prices(storeid, serviceid, modelname, price)  
VALUES (30003, 115, 'Toyota', 310) ;

CREATE TABLE Customer(  
    customerid INTEGER,  
    storeid INTEGER,  
    custname varchar2(20),  
    status INTEGER,  
    CONSTRAINT pk_cust PRIMARY KEY (customerid, storeid),  
    CONSTRAINT check_status CHECK(status = 1 OR status = 0)  
);

insert into Customer      
values(10001, 30001, 'Peter Parker', 0) ;

insert into Customer      
values(10002, 30001, 'Diana Prince', 0) ;

insert into Customer      
values(10053, 30002, 'Billy Batson', 0) ;

insert into Customer      
values(10010, 30002, 'Bruce Wayne', 0) ;

insert into Customer      
values(10001, 30002, 'Steve Rogers', 0) ;

insert into Customer      
values(10035, 30002, 'Happy Hogan', 0) ;

insert into Customer      
values(10002, 30003, 'Tony Stark', 0) ;

insert into Customer      
values(10003, 30003, 'Natasha Romanoff', 0) ;

insert into Customer      
values(10011, 30003, 'Harvey Bullock', 0) ;

insert into Customer      
values(10062, 30003, 'Sam Wilson', 0) ;

insert into Customer      
values(10501, 30003, 'Wanda Maximoff', 0) ;

insert into Customer      
values(10010, 30003, 'Virginia Potts', 0) ;

CREATE TABLE Vehicle(  
    vin varchar2(10),  
    storeid INTEGER,  
    customerid INTEGER,  
    manufacturer varchar2(20),  
    lastservice varchar2(2),  
    mfyear INTEGER,  
    currmileage INTEGER,  
    CONSTRAINT pk_vehicle PRIMARY KEY (vin),  
    CONSTRAINT check_lastservice CHECK(lastservice IN ('A', 'B', 'C')),  
    CONSTRAINT fk_custid FOREIGN KEY (customerid, storeid) REFERENCES Customer  
)  ;

insert into Vehicle   
values('4Y1BL658', 30001, 10001, 'Toyota','B', 2007, 53000) ;

insert into Vehicle   
values('7A1ST264', 30001, 10002, 'Honda','A', 1999, 117000) ;

insert into Vehicle   
values('5TR3K914', 30002, 10053, 'Nissan','C', 2015, 111000) ;

insert into Vehicle   
values('15DC9A87', 30002, 10010, 'Toyota','A', 2020, 21000) ;

insert into Vehicle   
values('18S5R2D8', 30002, 10001, 'Nissan','C', 2019, 195500) ;

insert into Vehicle   
values('9R2UHP54', 30002, 10035, 'Honda','B', 2013, 67900) ;

insert into Vehicle   
values('88TSM888', 30003, 10002, 'Honda','A', 2000, 10000) ;

insert into Vehicle   
values('71HK2D89', 30003, 10003, 'Toyota','B', 2004, 195550) ;

insert into Vehicle   
values('34KLE19D', 30003, 10011, 'Toyota','C', 2010, 123800) ;

insert into Vehicle   
values('29T56WC3', 30003, 10062, 'Nissan','A', 2011, 51300) ;

insert into Vehicle   
values('P39VN198', 30003, 10501, 'Nissan','B', 2013, 39500) ;

insert into Vehicle   
values('39YVS415', 30003, 10010, 'Honda','A', 2021, 49900) ;

create table Orders( 
    orderno integer, 
    storeid integer, 
    custid integer, 
    vin integer, 
    modelname varchar2(10), 
    invoicestatus varchar2(1) default 0, 
    constraint pk_o primary key (orderno), 
    constraint fk_sco foreign key (storeid, custid) references Customer, 
    constraint fk_vo foreign key (vin) references Vehicle 
);

alter table Order 
add constraint check (invoicestatus in (0,1));

create table Orders( 
    orderno integer, 
    storeid integer, 
    customerid integer, 
    vin integer, 
    modelname varchar2(10), 
    invoicestatus varchar2(1) default 0, 
    constraint pk_o primary key (orderno), 
    constraint fk_sco foreign key (storeid, customerid) references Customer, 
    constraint fk_vo foreign key (vin) references Vehicle 
);

alter table Orders 
add constraint check (invoicestatus in (0,1));

create table Orders( 
    orderno integer, 
    storeid integer, 
    customerid integer, 
    vin integer, 
    modelname varchar2(10), 
    invoicestatus varchar2(1) default 0, 
    constraint pk_o primary key (orderno), 
    constraint fk_vo foreign key (vin, storeid, customerid) references Vehicle 
);

alter table Orders 
add constraint check (invoicestatus in (0,1));

drop table Orders;

create table Orders( 
    orderno INTEGER, 
    vin INTEGER,  
    storeid INTEGER,  
    customerid INTEGER,  
    modelname varchar2(10), 
    invoicestatus varchar2(1) default 0, 
    constraint pk_o primary key (orderno), 
    CONSTRAINT check_invoice CHECK(invoicestatus IN (0, 1)),  
    CONSTRAINT fk_vo FOREIGN KEY (vin, storeid, customerid) REFERENCES Vehicle 
);

create table Orders( 
    orderno INTEGER, 
    vin INTEGER,  
    storeid INTEGER,  
    customerid INTEGER,  
    modelname varchar2(10), 
    invoicestatus varchar2(1) default 0, 
    constraint pk_o primary key (orderno), 
    CONSTRAINT check_invoice CHECK(invoicestatus IN (0, 1)),  
    CONSTRAINT fk_vo FOREIGN KEY (storeid, customerid) REFERENCES Customer 
);

drop table Orders;

create table Orders( 
    orderno INTEGER, 
    vin INTEGER,  
    storeid INTEGER,  
    customerid INTEGER,  
    modelname varchar2(10), 
    invoicestatus varchar2(1) default 0, 
    constraint pk_o primary key (orderno), 
    CONSTRAINT check_invoice CHECK(invoicestatus IN (0, 1)),  
    CONSTRAINT fk_co FOREIGN KEY (storeid, customerid) REFERENCES Customer 
);

alter table Orders 
add constraint fk_vo FOREIGN KEY (vin) REFERENCES Vehicle;

drop table Orders;

create table Orders( 
    orderno INTEGER, 
    vin varchar2(10),  
    storeid INTEGER,  
    customerid INTEGER,  
    modelname varchar2(10), 
    invoicestatus varchar2(1) default 0, 
    constraint pk_o primary key (orderno), 
    CONSTRAINT check_invoice CHECK(invoicestatus IN (0, 1)),  
    CONSTRAINT fk_co FOREIGN KEY (storeid, customerid) REFERENCES Customer, 
    CONSTRAINT fk_vo FOREIGN KEY (vin) REFERENCES Vehicle 
);

create table Schedule_Week1( 
    orderno INTEGER, 
    servicename varchar2(30),  
    seerviceday INTEGER,  
    startslot INTEGER,  
    endslot INTEGER, 
    empid INTEGER, 
    storeid INTEGER, 
    CONSTRAINT pk_sw1 PRIMARY KEY (orderno, servicename), 
    CONSTRAINT fk_hbsw1 FOREIGN KEY (empid, storeid) REFERENCES Hourly_Basis 
);

create table Schedule_Week2( 
    orderno INTEGER, 
    servicename varchar2(30),  
    seerviceday INTEGER,  
    startslot INTEGER,  
    endslot INTEGER, 
    empid INTEGER, 
    storeid INTEGER, 
    CONSTRAINT pk_sw2 PRIMARY KEY (orderno, servicename), 
    CONSTRAINT fk_hbsw2 FOREIGN KEY (empid, storeid) REFERENCES Hourly_Basis 
);

create table Schedule_Week3( 
    orderno INTEGER, 
    servicename varchar2(30),  
    seerviceday INTEGER,  
    startslot INTEGER,  
    endslot INTEGER, 
    empid INTEGER, 
    storeid INTEGER, 
    CONSTRAINT pk_sw3 PRIMARY KEY (orderno, servicename), 
    CONSTRAINT fk_hbsw3 FOREIGN KEY (empid, storeid) REFERENCES Hourly_Basis 
);

create table Schedule_Week4( 
    orderno INTEGER, 
    servicename varchar2(30),  
    seerviceday INTEGER,  
    startslot INTEGER,  
    endslot INTEGER, 
    empid INTEGER, 
    storeid INTEGER, 
    CONSTRAINT pk_sw4 PRIMARY KEY (orderno, servicename), 
    CONSTRAINT fk_hbsw4 FOREIGN KEY (empid, storeid) REFERENCES Hourly_Basis 
);

create table Mechanic_Availability( 
    storeid INTEGER, 
    empid INTEGER, 
    serviceday INTEGER, 
    starttime INTEGER default 0, 
    endtime INTEGER default 1, 
    hoursworked INTEGER default 0, 
    CONSTRAINT pk_ma PRIMARY KEY (storeid, empid, starttime), 
    CONSTRAINT fk_mahb FOREIGN KEY (storeid, empid) REFERENCES Hourly_Basis 
);

insert into Mechanic_Availability (storeid, empid, serviceday) 
values(30001, 132457689, 1);

insert into Mechanic_Availability (storeid, empid, serviceday) 
values(30001, 314275869, 1);

insert into Mechanic_Availability (storeid, empid, serviceday) 
values(30001, 241368579, 1);

insert into Mechanic_Availability (storeid, empid, serviceday) 
values(30001, 132457689, 2);

insert into Mechanic_Availability (storeid, empid, serviceday) 
values(30001, 314275869, 2);

insert into Mechanic_Availability (storeid, empid, serviceday) 
values(30001, 241368579, 2);

insert into Mechanic_Availability (storeid, empid, serviceday) 
values(30001, 132457689, 3);

insert into Mechanic_Availability (storeid, empid, serviceday) 
values(30001, 314275869, 3);

insert into Mechanic_Availability (storeid, empid, serviceday) 
values(30001, 241368579, 3);

insert into Mechanic_Availability (storeid, empid, serviceday) 
values(30001, 132457689, 4);

insert into Mechanic_Availability (storeid, empid, serviceday) 
values(30001, 314275869, 4);

insert into Mechanic_Availability (storeid, empid, serviceday) 
values(30001, 241368579, 4);

insert into Mechanic_Availability (storeid, empid, serviceday) 
values(30001, 132457689, 5);

insert into Mechanic_Availability (storeid, empid, serviceday) 
values(30001, 314275869, 5);

insert into Mechanic_Availability (storeid, empid, serviceday) 
values(30001, 241368579, 5);

insert into Mechanic_Availability (storeid, empid, serviceday) 
values(30001, 132457689, 6);

insert into Mechanic_Availability (storeid, empid, serviceday) 
values(30001, 314275869, 6);

insert into Mechanic_Availability (storeid, empid, serviceday) 
values(30001, 241368579, 6);

insert into Mechanic_Availability (storeid, empid, serviceday) 
values(30002, 423186759, 1);

insert into Mechanic_Availability (storeid, empid, serviceday) 
values(30002, 123789456, 1);

insert into Mechanic_Availability (storeid, empid, serviceday) 
values(30002, 789123456, 1);

insert into Mechanic_Availability (storeid, empid, serviceday) 
values(30002, 125689347, 1);

insert into Mechanic_Availability (storeid, empid, serviceday) 
values(30002, 423186759, 2);

insert into Mechanic_Availability (storeid, empid, serviceday) 
values(30002, 123789456, 2);

insert into Mechanic_Availability (storeid, empid, serviceday) 
values(30002, 789123456, 2);

insert into Mechanic_Availability (storeid, empid, serviceday) 
values(30002, 125689347, 2);

insert into Mechanic_Availability (storeid, empid, serviceday) 
values(30002, 423186759, 3);

insert into Mechanic_Availability (storeid, empid, serviceday) 
values(30002, 123789456, 3);

insert into Mechanic_Availability (storeid, empid, serviceday) 
values(30002, 789123456, 3);

insert into Mechanic_Availability (storeid, empid, serviceday) 
values(30002, 125689347, 3);

insert into Mechanic_Availability (storeid, empid, serviceday) 
values(30002, 423186759, 4);

insert into Mechanic_Availability (storeid, empid, serviceday) 
values(30002, 123789456, 4);

insert into Mechanic_Availability (storeid, empid, serviceday) 
values(30002, 789123456, 4);

insert into Mechanic_Availability (storeid, empid, serviceday) 
values(30002, 125689347, 4);

insert into Mechanic_Availability (storeid, empid, serviceday) 
values(30002, 423186759, 5);

insert into Mechanic_Availability (storeid, empid, serviceday) 
values(30002, 123789456, 5);

insert into Mechanic_Availability (storeid, empid, serviceday) 
values(30002, 789123456, 5);

insert into Mechanic_Availability (storeid, empid, serviceday) 
values(30002, 125689347, 5);

insert into Mechanic_Availability (storeid, empid, serviceday) 
values(30002, 423186759, 6);

insert into Mechanic_Availability (storeid, empid, serviceday) 
values(30002, 123789456, 6);

insert into Mechanic_Availability (storeid, empid, serviceday) 
values(30002, 789123456, 6);

insert into Mechanic_Availability (storeid, empid, serviceday) 
values(30002, 125689347, 6);

insert into Mechanic_Availability (storeid, empid, serviceday) 
values(30003, 347812569, 1);

insert into Mechanic_Availability (storeid, empid, serviceday) 
values(30003, 123456780, 1);

insert into Mechanic_Availability (storeid, empid, serviceday) 
values(30003, 123456708, 1);

insert into Mechanic_Availability (storeid, empid, serviceday) 
values(30003, 123456078, 1);

insert into Mechanic_Availability (storeid, empid, serviceday) 
values(30003, 123450678, 1);

insert into Mechanic_Availability (storeid, empid, serviceday) 
values(30003, 123405678, 1);

insert into Mechanic_Availability (storeid, empid, serviceday) 
values(30003, 347812569, 2);

insert into Mechanic_Availability (storeid, empid, serviceday) 
values(30003, 123456780, 2);

insert into Mechanic_Availability (storeid, empid, serviceday) 
values(30003, 123456708, 2);

insert into Mechanic_Availability (storeid, empid, serviceday) 
values(30003, 123456078, 2);

insert into Mechanic_Availability (storeid, empid, serviceday) 
values(30003, 123450678, 2);

insert into Mechanic_Availability (storeid, empid, serviceday) 
values(30003, 123405678, 2);

insert into Mechanic_Availability (storeid, empid, serviceday) 
values(30003, 347812569, 3);

insert into Mechanic_Availability (storeid, empid, serviceday) 
values(30003, 123456780, 3);

insert into Mechanic_Availability (storeid, empid, serviceday) 
values(30003, 123456708, 3);

insert into Mechanic_Availability (storeid, empid, serviceday) 
values(30003, 123456078, 3);

insert into Mechanic_Availability (storeid, empid, serviceday) 
values(30003, 123450678, 3);

insert into Mechanic_Availability (storeid, empid, serviceday) 
values(30003, 123405678, 3);

insert into Mechanic_Availability (storeid, empid, serviceday) 
values(30003, 347812569, 4);

insert into Mechanic_Availability (storeid, empid, serviceday) 
values(30003, 123456780, 4);

insert into Mechanic_Availability (storeid, empid, serviceday) 
values(30003, 123456708, 4);

insert into Mechanic_Availability (storeid, empid, serviceday) 
values(30003, 123456078, 4);

insert into Mechanic_Availability (storeid, empid, serviceday) 
values(30003, 123450678, 4);

insert into Mechanic_Availability (storeid, empid, serviceday) 
values(30003, 123405678, 4);

insert into Mechanic_Availability (storeid, empid, serviceday) 
values(30003, 347812569, 5);

insert into Mechanic_Availability (storeid, empid, serviceday) 
values(30003, 123456780, 5);

insert into Mechanic_Availability (storeid, empid, serviceday) 
values(30003, 123456708, 5);

insert into Mechanic_Availability (storeid, empid, serviceday) 
values(30003, 123456078, 5);

insert into Mechanic_Availability (storeid, empid, serviceday) 
values(30003, 123450678, 5);

insert into Mechanic_Availability (storeid, empid, serviceday) 
values(30003, 123405678, 5);

drop table Mechanic_Availability;

create table Mechanic_Availability(  
    storeid INTEGER,  
    empid INTEGER,  
    serviceday INTEGER,  
    starttime INTEGER default 0,  
    endtime INTEGER default 1,  
    hoursworked INTEGER default 0,  
    CONSTRAINT pk_ma PRIMARY KEY (storeid, empid, serviceday),  
    CONSTRAINT fk_mahb FOREIGN KEY (storeid, empid) REFERENCES Hourly_Basis  
);

insert into Mechanic_Availability (storeid, empid, serviceday) 
values(30001, 132457689, 1);

insert into Mechanic_Availability (storeid, empid, serviceday) 
values(30001, 314275869, 1);

insert into Mechanic_Availability (storeid, empid, serviceday) 
values(30001, 241368579, 1);

insert into Mechanic_Availability (storeid, empid, serviceday) 
values(30001, 132457689, 2);

insert into Mechanic_Availability (storeid, empid, serviceday) 
values(30001, 314275869, 2);

insert into Mechanic_Availability (storeid, empid, serviceday) 
values(30001, 241368579, 2);

insert into Mechanic_Availability (storeid, empid, serviceday) 
values(30001, 132457689, 3);

insert into Mechanic_Availability (storeid, empid, serviceday) 
values(30001, 314275869, 3);

insert into Mechanic_Availability (storeid, empid, serviceday) 
values(30001, 241368579, 3);

insert into Mechanic_Availability (storeid, empid, serviceday) 
values(30001, 132457689, 4);

insert into Mechanic_Availability (storeid, empid, serviceday) 
values(30001, 314275869, 4);

insert into Mechanic_Availability (storeid, empid, serviceday) 
values(30001, 241368579, 4);

insert into Mechanic_Availability (storeid, empid, serviceday) 
values(30001, 132457689, 5);

insert into Mechanic_Availability (storeid, empid, serviceday) 
values(30001, 314275869, 5);

insert into Mechanic_Availability (storeid, empid, serviceday) 
values(30001, 241368579, 5);

insert into Mechanic_Availability (storeid, empid, serviceday) 
values(30001, 132457689, 6);

insert into Mechanic_Availability (storeid, empid, serviceday) 
values(30001, 314275869, 6);

insert into Mechanic_Availability (storeid, empid, serviceday) 
values(30001, 241368579, 6);

insert into Mechanic_Availability (storeid, empid, serviceday) 
values(30002, 423186759, 1);

insert into Mechanic_Availability (storeid, empid, serviceday) 
values(30002, 123789456, 1);

insert into Mechanic_Availability (storeid, empid, serviceday) 
values(30002, 789123456, 1);

insert into Mechanic_Availability (storeid, empid, serviceday) 
values(30002, 125689347, 1);

insert into Mechanic_Availability (storeid, empid, serviceday) 
values(30002, 423186759, 2);

insert into Mechanic_Availability (storeid, empid, serviceday) 
values(30002, 123789456, 2);

insert into Mechanic_Availability (storeid, empid, serviceday) 
values(30002, 789123456, 2);

insert into Mechanic_Availability (storeid, empid, serviceday) 
values(30002, 125689347, 2);

insert into Mechanic_Availability (storeid, empid, serviceday) 
values(30002, 423186759, 3);

insert into Mechanic_Availability (storeid, empid, serviceday) 
values(30002, 123789456, 3);

insert into Mechanic_Availability (storeid, empid, serviceday) 
values(30002, 789123456, 3);

insert into Mechanic_Availability (storeid, empid, serviceday) 
values(30002, 125689347, 3);

insert into Mechanic_Availability (storeid, empid, serviceday) 
values(30002, 423186759, 4);

insert into Mechanic_Availability (storeid, empid, serviceday) 
values(30002, 123789456, 4);

insert into Mechanic_Availability (storeid, empid, serviceday) 
values(30002, 789123456, 4);

insert into Mechanic_Availability (storeid, empid, serviceday) 
values(30002, 125689347, 4);

insert into Mechanic_Availability (storeid, empid, serviceday) 
values(30002, 423186759, 5);

insert into Mechanic_Availability (storeid, empid, serviceday) 
values(30002, 123789456, 5);

insert into Mechanic_Availability (storeid, empid, serviceday) 
values(30002, 789123456, 5);

insert into Mechanic_Availability (storeid, empid, serviceday) 
values(30002, 125689347, 5);

insert into Mechanic_Availability (storeid, empid, serviceday) 
values(30002, 423186759, 6);

insert into Mechanic_Availability (storeid, empid, serviceday) 
values(30002, 123789456, 6);

insert into Mechanic_Availability (storeid, empid, serviceday) 
values(30002, 789123456, 6);

insert into Mechanic_Availability (storeid, empid, serviceday) 
values(30002, 125689347, 6);

insert into Mechanic_Availability (storeid, empid, serviceday) 
values(30003, 347812569, 1);

insert into Mechanic_Availability (storeid, empid, serviceday) 
values(30003, 123456780, 1);

insert into Mechanic_Availability (storeid, empid, serviceday) 
values(30003, 123456708, 1);

insert into Mechanic_Availability (storeid, empid, serviceday) 
values(30003, 123456078, 1);

insert into Mechanic_Availability (storeid, empid, serviceday) 
values(30003, 123450678, 1);

insert into Mechanic_Availability (storeid, empid, serviceday) 
values(30003, 123405678, 1);

insert into Mechanic_Availability (storeid, empid, serviceday) 
values(30003, 347812569, 2);

insert into Mechanic_Availability (storeid, empid, serviceday) 
values(30003, 123456780, 2);

insert into Mechanic_Availability (storeid, empid, serviceday) 
values(30003, 123456708, 2);

insert into Mechanic_Availability (storeid, empid, serviceday) 
values(30003, 123456078, 2);

insert into Mechanic_Availability (storeid, empid, serviceday) 
values(30003, 123450678, 2);

insert into Mechanic_Availability (storeid, empid, serviceday) 
values(30003, 123405678, 2);

insert into Mechanic_Availability (storeid, empid, serviceday) 
values(30003, 347812569, 3);

insert into Mechanic_Availability (storeid, empid, serviceday) 
values(30003, 123456780, 3);

insert into Mechanic_Availability (storeid, empid, serviceday) 
values(30003, 123456708, 3);

insert into Mechanic_Availability (storeid, empid, serviceday) 
values(30003, 123456078, 3);

insert into Mechanic_Availability (storeid, empid, serviceday) 
values(30003, 123450678, 3);

insert into Mechanic_Availability (storeid, empid, serviceday) 
values(30003, 123405678, 3);

insert into Mechanic_Availability (storeid, empid, serviceday) 
values(30003, 347812569, 4);

insert into Mechanic_Availability (storeid, empid, serviceday) 
values(30003, 123456780, 4);

insert into Mechanic_Availability (storeid, empid, serviceday) 
values(30003, 123456708, 4);

insert into Mechanic_Availability (storeid, empid, serviceday) 
values(30003, 123456078, 4);

insert into Mechanic_Availability (storeid, empid, serviceday) 
values(30003, 123450678, 4);

insert into Mechanic_Availability (storeid, empid, serviceday) 
values(30003, 123405678, 4);

insert into Mechanic_Availability (storeid, empid, serviceday) 
values(30003, 347812569, 5);

insert into Mechanic_Availability (storeid, empid, serviceday) 
values(30003, 123456780, 5);

insert into Mechanic_Availability (storeid, empid, serviceday) 
values(30003, 123456708, 5);

insert into Mechanic_Availability (storeid, empid, serviceday) 
values(30003, 123456078, 5);

insert into Mechanic_Availability (storeid, empid, serviceday) 
values(30003, 123450678, 5);

insert into Mechanic_Availability (storeid, empid, serviceday) 
values(30003, 123405678, 5);

alter table Mechanic_Availability 
add column serviceweek default 1;

alter table Mechanic_Availability 
add (serviceweek INTEGER default 1);

alter table Mechanic_Availability 
modify primary key (storeid, empid, serviceday, serviceweek);

drop table Mechanic_Availability;

create table Mechanic_Availability(  
    storeid INTEGER,  
    empid INTEGER,  
    serviceday INTEGER,  
    serviceweek INTEGER,  
    starttime INTEGER default 0,  
    endtime INTEGER default 1,  
    hoursworked INTEGER default 0,  
    CONSTRAINT pk_ma PRIMARY KEY (storeid, empid, serviceday, serviceweek),  
    CONSTRAINT fk_mahb FOREIGN KEY (storeid, empid) REFERENCES Hourly_Basis  
);

insert into Mechanic_Availability (storeid, empid, serviceday, serviceweek) 
values(30001, 132457689, 1, 1);

insert into Mechanic_Availability (storeid, empid, serviceday, serviceweek) 
values(30001, 314275869, 1, 1);

insert into Mechanic_Availability (storeid, empid, serviceday, serviceweek) 
values(30001, 241368579, 1, 1);

insert into Mechanic_Availability (storeid, empid, serviceday, serviceweek) 
values(30001, 132457689, 2, 1);

insert into Mechanic_Availability (storeid, empid, serviceday, serviceweek) 
values(30001, 314275869, 2, 1);

insert into Mechanic_Availability (storeid, empid, serviceday, serviceweek) 
values(30001, 241368579, 2, 1);

insert into Mechanic_Availability (storeid, empid, serviceday, serviceweek) 
values(30001, 132457689, 3, 1);

insert into Mechanic_Availability (storeid, empid, serviceday, serviceweek) 
values(30001, 314275869, 3, 1);

insert into Mechanic_Availability (storeid, empid, serviceday, serviceweek) 
values(30001, 241368579, 3, 1);

insert into Mechanic_Availability (storeid, empid, serviceday, serviceweek) 
values(30001, 132457689, 4, 1);

insert into Mechanic_Availability (storeid, empid, serviceday, serviceweek) 
values(30001, 314275869, 4, 1);

insert into Mechanic_Availability (storeid, empid, serviceday, serviceweek) 
values(30001, 241368579, 4, 1);

insert into Mechanic_Availability (storeid, empid, serviceday, serviceweek) 
values(30001, 132457689, 5, 1);

insert into Mechanic_Availability (storeid, empid, serviceday, serviceweek) 
values(30001, 314275869, 5, 1);

insert into Mechanic_Availability (storeid, empid, serviceday, serviceweek) 
values(30001, 241368579, 5, 1);

insert into Mechanic_Availability (storeid, empid, serviceday, serviceweek) 
values(30001, 132457689, 6, 1);

insert into Mechanic_Availability (storeid, empid, serviceday, serviceweek) 
values(30001, 314275869, 6, 1);

insert into Mechanic_Availability (storeid, empid, serviceday, serviceweek) 
values(30001, 241368579, 6, 1);

insert into Mechanic_Availability (storeid, empid, serviceday, serviceweek) 
values(30002, 423186759, 1, 1);

insert into Mechanic_Availability (storeid, empid, serviceday, serviceweek) 
values(30002, 123789456, 1, 1);

insert into Mechanic_Availability (storeid, empid, serviceday, serviceweek) 
values(30002, 789123456, 1, 1);

insert into Mechanic_Availability (storeid, empid, serviceday, serviceweek) 
values(30002, 125689347, 1, 1);

insert into Mechanic_Availability (storeid, empid, serviceday, serviceweek) 
values(30002, 423186759, 2, 1);

insert into Mechanic_Availability (storeid, empid, serviceday, serviceweek) 
values(30002, 123789456, 2, 1);

insert into Mechanic_Availability (storeid, empid, serviceday, serviceweek) 
values(30002, 789123456, 2, 1);

insert into Mechanic_Availability (storeid, empid, serviceday, serviceweek) 
values(30002, 125689347, 2, 1);

insert into Mechanic_Availability (storeid, empid, serviceday, serviceweek) 
values(30002, 423186759, 3, 1);

insert into Mechanic_Availability (storeid, empid, serviceday, serviceweek) 
values(30002, 123789456, 3, 1);

insert into Mechanic_Availability (storeid, empid, serviceday, serviceweek) 
values(30002, 789123456, 3, 1);

insert into Mechanic_Availability (storeid, empid, serviceday, serviceweek) 
values(30002, 125689347, 3, 1);

insert into Mechanic_Availability (storeid, empid, serviceday, serviceweek) 
values(30002, 423186759, 4, 1);

insert into Mechanic_Availability (storeid, empid, serviceday, serviceweek) 
values(30002, 123789456, 4, 1);

insert into Mechanic_Availability (storeid, empid, serviceday, serviceweek) 
values(30002, 789123456, 4, 1);

insert into Mechanic_Availability (storeid, empid, serviceday, serviceweek) 
values(30002, 125689347, 4, 1);

insert into Mechanic_Availability (storeid, empid, serviceday, serviceweek) 
values(30002, 423186759, 5, 1);

insert into Mechanic_Availability (storeid, empid, serviceday, serviceweek) 
values(30002, 123789456, 5, 1);

insert into Mechanic_Availability (storeid, empid, serviceday, serviceweek) 
values(30002, 789123456, 5, 1);

insert into Mechanic_Availability (storeid, empid, serviceday, serviceweek) 
values(30002, 125689347, 5, 1);

insert into Mechanic_Availability (storeid, empid, serviceday, serviceweek) 
values(30002, 423186759, 6, 1);

insert into Mechanic_Availability (storeid, empid, serviceday, serviceweek) 
values(30002, 123789456, 6, 1);

insert into Mechanic_Availability (storeid, empid, serviceday, serviceweek) 
values(30002, 789123456, 6, 1);

insert into Mechanic_Availability (storeid, empid, serviceday, serviceweek) 
values(30002, 125689347, 6, 1);

insert into Mechanic_Availability (storeid, empid, serviceday, serviceweek) 
values(30003, 347812569, 1, 1);

insert into Mechanic_Availability (storeid, empid, serviceday, serviceweek) 
values(30003, 123456780, 1, 1);

insert into Mechanic_Availability (storeid, empid, serviceday, serviceweek) 
values(30003, 123456708, 1, 1);

insert into Mechanic_Availability (storeid, empid, serviceday, serviceweek) 
values(30003, 123456078, 1, 1);

insert into Mechanic_Availability (storeid, empid, serviceday, serviceweek) 
values(30003, 123450678, 1, 1);

insert into Mechanic_Availability (storeid, empid, serviceday, serviceweek) 
values(30003, 123405678, 1, 1);

insert into Mechanic_Availability (storeid, empid, serviceday, serviceweek) 
values(30003, 347812569, 2, 1);

insert into Mechanic_Availability (storeid, empid, serviceday, serviceweek) 
values(30003, 123456780, 2, 1);

insert into Mechanic_Availability (storeid, empid, serviceday, serviceweek) 
values(30003, 123456708, 2, 1);

insert into Mechanic_Availability (storeid, empid, serviceday, serviceweek) 
values(30003, 123456078, 2, 1);

insert into Mechanic_Availability (storeid, empid, serviceday, serviceweek) 
values(30003, 123450678, 2, 1);

insert into Mechanic_Availability (storeid, empid, serviceday, serviceweek) 
values(30003, 123405678, 2, 1);

insert into Mechanic_Availability (storeid, empid, serviceday, serviceweek) 
values(30003, 347812569, 3, 1);

insert into Mechanic_Availability (storeid, empid, serviceday, serviceweek) 
values(30003, 123456780, 3, 1);

insert into Mechanic_Availability (storeid, empid, serviceday, serviceweek) 
values(30003, 123456708, 3, 1);

insert into Mechanic_Availability (storeid, empid, serviceday, serviceweek) 
values(30003, 123456078, 3, 1);

insert into Mechanic_Availability (storeid, empid, serviceday, serviceweek) 
values(30003, 123450678, 3, 1);

insert into Mechanic_Availability (storeid, empid, serviceday, serviceweek) 
values(30003, 123405678, 3, 1);

insert into Mechanic_Availability (storeid, empid, serviceday, serviceweek) 
values(30003, 347812569, 4, 1);

insert into Mechanic_Availability (storeid, empid, serviceday, serviceweek) 
values(30003, 123456780, 4, 1);

insert into Mechanic_Availability (storeid, empid, serviceday, serviceweek) 
values(30003, 123456708, 4, 1);

insert into Mechanic_Availability (storeid, empid, serviceday, serviceweek) 
values(30003, 123456078, 4, 1);

insert into Mechanic_Availability (storeid, empid, serviceday, serviceweek) 
values(30003, 123450678, 4, 1);

insert into Mechanic_Availability (storeid, empid, serviceday, serviceweek) 
values(30003, 123405678, 4, 1);

insert into Mechanic_Availability (storeid, empid, serviceday, serviceweek) 
values(30003, 347812569, 5, 1);

insert into Mechanic_Availability (storeid, empid, serviceday, serviceweek) 
values(30003, 123456780, 5, 1);

insert into Mechanic_Availability (storeid, empid, serviceday, serviceweek) 
values(30003, 123456708, 5, 1);

insert into Mechanic_Availability (storeid, empid, serviceday, serviceweek) 
values(30003, 123456078, 5, 1);

insert into Mechanic_Availability (storeid, empid, serviceday, serviceweek) 
values(30003, 123450678, 5, 1);

insert into Mechanic_Availability (storeid, empid, serviceday, serviceweek) 
values(30003, 123405678, 5, 1);

insert into Mechanic_Availability (storeid, empid, serviceday, serviceweek) 
values(30001, 132457689, 1, 2);

insert into Mechanic_Availability (storeid, empid, serviceday, serviceweek) 
values(30001, 314275869, 1, 2);

insert into Mechanic_Availability (storeid, empid, serviceday, serviceweek) 
values(30001, 241368579, 1, 2);

insert into Mechanic_Availability (storeid, empid, serviceday, serviceweek) 
values(30001, 132457689, 2, 2);

insert into Mechanic_Availability (storeid, empid, serviceday, serviceweek) 
values(30001, 314275869, 2, 2);

insert into Mechanic_Availability (storeid, empid, serviceday, serviceweek) 
values(30001, 241368579, 2, 2);

insert into Mechanic_Availability (storeid, empid, serviceday, serviceweek) 
values(30001, 132457689, 3, 2);

insert into Mechanic_Availability (storeid, empid, serviceday, serviceweek) 
values(30001, 314275869, 3, 2);

insert into Mechanic_Availability (storeid, empid, serviceday, serviceweek) 
values(30001, 241368579, 3, 2);

insert into Mechanic_Availability (storeid, empid, serviceday, serviceweek) 
values(30001, 132457689, 4, 2);

insert into Mechanic_Availability (storeid, empid, serviceday, serviceweek) 
values(30001, 314275869, 4, 2);

insert into Mechanic_Availability (storeid, empid, serviceday, serviceweek) 
values(30001, 241368579, 4, 2);

insert into Mechanic_Availability (storeid, empid, serviceday, serviceweek) 
values(30001, 132457689, 5, 2);

insert into Mechanic_Availability (storeid, empid, serviceday, serviceweek) 
values(30001, 314275869, 5, 2);

insert into Mechanic_Availability (storeid, empid, serviceday, serviceweek) 
values(30001, 241368579, 5, 2);

insert into Mechanic_Availability (storeid, empid, serviceday, serviceweek) 
values(30001, 132457689, 6, 2);

insert into Mechanic_Availability (storeid, empid, serviceday, serviceweek) 
values(30001, 314275869, 6, 2);

insert into Mechanic_Availability (storeid, empid, serviceday, serviceweek) 
values(30001, 241368579, 6, 2);

insert into Mechanic_Availability (storeid, empid, serviceday, serviceweek) 
values(30002, 423186759, 1, 2);

insert into Mechanic_Availability (storeid, empid, serviceday, serviceweek) 
values(30002, 123789456, 1, 2);

insert into Mechanic_Availability (storeid, empid, serviceday, serviceweek) 
values(30002, 789123456, 1, 2);

insert into Mechanic_Availability (storeid, empid, serviceday, serviceweek) 
values(30002, 125689347, 1, 2);

insert into Mechanic_Availability (storeid, empid, serviceday, serviceweek) 
values(30002, 423186759, 2, 2);

insert into Mechanic_Availability (storeid, empid, serviceday, serviceweek) 
values(30002, 123789456, 2, 2);

insert into Mechanic_Availability (storeid, empid, serviceday, serviceweek) 
values(30002, 789123456, 2, 2);

insert into Mechanic_Availability (storeid, empid, serviceday, serviceweek) 
values(30002, 125689347, 2, 2);

insert into Mechanic_Availability (storeid, empid, serviceday, serviceweek) 
values(30002, 423186759, 3, 2);

insert into Mechanic_Availability (storeid, empid, serviceday, serviceweek) 
values(30002, 123789456, 3, 2);

insert into Mechanic_Availability (storeid, empid, serviceday, serviceweek) 
values(30002, 789123456, 3, 2);

insert into Mechanic_Availability (storeid, empid, serviceday, serviceweek) 
values(30002, 125689347, 3, 2);

insert into Mechanic_Availability (storeid, empid, serviceday, serviceweek) 
values(30002, 423186759, 4, 2);

insert into Mechanic_Availability (storeid, empid, serviceday, serviceweek) 
values(30002, 123789456, 4, 2);

insert into Mechanic_Availability (storeid, empid, serviceday, serviceweek) 
values(30002, 789123456, 4, 2);

insert into Mechanic_Availability (storeid, empid, serviceday, serviceweek) 
values(30002, 125689347, 4, 2);

insert into Mechanic_Availability (storeid, empid, serviceday, serviceweek) 
values(30002, 423186759, 5, 2);

insert into Mechanic_Availability (storeid, empid, serviceday, serviceweek) 
values(30002, 123789456, 5, 2);

insert into Mechanic_Availability (storeid, empid, serviceday, serviceweek) 
values(30002, 789123456, 5, 2);

insert into Mechanic_Availability (storeid, empid, serviceday, serviceweek) 
values(30002, 125689347, 5, 2);

insert into Mechanic_Availability (storeid, empid, serviceday, serviceweek) 
values(30002, 423186759, 6, 2);

insert into Mechanic_Availability (storeid, empid, serviceday, serviceweek) 
values(30002, 123789456, 6, 2);

insert into Mechanic_Availability (storeid, empid, serviceday, serviceweek) 
values(30002, 789123456, 6, 2);

insert into Mechanic_Availability (storeid, empid, serviceday, serviceweek) 
values(30002, 125689347, 6, 2);

insert into Mechanic_Availability (storeid, empid, serviceday, serviceweek) 
values(30003, 347812569, 1, 2);

insert into Mechanic_Availability (storeid, empid, serviceday, serviceweek) 
values(30003, 123456780, 1, 2);

insert into Mechanic_Availability (storeid, empid, serviceday, serviceweek) 
values(30003, 123456708, 1, 2);

insert into Mechanic_Availability (storeid, empid, serviceday, serviceweek) 
values(30003, 123456078, 1, 2);

insert into Mechanic_Availability (storeid, empid, serviceday, serviceweek) 
values(30003, 123450678, 1, 2);

insert into Mechanic_Availability (storeid, empid, serviceday, serviceweek) 
values(30003, 123405678, 1, 2);

insert into Mechanic_Availability (storeid, empid, serviceday, serviceweek) 
values(30003, 347812569, 2, 2);

insert into Mechanic_Availability (storeid, empid, serviceday, serviceweek) 
values(30003, 123456780, 2, 2);

insert into Mechanic_Availability (storeid, empid, serviceday, serviceweek) 
values(30003, 123456708, 2, 2);

insert into Mechanic_Availability (storeid, empid, serviceday, serviceweek) 
values(30003, 123456078, 2, 2);

insert into Mechanic_Availability (storeid, empid, serviceday, serviceweek) 
values(30003, 123450678, 2, 2);

insert into Mechanic_Availability (storeid, empid, serviceday, serviceweek) 
values(30003, 123405678, 2, 2);

insert into Mechanic_Availability (storeid, empid, serviceday, serviceweek) 
values(30003, 347812569, 3, 2);

insert into Mechanic_Availability (storeid, empid, serviceday, serviceweek) 
values(30003, 123456780, 3, 2);

insert into Mechanic_Availability (storeid, empid, serviceday, serviceweek) 
values(30003, 123456708, 3, 2);

insert into Mechanic_Availability (storeid, empid, serviceday, serviceweek) 
values(30003, 123456078, 3, 2);

insert into Mechanic_Availability (storeid, empid, serviceday, serviceweek) 
values(30003, 123450678, 3, 2);

insert into Mechanic_Availability (storeid, empid, serviceday, serviceweek) 
values(30003, 123405678, 3, 2);

insert into Mechanic_Availability (storeid, empid, serviceday, serviceweek) 
values(30003, 347812569, 4, 2);

insert into Mechanic_Availability (storeid, empid, serviceday, serviceweek) 
values(30003, 123456780, 4, 2);

insert into Mechanic_Availability (storeid, empid, serviceday, serviceweek) 
values(30003, 123456708, 4, 2);

insert into Mechanic_Availability (storeid, empid, serviceday, serviceweek) 
values(30003, 123456078, 4, 2);

insert into Mechanic_Availability (storeid, empid, serviceday, serviceweek) 
values(30003, 123450678, 4, 2);

insert into Mechanic_Availability (storeid, empid, serviceday, serviceweek) 
values(30003, 123405678, 4, 2);

insert into Mechanic_Availability (storeid, empid, serviceday, serviceweek) 
values(30003, 347812569, 5, 2);

insert into Mechanic_Availability (storeid, empid, serviceday, serviceweek) 
values(30003, 123456780, 5, 2);

insert into Mechanic_Availability (storeid, empid, serviceday, serviceweek) 
values(30003, 123456708, 5, 2);

insert into Mechanic_Availability (storeid, empid, serviceday, serviceweek) 
values(30003, 123456078, 5, 2);

insert into Mechanic_Availability (storeid, empid, serviceday, serviceweek) 
values(30003, 123450678, 5, 2);

insert into Mechanic_Availability (storeid, empid, serviceday, serviceweek) 
values(30003, 123405678, 5, 2);

