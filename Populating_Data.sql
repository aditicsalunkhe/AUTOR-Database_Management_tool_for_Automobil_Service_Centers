/***************************************************************************************
*    Title:     AUTOR
*    Team:      T-16
*    Author/s:   Sourabh Wattamwar, Neel Shah, Aditi Salunkhe, Purv Patel
*    Date:      November 09, 2022
*
***************************************************************************************/

insert into Service_Centre  
values(30001, '3921 Western Blvd, Raleigh, NC 27606', 3392601234, 1, 123456789, 30, 40, 35)
;

insert into Service_Centre  
values(30002, '4500 Preslyn Dr Suite 103, Raleigh, NC 27616', 8576890280, 1, 987654321, 25, 35, 25)
;

insert into Service_Centre  
values(30003, '9515 Chapel Hill Rd, Morrisville, NC 27560', 7798182200, 0, 987612345, 20, 25, 22)
;

insert into Contract_Basis    
values(123456789, 30001, 'John Doe', '1378 University Woods, Raleigh, NC 27612', 8636368778, 'jdoe@gmail.com', 44, 1);

insert into Contract_Basis    
values(987654321, 30002, 'Rachel Brooks', '2201 Gorman Parkwood, Raleigh, NC 27618', 8972468552, 'rbrooks@ymail.com', 35, 1);

insert into Contract_Basis    
values(987612345, 30003, 'Caleb Smith', '1538 Red Bud Lane, Morrisville, NC 27560', 8547963210, 'csmith@yahoo.com', 25, 1) ;

insert into Hourly_Basis    
values(132457689, 30001, 'James Williams', '1400 Gorman St, Raleigh, NC 27606-2972', 4576312882, 'jwilliams@gmail.com', DATE '2021-7-2')
;

insert into Hourly_Basis    
values(314275869, 30001, 'David Johnson', '686 Stratford Court, Raleigh, NC 27606', 9892321100, 'djohnson@ymail.com', DATE '2021-8-25')
;

insert into Hourly_Basis    
values(241368579, 30001, 'Maria Garcia', '1521 Graduate Lane, Raleigh, NC 27606', 4573459090, 'mgarcia@yahoo.com', DATE '2021-8-26')
;

insert into Hourly_Basis    
values(423186759, 30002, 'Ellie Clark', '3125 Avent Ferry Road, Raleigh, NC 27605', 9892180921, 'eclark@gmail.com', DATE '2021-9-1')
;

insert into Hourly_Basis    
values(123789456, 30002, 'Robert Martinez', '1232 Tartan Circle, Raleigh, NC 27607', 7652304282, 'rmartinez@ymail.com', DATE '2021-10-11')
;

insert into Hourly_Basis    
values(789123456, 30002, 'Charles Rodriguez', '218 Patton Lane, Raleigh, NC 27603', 9092234281, 'crodriguez@yahoo.com', DATE '2021-10-11')
;

insert into Hourly_Basis    
values(125689347, 30002, 'Jose Hernandez', '4747 Dola Mine Road, Raleigh, NC 27609', 7653241714, 'jhernandez@gmail.com', DATE '2021-10-17')
;

insert into Hourly_Basis    
values(347812569, 30003, 'Charlie Brown', '1 Rockford Mountain Lane, Morrisville, NC 27560', 9091237568, 'cbrown@ymail.com', DATE '2021-10-18')
;

insert into Hourly_Basis    
values(123456780, 30003, 'Jeff Gibson', '900 Development Drive, Morrisville, NC 27560', 3390108899, 'jgibson@yahoo.com', DATE '2021-10-20')
;

insert into Hourly_Basis    
values(123456708, 30003, 'Isabelle Wilder', '6601 Koppers Road, Morrisville, NC 27560', 3394561231, 'iwilder@gmail.com', DATE '2021-10-22')
;

insert into Hourly_Basis    
values(123456078, 30003, 'Peter Titus', '2860 Slater Road, Morrisville, NC 27560', 3396723418, 'ptitus@ymail.com', DATE '2021-10-28')
;

insert into Hourly_Basis    
values(123450678, 30003, 'Mark Mendez', '140 Southport Drive, Morrisville, NC 27560', 3395792080, 'mmendez@yahoo.com', DATE '2021-10-31')
;

insert into Hourly_Basis    
values(123405678, 30003, 'Lisa Alberti', '100 Valley Glen Drive, Morrisville, NC 27560', 3391126787, 'lalberti@yahoo.com', DATE '2021-11-1')

insert into Auth     
values('12345678930001', 'abcd1234', 30001, 'Manager')
;

insert into Auth 
values('98765432130002', 'abcd1234', 30002, 'Manager')
;

insert into Auth 
values('98761234530003', 'abcd1234', 30003, 'Manager')
;

insert into Auth 
values('13245768930001', 'abcd1234', 30001, 'Mechanic')
;

insert into Auth 
values('31427586930001', 'abcd1234', 30001, 'Mechanic')
;

insert into Auth 
values('24136857930001', 'abcd1234', 30001, 'Mechanic')
;

insert into Auth 
values('42318675930002', 'abcd1234', 30002, 'Mechanic')
;

insert into Auth 
values('12378945630002', 'abcd1234', 30002, 'Mechanic')
;

insert into Auth 
values('78912345630002', 'abcd1234', 30002, 'Mechanic')
;

insert into Auth 
values('12568934730002', 'abcd1234', 30002, 'Mechanic')
;

insert into Auth 
values('34781256930003', 'abcd1234', 30003, 'Mechanic')
;

insert into Auth 
values('12345678030003', 'abcd1234', 30003, 'Mechanic')
;

insert into Auth 
values('12345670830003', 'abcd1234', 30003, 'Mechanic')
;

insert into Auth 
values('12345607830003', 'abcd1234', 30003, 'Mechanic')
;

insert into Auth 
values('12345067830003', 'abcd1234', 30003, 'Mechanic')
;

insert into Auth 
values('12340567830003', 'abcd1234', 30003, 'Mechanic')
;

insert into Auth 
values('1000130001', 'abcd1234', 30001, 'Customer')
;

insert into Auth 
values('1000230001', 'abcd1234', 30001, 'Customer')
;

insert into Auth 
values('1005330002', 'abcd1234', 30002, 'Customer')
;

insert into Auth 
values('1001030002', 'abcd1234', 30002, 'Customer')
;

insert into Auth 
values('1000130002', 'abcd1234', 30002, 'Customer')
;

insert into Auth 
values('1003530002', 'abcd1234', 30002, 'Customer')
;

insert into Auth 
values('1000230003', 'abcd1234', 30003, 'Customer')
;

insert into Auth 
values('1000330003', 'abcd1234', 30003, 'Customer')
;

insert into Auth 
values('1001130003', 'abcd1234', 30003, 'Customer')
;

insert into Auth 
values('1006230003', 'abcd1234', 30003, 'Customer')
;

insert into Auth 
values('1050130003', 'abcd1234', 30003, 'Customer')
;

insert into Auth 
values('1001030003', 'abcd1234', 30003, 'Customer')
;

INSERT INTO Repair_Service (serviceid, servicename, svcategory, svduration)  
VALUES (101, 'Belt Replacement', 'Engine Services', 1)
;

INSERT INTO Repair_Service (serviceid, servicename, svcategory, svduration)  
VALUES (102, 'Engine Repair', 'Engine Services', 5)
;

INSERT INTO Repair_Service (serviceid, servicename, svcategory, svduration)  
VALUES (103, 'Exhaust Repair', 'Exhaust Services', 4)
;

INSERT INTO Repair_Service (serviceid, servicename, svcategory, svduration)  
VALUES (104, 'Muffler Repair', 'Exhaust Services', 2)
;

INSERT INTO Repair_Service (serviceid, servicename, svcategory, svduration)  
VALUES (105, 'Alternator Repair', 'Electrical Services', 4)
;

INSERT INTO Repair_Service (serviceid, servicename, svcategory, svduration)  
VALUES (106, 'Power Lock Repair', 'Electrical Services', 5)
;

INSERT INTO Repair_Service (serviceid, servicename, svcategory, svduration)  
VALUES (107, 'Axle Repair', 'Transmission Services', 7)
;

INSERT INTO Repair_Service (serviceid, servicename, svcategory, svduration)  
VALUES (108, 'Brake Repair', 'Transmission Services', 3)
;

INSERT INTO Repair_Service (serviceid, servicename, svcategory, svduration)  
VALUES (109, 'Tire Balancing', 'Tire Services', 2)
;

INSERT INTO Repair_Service (serviceid, servicename, svcategory, svduration)  
VALUES (110, 'Wheel Alignment', 'Tire Services', 1)
;

INSERT INTO Repair_Service (serviceid, servicename, svcategory, svduration)  
VALUES (111, 'Compressor Repair', 'Heating and A/C Services', 3)
;

INSERT INTO Repair_Service (serviceid, servicename, svcategory, svduration)  
VALUES (112, 'Evaporator Repair', 'Heating and A/C Services', 4)
;

INSERT INTO Maintenance_Service (serviceid, servicename, schedule, servicetype, scheduletime)  
VALUES (113, 'Oil Changes', 'A', 0, 3)
;

INSERT INTO Maintenance_Service (serviceid, servicename, schedule, servicetype, scheduletime)  
VALUES (113, 'Filter Replacements', 'A', 0, 3)
;

INSERT INTO Maintenance_Service (serviceid, servicename, schedule, servicetype, scheduletime)  
VALUES (114, 'Oil Changes', 'B', 0, 6)
;

INSERT INTO Maintenance_Service (serviceid, servicename, schedule, servicetype, scheduletime)  
VALUES (114, 'Brake Repair', 'B', 1, 6)
;

INSERT INTO Maintenance_Service (serviceid, servicename, schedule, servicetype, scheduletime)  
VALUES (114, 'Check Engine Light Diagnostics', 'B', 0, 6)
;

INSERT INTO Maintenance_Service (serviceid, servicename, schedule, servicetype, scheduletime)  
VALUES (115, 'Oil Changes', 'C', 0, 9)
;

INSERT INTO Maintenance_Service (serviceid, servicename, schedule, servicetype, scheduletime)  
VALUES (115, 'Filter Replacements', 'C', 0, 9)
;

INSERT INTO Maintenance_Service (serviceid, servicename, schedule, servicetype, scheduletime)  
VALUES (115, 'Brake Repair', 'C', 1, 9)
;

INSERT INTO Maintenance_Service (serviceid, servicename, schedule, servicetype, scheduletime)  
VALUES (115, 'Check Engine Light Diagonstics', 'C', 0, 9)
;

INSERT INTO Maintenance_Service (serviceid, servicename, schedule, servicetype, scheduletime)  
VALUES (115, 'Suspension Repair', 'C', 0, 9)
;

INSERT INTO Maintenance_Service (serviceid, servicename, schedule, servicetype, scheduletime)  
VALUES (115, 'Evaporator Repair', 'C', 1, 9)
;

insert into Customer     
values(10001, 30001, 'Peter Parker', 0)
;

insert into Customer     
values(10002, 30001, 'Diana Prince', 0)
;

insert into Customer     
values(10053, 30002, 'Billy Batson', 0)
;

insert into Customer     
values(10010, 30002, 'Bruce Wayne', 0)
;

insert into Customer     
values(10001, 30002, 'Steve Rogers', 0)
;

insert into Customer     
values(10035, 30002, 'Happy Hogan', 0)
;

insert into Customer     
values(10002, 30003, 'Tony Stark', 0)
;

insert into Customer     
values(10003, 30003, 'Natasha Romanoff', 0)
;

insert into Customer     
values(10011, 30003, 'Harvey Bullock', 0)
;

insert into Customer     
values(10062, 30003, 'Sam Wilson', 0)
;

insert into Customer     
values(10501, 30003, 'Wanda Maximoff', 0)
;

insert into Customer     
values(10010, 30003, 'Virginia Potts', 0)
;

insert into Vehicle  
values('4Y1BL658', 30001, 10001, 'Toyota','B', 2007, 53000)
;

insert into Vehicle  
values('7A1ST264', 30001, 10002, 'Honda','A', 1999, 117000)
;

insert into Vehicle  
values('5TR3K914', 30002, 10053, 'Nissan','C', 2015, 111000)
;

insert into Vehicle  
values('15DC9A87', 30002, 10010, 'Toyota','A', 2020, 21000)
;

insert into Vehicle  
values('18S5R2D8', 30002, 10001, 'Nissan','C', 2019, 195500)
;

insert into Vehicle  
values('9R2UHP54', 30002, 10035, 'Honda','B', 2013, 67900)
;

insert into Vehicle  
values('88TSM888', 30003, 10002, 'Honda','A', 2000, 10000)
;

insert into Vehicle  
values('71HK2D89', 30003, 10003, 'Toyota','B', 2004, 195550)
;

insert into Vehicle  
values('34KLE19D', 30003, 10011, 'Toyota','C', 2010, 123800)
;

insert into Vehicle  
values('29T56WC3', 30003, 10062, 'Nissan','A', 2011, 51300)
;

insert into Vehicle  
values('P39VN198', 30003, 10501, 'Nissan','B', 2013, 39500)
;

insert into Vehicle  
values('39YVS415', 30003, 10010, 'Honda','A', 2021, 49900)
;
insert into Service(serviceid, servicename)
values (101, 'Belt Replacement');

insert into Service(serviceid, servicename)
values (102, 'Engine Repair');

insert into Service(serviceid, servicename)
values (103, 'Exhaust Repair');

insert into Service(serviceid, servicename)
values (104, 'Muffler Repair');

insert into Service(serviceid, servicename)
values (105, 'Alternator Repair');

insert into Service(serviceid, servicename)
values (106, 'Power Lock Repair');

insert into Service(serviceid, servicename)
values (107, 'Axle Repair');

insert into Service(serviceid, servicename)
values (108, 'Brake Repair');

insert into Service(serviceid, servicename)
values (109, 'Tire Balancing');

insert into Service(serviceid, servicename)
values (110, 'Wheel Alignment');

insert into Service(serviceid, servicename)
values (111, 'Compressor Repair');

insert into Service(serviceid, servicename)
values (112, 'Evaporator Repair');

insert into Service(serviceid, servicename)
values (113, 'A');

insert into Service(serviceid, servicename)
values (114, 'B');

insert into Service(serviceid, servicename)
values (115, 'C');
;

insert into Model_Name(modelname)
values ('Honda');

insert into Model_Name(modelname)
values ('Nissan');

insert into Model_Name(modelname)
values ('Toyota');
;

INSERT INTO Prices(storeid, serviceid, modelname, price) 
VALUES (30001, 101, 'Honda', 140)
;

INSERT INTO Prices(storeid, serviceid, modelname, price) 
VALUES (30001, 101, 'Nissan', 175)
;

INSERT INTO Prices(storeid, serviceid, modelname, price) 
VALUES (30001, 101, 'Toyota', 160)
;

INSERT INTO Prices(storeid, serviceid, modelname, price) 
VALUES (30001, 102, 'Honda', 400)
;

INSERT INTO Prices(storeid, serviceid, modelname, price) 
VALUES (30001, 102, 'Nissan', 500)
;

INSERT INTO Prices(storeid, serviceid, modelname, price) 
VALUES (30001, 102, 'Toyota', 450)
;

INSERT INTO Prices(storeid, serviceid, modelname, price) 
VALUES (30001, 103, 'Honda', 590)
;

INSERT INTO Prices(storeid, serviceid, modelname, price) 
VALUES (30001, 103, 'Nissan', 700)
;

INSERT INTO Prices(storeid, serviceid, modelname, price) 
VALUES (30001, 103, 'Toyota', 680)
;

INSERT INTO Prices(storeid, serviceid, modelname, price) 
VALUES (30001, 104, 'Honda', 140)
;

INSERT INTO Prices(storeid, serviceid, modelname, price) 
VALUES (30001, 104, 'Nissan', 175)
;

INSERT INTO Prices(storeid, serviceid, modelname, price) 
VALUES (30001, 104, 'Toyota', 160)
;

INSERT INTO Prices(storeid, serviceid, modelname, price) 
VALUES (30001, 105, 'Honda', 400)
;

INSERT INTO Prices(storeid, serviceid, modelname, price) 
VALUES (30001, 105, 'Nissan', 500)
;

INSERT INTO Prices(storeid, serviceid, modelname, price) 
VALUES (30001, 105, 'Toyota', 450)
;

INSERT INTO Prices(storeid, serviceid, modelname, price) 
VALUES (30001, 106, 'Honda', 400)
;

INSERT INTO Prices(storeid, serviceid, modelname, price) 
VALUES (30001, 106, 'Nissan', 500)
;

INSERT INTO Prices(storeid, serviceid, modelname, price) 
VALUES (30001, 106, 'Toyota', 450)
;

INSERT INTO Prices(storeid, serviceid, modelname, price) 
VALUES (30001, 107, 'Honda', 1000)
;

INSERT INTO Prices(storeid, serviceid, modelname, price) 
VALUES (30001, 107, 'Nissan', 1200)
;

INSERT INTO Prices(storeid, serviceid, modelname, price) 
VALUES (30001, 107, 'Toyota', 1100)
;

INSERT INTO Prices(storeid, serviceid, modelname, price) 
VALUES (30001, 108, 'Honda', 400)
;

INSERT INTO Prices(storeid, serviceid, modelname, price) 
VALUES (30001, 108, 'Nissan', 500)
;

INSERT INTO Prices(storeid, serviceid, modelname, price) 
VALUES (30001, 108, 'Toyota', 450)
;

INSERT INTO Prices(storeid, serviceid, modelname, price) 
VALUES (30001, 109, 'Honda', 50)
;

INSERT INTO Prices(storeid, serviceid, modelname, price) 
VALUES (30001, 109, 'Nissan', 70)
;

INSERT INTO Prices(storeid, serviceid, modelname, price) 
VALUES (30001, 109, 'Toyota', 60)
;

INSERT INTO Prices(storeid, serviceid, modelname, price) 
VALUES (30001, 110, 'Honda', 140)
;

INSERT INTO Prices(storeid, serviceid, modelname, price) 
VALUES (30001, 110, 'Nissan', 175)
;

INSERT INTO Prices(storeid, serviceid, modelname, price) 
VALUES (30001, 110, 'Toyota', 160)
;

INSERT INTO Prices(storeid, serviceid, modelname, price) 
VALUES (30001, 111, 'Honda', 590)
;

INSERT INTO Prices(storeid, serviceid, modelname, price) 
VALUES (30001, 111, 'Nissan', 700)
;

INSERT INTO Prices(storeid, serviceid, modelname, price) 
VALUES (30001, 111, 'Toyota', 680)
;

INSERT INTO Prices(storeid, serviceid, modelname, price) 
VALUES (30001, 112, 'Honda', 400)
;

INSERT INTO Prices(storeid, serviceid, modelname, price) 
VALUES (30001, 112, 'Nissan', 500)
;

INSERT INTO Prices(storeid, serviceid, modelname, price) 
VALUES (30001, 112, 'Toyota', 450)
;

INSERT INTO Prices(storeid, serviceid, modelname, price) 
VALUES (30001, 113, 'Honda', 120)
;

INSERT INTO Prices(storeid, serviceid, modelname, price) 
VALUES (30001, 113, 'Nissan', 190)
;

INSERT INTO Prices(storeid, serviceid, modelname, price) 
VALUES (30001, 113, 'Toyota', 200)
;

INSERT INTO Prices(storeid, serviceid, modelname, price) 
VALUES (30001, 114, 'Honda', 195)
;

INSERT INTO Prices(storeid, serviceid, modelname, price) 
VALUES (30001, 114, 'Nissan', 210)
;

INSERT INTO Prices(storeid, serviceid, modelname, price) 
VALUES (30001, 114, 'Toyota', 215)
;

INSERT INTO Prices(storeid, serviceid, modelname, price) 
VALUES (30001, 115, 'Honda', 300)
;

INSERT INTO Prices(storeid, serviceid, modelname, price) 
VALUES (30001, 115, 'Nissan', 310)
;

INSERT INTO Prices(storeid, serviceid, modelname, price) 
VALUES (30001, 115, 'Toyota', 305)
;

INSERT INTO Prices(storeid, serviceid, modelname, price) 
VALUES (30002, 101, 'Honda', 160)
;

INSERT INTO Prices(storeid, serviceid, modelname, price) 
VALUES (30002, 101, 'Nissan', 195)
;

INSERT INTO Prices(storeid, serviceid, modelname, price) 
VALUES (30002, 101, 'Toyota', 180)
;

INSERT INTO Prices(storeid, serviceid, modelname, price) 
VALUES (30002, 102, 'Honda', 420)
;

INSERT INTO Prices(storeid, serviceid, modelname, price) 
VALUES (30002, 102, 'Nissan', 520)
;

INSERT INTO Prices(storeid, serviceid, modelname, price) 
VALUES (30002, 102, 'Toyota', 470)
;

INSERT INTO Prices(storeid, serviceid, modelname, price) 
VALUES (30002, 103, 'Honda', 610)
;

INSERT INTO Prices(storeid, serviceid, modelname, price) 
VALUES (30002, 103, 'Nissan', 720)
;

INSERT INTO Prices(storeid, serviceid, modelname, price) 
VALUES (30002, 103, 'Toyota', 700)
;

INSERT INTO Prices(storeid, serviceid, modelname, price) 
VALUES (30002, 104, 'Honda', 160)
;

INSERT INTO Prices(storeid, serviceid, modelname, price) 
VALUES (30002, 104, 'Nissan', 195)
;

INSERT INTO Prices(storeid, serviceid, modelname, price) 
VALUES (30002, 104, 'Toyota', 180)
;

INSERT INTO Prices(storeid, serviceid, modelname, price) 
VALUES (30002, 105, 'Honda', 420)
;

INSERT INTO Prices(storeid, serviceid, modelname, price) 
VALUES (30002, 105, 'Nissan', 520)
;

INSERT INTO Prices(storeid, serviceid, modelname, price) 
VALUES (30002, 105, 'Toyota', 470)
;

INSERT INTO Prices(storeid, serviceid, modelname, price) 
VALUES (30002, 106, 'Honda', 420)
;

INSERT INTO Prices(storeid, serviceid, modelname, price) 
VALUES (30002, 106, 'Nissan', 520)
;

INSERT INTO Prices(storeid, serviceid, modelname, price) 
VALUES (30002, 106, 'Toyota', 470)
;

INSERT INTO Prices(storeid, serviceid, modelname, price) 
VALUES (30002, 107, 'Honda', 1020)
;

INSERT INTO Prices(storeid, serviceid, modelname, price) 
VALUES (30002, 107, 'Nissan', 1220)
;

INSERT INTO Prices(storeid, serviceid, modelname, price) 
VALUES (30002, 107, 'Toyota', 1120)
;

INSERT INTO Prices(storeid, serviceid, modelname, price) 
VALUES (30002, 108, 'Honda', 420)
;

INSERT INTO Prices(storeid, serviceid, modelname, price) 
VALUES (30002, 108, 'Nissan', 520)
;

INSERT INTO Prices(storeid, serviceid, modelname, price) 
VALUES (30002, 108, 'Toyota', 470)
;

INSERT INTO Prices(storeid, serviceid, modelname, price) 
VALUES (30002, 109, 'Honda', 70)
;

INSERT INTO Prices(storeid, serviceid, modelname, price) 
VALUES (30002, 109, 'Nissan', 90)
;

INSERT INTO Prices(storeid, serviceid, modelname, price) 
VALUES (30002, 109, 'Toyota', 80)
;

INSERT INTO Prices(storeid, serviceid, modelname, price) 
VALUES (30002, 110, 'Honda', 160)
;

INSERT INTO Prices(storeid, serviceid, modelname, price) 
VALUES (30002, 110, 'Nissan', 195)
;

INSERT INTO Prices(storeid, serviceid, modelname, price) 
VALUES (30002, 110, 'Toyota', 180)
;

INSERT INTO Prices(storeid, serviceid, modelname, price) 
VALUES (30002, 111, 'Honda', 610)
;

INSERT INTO Prices(storeid, serviceid, modelname, price) 
VALUES (30002, 111, 'Nissan', 720)
;

INSERT INTO Prices(storeid, serviceid, modelname, price) 
VALUES (30002, 111, 'Toyota', 700)
;

INSERT INTO Prices(storeid, serviceid, modelname, price) 
VALUES (30002, 112, 'Honda', 420)
;

INSERT INTO Prices(storeid, serviceid, modelname, price) 
VALUES (30002, 112, 'Nissan', 520)
;

INSERT INTO Prices(storeid, serviceid, modelname, price) 
VALUES (30002, 112, 'Toyota', 470)
;

INSERT INTO Prices(storeid, serviceid, modelname, price) 
VALUES (30002, 113, 'Honda', 125)
;

INSERT INTO Prices(storeid, serviceid, modelname, price) 
VALUES (30002, 113, 'Nissan', 195)
;

INSERT INTO Prices(storeid, serviceid, modelname, price) 
VALUES (30002, 113, 'Toyota', 205)
;

INSERT INTO Prices(storeid, serviceid, modelname, price) 
VALUES (30002, 114, 'Honda', 200)
;

INSERT INTO Prices(storeid, serviceid, modelname, price) 
VALUES (30002, 114, 'Nissan', 215)
;

INSERT INTO Prices(storeid, serviceid, modelname, price) 
VALUES (30002, 114, 'Toyota', 220)
;

INSERT INTO Prices(storeid, serviceid, modelname, price) 
VALUES (30002, 115, 'Honda', 305)
;

INSERT INTO Prices(storeid, serviceid, modelname, price) 
VALUES (30002, 115, 'Nissan', 315)
;

INSERT INTO Prices(storeid, serviceid, modelname, price) 
VALUES (30002, 115, 'Toyota', 310)
;

INSERT INTO Prices(storeid, serviceid, modelname, price) 
VALUES (30003, 101, 'Honda', 175)
;

INSERT INTO Prices(storeid, serviceid, modelname, price) 
VALUES (30003, 101, 'Nissan', 210)
;

INSERT INTO Prices(storeid, serviceid, modelname, price) 
VALUES (30003, 101, 'Toyota', 195)
;

INSERT INTO Prices(storeid, serviceid, modelname, price) 
VALUES (30003, 102, 'Honda', 435)
;

INSERT INTO Prices(storeid, serviceid, modelname, price) 
VALUES (30003, 102, 'Nissan', 535)
;

INSERT INTO Prices(storeid, serviceid, modelname, price) 
VALUES (30003, 102, 'Toyota', 485)
;

INSERT INTO Prices(storeid, serviceid, modelname, price) 
VALUES (30003, 103, 'Honda', 625)
;

INSERT INTO Prices(storeid, serviceid, modelname, price) 
VALUES (30003, 103, 'Nissan', 735)
;

INSERT INTO Prices(storeid, serviceid, modelname, price) 
VALUES (30003, 103, 'Toyota', 715)
;

INSERT INTO Prices(storeid, serviceid, modelname, price) 
VALUES (30003, 104, 'Honda', 175)
;

INSERT INTO Prices(storeid, serviceid, modelname, price) 
VALUES (30003, 104, 'Nissan', 210)
;

INSERT INTO Prices(storeid, serviceid, modelname, price) 
VALUES (30003, 104, 'Toyota', 195)
;

INSERT INTO Prices(storeid, serviceid, modelname, price) 
VALUES (30003, 105, 'Honda', 435)
;

INSERT INTO Prices(storeid, serviceid, modelname, price) 
VALUES (30003, 105, 'Nissan', 535)
;

INSERT INTO Prices(storeid, serviceid, modelname, price) 
VALUES (30003, 105, 'Toyota', 485)
;

INSERT INTO Prices(storeid, serviceid, modelname, price) 
VALUES (30003, 106, 'Honda', 435)
;

INSERT INTO Prices(storeid, serviceid, modelname, price) 
VALUES (30003, 106, 'Nissan', 535)
;

INSERT INTO Prices(storeid, serviceid, modelname, price) 
VALUES (30003, 106, 'Toyota', 485)
;

INSERT INTO Prices(storeid, serviceid, modelname, price) 
VALUES (30003, 107, 'Honda', 1035)
;

INSERT INTO Prices(storeid, serviceid, modelname, price) 
VALUES (30003, 107, 'Nissan', 1235)
;

INSERT INTO Prices(storeid, serviceid, modelname, price) 
VALUES (30003, 107, 'Toyota', 1135)
;

INSERT INTO Prices(storeid, serviceid, modelname, price) 
VALUES (30003, 108, 'Honda', 435)
;

INSERT INTO Prices(storeid, serviceid, modelname, price) 
VALUES (30003, 108, 'Nissan', 535)
;

INSERT INTO Prices(storeid, serviceid, modelname, price) 
VALUES (30003, 108, 'Toyota', 485)
;

INSERT INTO Prices(storeid, serviceid, modelname, price) 
VALUES (30003, 109, 'Honda', 85)
;

INSERT INTO Prices(storeid, serviceid, modelname, price) 
VALUES (30003, 109, 'Nissan', 105)
;

INSERT INTO Prices(storeid, serviceid, modelname, price) 
VALUES (30003, 109, 'Toyota', 95)
;

INSERT INTO Prices(storeid, serviceid, modelname, price) 
VALUES (30003, 110, 'Honda', 175)
;

INSERT INTO Prices(storeid, serviceid, modelname, price) 
VALUES (30003, 110, 'Nissan', 210)
;

INSERT INTO Prices(storeid, serviceid, modelname, price) 
VALUES (30003, 110, 'Toyota', 195)
;

INSERT INTO Prices(storeid, serviceid, modelname, price) 
VALUES (30003, 111, 'Honda', 625)
;

INSERT INTO Prices(storeid, serviceid, modelname, price) 
VALUES (30003, 111, 'Nissan', 735)
;

INSERT INTO Prices(storeid, serviceid, modelname, price) 
VALUES (30003, 111, 'Toyota', 715)
;

INSERT INTO Prices(storeid, serviceid, modelname, price) 
VALUES (30003, 112, 'Honda', 435)
;

INSERT INTO Prices(storeid, serviceid, modelname, price) 
VALUES (30003, 112, 'Nissan', 535)
;

INSERT INTO Prices(storeid, serviceid, modelname, price) 
VALUES (30003, 112, 'Toyota', 485)
;

INSERT INTO Prices(storeid, serviceid, modelname, price) 
VALUES (30003, 113, 'Honda', 140)
;

INSERT INTO Prices(storeid, serviceid, modelname, price) 
VALUES (30003, 113, 'Nissan', 180)
;

INSERT INTO Prices(storeid, serviceid, modelname, price) 
VALUES (30003, 113, 'Toyota', 195)
;

INSERT INTO Prices(storeid, serviceid, modelname, price) 
VALUES (30003, 114, 'Honda', 210)
;

INSERT INTO Prices(storeid, serviceid, modelname, price) 
VALUES (30003, 114, 'Nissan', 220)
;

INSERT INTO Prices(storeid, serviceid, modelname, price) 
VALUES (30003, 114, 'Toyota', 215)
;

INSERT INTO Prices(storeid, serviceid, modelname, price) 
VALUES (30003, 115, 'Honda', 310)
;

INSERT INTO Prices(storeid, serviceid, modelname, price) 
VALUES (30003, 115, 'Nissan', 305)
;

INSERT INTO Prices(storeid, serviceid, modelname, price) 
VALUES (30003, 115, 'Toyota', 310)
;

insert into Availability_Time(serviceday, serviceweek, starttime, endtime) 
values (1, 1, 0, 1);

insert into Availability_Time(serviceday, serviceweek, starttime, endtime) 
values (2, 1, 0, 1);

insert into Availability_Time(serviceday, serviceweek, starttime, endtime) 
values (3, 1, 0, 1);

insert into Availability_Time(serviceday, serviceweek, starttime, endtime) 
values (4, 1, 0, 1);

insert into Availability_Time(serviceday, serviceweek, starttime, endtime) 
values (5, 1, 0, 1);

insert into Availability_Time(serviceday, serviceweek, starttime, endtime) 
values (1, 2, 0, 1);

insert into Availability_Time(serviceday, serviceweek, starttime, endtime) 
values (2, 2, 0, 1);

insert into Availability_Time(serviceday, serviceweek, starttime, endtime) 
values (3, 2, 0, 1);

insert into Availability_Time(serviceday, serviceweek, starttime, endtime) 
values (4, 2, 0, 1);

insert into Availability_Time(serviceday, serviceweek, starttime, endtime) 
values (5, 2, 0, 1);
;

insert into Mechanic_Availability (storeid, empid, serviceday, serviceweek) 
values(30001, 132457689, 1, 1)
;

insert into Mechanic_Availability (storeid, empid, serviceday, serviceweek) 
values(30001, 314275869, 1, 1)
;

insert into Mechanic_Availability (storeid, empid, serviceday, serviceweek) 
values(30001, 241368579, 1, 1)
;

insert into Mechanic_Availability (storeid, empid, serviceday, serviceweek) 
values(30001, 132457689, 2, 1)
;

insert into Mechanic_Availability (storeid, empid, serviceday, serviceweek) 
values(30001, 314275869, 2, 1)
;

insert into Mechanic_Availability (storeid, empid, serviceday, serviceweek) 
values(30001, 241368579, 2, 1)
;

insert into Mechanic_Availability (storeid, empid, serviceday, serviceweek) 
values(30001, 132457689, 3, 1)
;

insert into Mechanic_Availability (storeid, empid, serviceday, serviceweek) 
values(30001, 314275869, 3, 1)
;

insert into Mechanic_Availability (storeid, empid, serviceday, serviceweek) 
values(30001, 241368579, 3, 1)
;

insert into Mechanic_Availability (storeid, empid, serviceday, serviceweek) 
values(30001, 132457689, 4, 1)
;

insert into Mechanic_Availability (storeid, empid, serviceday, serviceweek) 
values(30001, 314275869, 4, 1)
;

insert into Mechanic_Availability (storeid, empid, serviceday, serviceweek) 
values(30001, 241368579, 4, 1)
;

insert into Mechanic_Availability (storeid, empid, serviceday, serviceweek) 
values(30001, 132457689, 5, 1)
;

insert into Mechanic_Availability (storeid, empid, serviceday, serviceweek) 
values(30001, 314275869, 5, 1)
;

insert into Mechanic_Availability (storeid, empid, serviceday, serviceweek) 
values(30001, 241368579, 5, 1)
;

insert into Mechanic_Availability (storeid, empid, serviceday, serviceweek) 
values(30001, 132457689, 6, 1)
;

insert into Mechanic_Availability (storeid, empid, serviceday, serviceweek) 
values(30001, 314275869, 6, 1)
;

insert into Mechanic_Availability (storeid, empid, serviceday, serviceweek) 
values(30001, 241368579, 6, 1)
;

insert into Mechanic_Availability (storeid, empid, serviceday, serviceweek) 
values(30002, 423186759, 1, 1)
;

insert into Mechanic_Availability (storeid, empid, serviceday, serviceweek) 
values(30002, 123789456, 1, 1)
;

insert into Mechanic_Availability (storeid, empid, serviceday, serviceweek) 
values(30002, 789123456, 1, 1)
;

insert into Mechanic_Availability (storeid, empid, serviceday, serviceweek) 
values(30002, 125689347, 1, 1)
;

insert into Mechanic_Availability (storeid, empid, serviceday, serviceweek) 
values(30002, 423186759, 2, 1)
;

insert into Mechanic_Availability (storeid, empid, serviceday, serviceweek) 
values(30002, 123789456, 2, 1)
;

insert into Mechanic_Availability (storeid, empid, serviceday, serviceweek) 
values(30002, 789123456, 2, 1)
;

insert into Mechanic_Availability (storeid, empid, serviceday, serviceweek) 
values(30002, 125689347, 2, 1)
;

insert into Mechanic_Availability (storeid, empid, serviceday, serviceweek) 
values(30002, 423186759, 3, 1)
;

insert into Mechanic_Availability (storeid, empid, serviceday, serviceweek) 
values(30002, 123789456, 3, 1)
;

insert into Mechanic_Availability (storeid, empid, serviceday, serviceweek) 
values(30002, 789123456, 3, 1)
;

insert into Mechanic_Availability (storeid, empid, serviceday, serviceweek) 
values(30002, 125689347, 3, 1)
;

insert into Mechanic_Availability (storeid, empid, serviceday, serviceweek) 
values(30002, 423186759, 4, 1)
;

insert into Mechanic_Availability (storeid, empid, serviceday, serviceweek) 
values(30002, 123789456, 4, 1)
;

insert into Mechanic_Availability (storeid, empid, serviceday, serviceweek) 
values(30002, 789123456, 4, 1)
;

insert into Mechanic_Availability (storeid, empid, serviceday, serviceweek) 
values(30002, 125689347, 4, 1)
;

insert into Mechanic_Availability (storeid, empid, serviceday, serviceweek) 
values(30002, 423186759, 5, 1)
;

insert into Mechanic_Availability (storeid, empid, serviceday, serviceweek) 
values(30002, 123789456, 5, 1)
;

insert into Mechanic_Availability (storeid, empid, serviceday, serviceweek) 
values(30002, 789123456, 5, 1)
;

insert into Mechanic_Availability (storeid, empid, serviceday, serviceweek) 
values(30002, 125689347, 5, 1)
;

insert into Mechanic_Availability (storeid, empid, serviceday, serviceweek) 
values(30002, 423186759, 6, 1)
;

insert into Mechanic_Availability (storeid, empid, serviceday, serviceweek) 
values(30002, 123789456, 6, 1)
;

insert into Mechanic_Availability (storeid, empid, serviceday, serviceweek) 
values(30002, 789123456, 6, 1)
;

insert into Mechanic_Availability (storeid, empid, serviceday, serviceweek) 
values(30002, 125689347, 6, 1)
;

insert into Mechanic_Availability (storeid, empid, serviceday, serviceweek) 
values(30003, 347812569, 1, 1)
;

insert into Mechanic_Availability (storeid, empid, serviceday, serviceweek) 
values(30003, 123456780, 1, 1)
;

insert into Mechanic_Availability (storeid, empid, serviceday, serviceweek) 
values(30003, 123456708, 1, 1)
;

insert into Mechanic_Availability (storeid, empid, serviceday, serviceweek) 
values(30003, 123456078, 1, 1)
;

insert into Mechanic_Availability (storeid, empid, serviceday, serviceweek) 
values(30003, 123450678, 1, 1)
;

insert into Mechanic_Availability (storeid, empid, serviceday, serviceweek) 
values(30003, 123405678, 1, 1)
;

insert into Mechanic_Availability (storeid, empid, serviceday, serviceweek) 
values(30003, 347812569, 2, 1)
;

insert into Mechanic_Availability (storeid, empid, serviceday, serviceweek) 
values(30003, 123456780, 2, 1)
;

insert into Mechanic_Availability (storeid, empid, serviceday, serviceweek) 
values(30003, 123456708, 2, 1)
;

insert into Mechanic_Availability (storeid, empid, serviceday, serviceweek) 
values(30003, 123456078, 2, 1)
;

insert into Mechanic_Availability (storeid, empid, serviceday, serviceweek) 
values(30003, 123450678, 2, 1)
;

insert into Mechanic_Availability (storeid, empid, serviceday, serviceweek) 
values(30003, 123405678, 2, 1)
;

insert into Mechanic_Availability (storeid, empid, serviceday, serviceweek) 
values(30003, 347812569, 3, 1)
;

insert into Mechanic_Availability (storeid, empid, serviceday, serviceweek) 
values(30003, 123456780, 3, 1)
;

insert into Mechanic_Availability (storeid, empid, serviceday, serviceweek) 
values(30003, 123456708, 3, 1)
;

insert into Mechanic_Availability (storeid, empid, serviceday, serviceweek) 
values(30003, 123456078, 3, 1)
;

insert into Mechanic_Availability (storeid, empid, serviceday, serviceweek) 
values(30003, 123450678, 3, 1)
;

insert into Mechanic_Availability (storeid, empid, serviceday, serviceweek) 
values(30003, 123405678, 3, 1)
;

insert into Mechanic_Availability (storeid, empid, serviceday, serviceweek) 
values(30003, 347812569, 4, 1)
;

insert into Mechanic_Availability (storeid, empid, serviceday, serviceweek) 
values(30003, 123456780, 4, 1)
;

insert into Mechanic_Availability (storeid, empid, serviceday, serviceweek) 
values(30003, 123456708, 4, 1)
;

insert into Mechanic_Availability (storeid, empid, serviceday, serviceweek) 
values(30003, 123456078, 4, 1)
;

insert into Mechanic_Availability (storeid, empid, serviceday, serviceweek) 
values(30003, 123450678, 4, 1)
;

insert into Mechanic_Availability (storeid, empid, serviceday, serviceweek) 
values(30003, 123405678, 4, 1)
;

insert into Mechanic_Availability (storeid, empid, serviceday, serviceweek) 
values(30003, 347812569, 5, 1)
;

insert into Mechanic_Availability (storeid, empid, serviceday, serviceweek) 
values(30003, 123456780, 5, 1)
;

insert into Mechanic_Availability (storeid, empid, serviceday, serviceweek) 
values(30003, 123456708, 5, 1)
;

insert into Mechanic_Availability (storeid, empid, serviceday, serviceweek) 
values(30003, 123456078, 5, 1)
;

insert into Mechanic_Availability (storeid, empid, serviceday, serviceweek) 
values(30003, 123450678, 5, 1)
;

insert into Mechanic_Availability (storeid, empid, serviceday, serviceweek) 
values(30003, 123405678, 5, 1)
;

insert into Mechanic_Availability (storeid, empid, serviceday, serviceweek) 
values(30001, 132457689, 1, 2)
;

insert into Mechanic_Availability (storeid, empid, serviceday, serviceweek) 
values(30001, 314275869, 1, 2)
;

insert into Mechanic_Availability (storeid, empid, serviceday, serviceweek) 
values(30001, 241368579, 1, 2)
;

insert into Mechanic_Availability (storeid, empid, serviceday, serviceweek) 
values(30001, 132457689, 2, 2)
;

insert into Mechanic_Availability (storeid, empid, serviceday, serviceweek) 
values(30001, 314275869, 2, 2)
;

insert into Mechanic_Availability (storeid, empid, serviceday, serviceweek) 
values(30001, 241368579, 2, 2)
;

insert into Mechanic_Availability (storeid, empid, serviceday, serviceweek) 
values(30001, 132457689, 3, 2)
;

insert into Mechanic_Availability (storeid, empid, serviceday, serviceweek) 
values(30001, 314275869, 3, 2)
;

insert into Mechanic_Availability (storeid, empid, serviceday, serviceweek) 
values(30001, 241368579, 3, 2)
;

insert into Mechanic_Availability (storeid, empid, serviceday, serviceweek) 
values(30001, 132457689, 4, 2)
;

insert into Mechanic_Availability (storeid, empid, serviceday, serviceweek) 
values(30001, 314275869, 4, 2)
;

insert into Mechanic_Availability (storeid, empid, serviceday, serviceweek) 
values(30001, 241368579, 4, 2)
;

insert into Mechanic_Availability (storeid, empid, serviceday, serviceweek) 
values(30001, 132457689, 5, 2)
;

insert into Mechanic_Availability (storeid, empid, serviceday, serviceweek) 
values(30001, 314275869, 5, 2)
;

insert into Mechanic_Availability (storeid, empid, serviceday, serviceweek) 
values(30001, 241368579, 5, 2)
;

insert into Mechanic_Availability (storeid, empid, serviceday, serviceweek) 
values(30001, 132457689, 6, 2)
;

insert into Mechanic_Availability (storeid, empid, serviceday, serviceweek) 
values(30001, 314275869, 6, 2)
;

insert into Mechanic_Availability (storeid, empid, serviceday, serviceweek) 
values(30001, 241368579, 6, 2)
;

insert into Mechanic_Availability (storeid, empid, serviceday, serviceweek) 
values(30002, 423186759, 1, 2)
;

insert into Mechanic_Availability (storeid, empid, serviceday, serviceweek) 
values(30002, 123789456, 1, 2)
;

insert into Mechanic_Availability (storeid, empid, serviceday, serviceweek) 
values(30002, 789123456, 1, 2)
;

insert into Mechanic_Availability (storeid, empid, serviceday, serviceweek) 
values(30002, 125689347, 1, 2)
;

insert into Mechanic_Availability (storeid, empid, serviceday, serviceweek) 
values(30002, 423186759, 2, 2)
;

insert into Mechanic_Availability (storeid, empid, serviceday, serviceweek) 
values(30002, 123789456, 2, 2)
;

insert into Mechanic_Availability (storeid, empid, serviceday, serviceweek) 
values(30002, 789123456, 2, 2)
;

insert into Mechanic_Availability (storeid, empid, serviceday, serviceweek) 
values(30002, 125689347, 2, 2)
;

insert into Mechanic_Availability (storeid, empid, serviceday, serviceweek) 
values(30002, 423186759, 3, 2)
;

insert into Mechanic_Availability (storeid, empid, serviceday, serviceweek) 
values(30002, 123789456, 3, 2)
;

insert into Mechanic_Availability (storeid, empid, serviceday, serviceweek) 
values(30002, 789123456, 3, 2)
;

insert into Mechanic_Availability (storeid, empid, serviceday, serviceweek) 
values(30002, 125689347, 3, 2)
;

insert into Mechanic_Availability (storeid, empid, serviceday, serviceweek) 
values(30002, 423186759, 4, 2)
;

insert into Mechanic_Availability (storeid, empid, serviceday, serviceweek) 
values(30002, 123789456, 4, 2)
;

insert into Mechanic_Availability (storeid, empid, serviceday, serviceweek) 
values(30002, 789123456, 4, 2)
;

insert into Mechanic_Availability (storeid, empid, serviceday, serviceweek) 
values(30002, 125689347, 4, 2)
;

insert into Mechanic_Availability (storeid, empid, serviceday, serviceweek) 
values(30002, 423186759, 5, 2)
;

insert into Mechanic_Availability (storeid, empid, serviceday, serviceweek) 
values(30002, 123789456, 5, 2)
;

insert into Mechanic_Availability (storeid, empid, serviceday, serviceweek) 
values(30002, 789123456, 5, 2)
;

insert into Mechanic_Availability (storeid, empid, serviceday, serviceweek) 
values(30002, 125689347, 5, 2)
;

insert into Mechanic_Availability (storeid, empid, serviceday, serviceweek) 
values(30002, 423186759, 6, 2)
;

insert into Mechanic_Availability (storeid, empid, serviceday, serviceweek) 
values(30002, 123789456, 6, 2)
;

insert into Mechanic_Availability (storeid, empid, serviceday, serviceweek) 
values(30002, 789123456, 6, 2)
;

insert into Mechanic_Availability (storeid, empid, serviceday, serviceweek) 
values(30002, 125689347, 6, 2)
;

insert into Mechanic_Availability (storeid, empid, serviceday, serviceweek) 
values(30003, 347812569, 1, 2)
;

insert into Mechanic_Availability (storeid, empid, serviceday, serviceweek) 
values(30003, 123456780, 1, 2)
;

insert into Mechanic_Availability (storeid, empid, serviceday, serviceweek) 
values(30003, 123456708, 1, 2)
;

insert into Mechanic_Availability (storeid, empid, serviceday, serviceweek) 
values(30003, 123456078, 1, 2)
;

insert into Mechanic_Availability (storeid, empid, serviceday, serviceweek) 
values(30003, 123450678, 1, 2)
;

insert into Mechanic_Availability (storeid, empid, serviceday, serviceweek) 
values(30003, 123405678, 1, 2)
;

insert into Mechanic_Availability (storeid, empid, serviceday, serviceweek) 
values(30003, 347812569, 2, 2)
;

insert into Mechanic_Availability (storeid, empid, serviceday, serviceweek) 
values(30003, 123456780, 2, 2)
;

insert into Mechanic_Availability (storeid, empid, serviceday, serviceweek) 
values(30003, 123456708, 2, 2)
;

insert into Mechanic_Availability (storeid, empid, serviceday, serviceweek) 
values(30003, 123456078, 2, 2)
;

insert into Mechanic_Availability (storeid, empid, serviceday, serviceweek) 
values(30003, 123450678, 2, 2)
;

insert into Mechanic_Availability (storeid, empid, serviceday, serviceweek) 
values(30003, 123405678, 2, 2)
;

insert into Mechanic_Availability (storeid, empid, serviceday, serviceweek) 
values(30003, 347812569, 3, 2)
;

insert into Mechanic_Availability (storeid, empid, serviceday, serviceweek) 
values(30003, 123456780, 3, 2)
;

insert into Mechanic_Availability (storeid, empid, serviceday, serviceweek) 
values(30003, 123456708, 3, 2)
;

insert into Mechanic_Availability (storeid, empid, serviceday, serviceweek) 
values(30003, 123456078, 3, 2)
;

insert into Mechanic_Availability (storeid, empid, serviceday, serviceweek) 
values(30003, 123450678, 3, 2)
;

insert into Mechanic_Availability (storeid, empid, serviceday, serviceweek) 
values(30003, 123405678, 3, 2)
;

insert into Mechanic_Availability (storeid, empid, serviceday, serviceweek) 
values(30003, 347812569, 4, 2)
;

insert into Mechanic_Availability (storeid, empid, serviceday, serviceweek) 
values(30003, 123456780, 4, 2)
;

insert into Mechanic_Availability (storeid, empid, serviceday, serviceweek) 
values(30003, 123456708, 4, 2)
;

insert into Mechanic_Availability (storeid, empid, serviceday, serviceweek) 
values(30003, 123456078, 4, 2)
;

insert into Mechanic_Availability (storeid, empid, serviceday, serviceweek) 
values(30003, 123450678, 4, 2)
;

insert into Mechanic_Availability (storeid, empid, serviceday, serviceweek) 
values(30003, 123405678, 4, 2)
;

insert into Mechanic_Availability (storeid, empid, serviceday, serviceweek) 
values(30003, 347812569, 5, 2)
;

insert into Mechanic_Availability (storeid, empid, serviceday, serviceweek) 
values(30003, 123456780, 5, 2)
;

insert into Mechanic_Availability (storeid, empid, serviceday, serviceweek) 
values(30003, 123456708, 5, 2)
;

insert into Mechanic_Availability (storeid, empid, serviceday, serviceweek) 
values(30003, 123456078, 5, 2)
;

insert into Mechanic_Availability (storeid, empid, serviceday, serviceweek) 
values(30003, 123450678, 5, 2)
;

insert into Mechanic_Availability (storeid, empid, serviceday, serviceweek) 
values(30003, 123405678, 5, 2)
;

update Mechanic_Availability set starttime = 1 where (storeid = 30003 and empid = 123405678 and serviceday = 2 and serviceweek = 1)
;

update Mechanic_Availability set starttime = 1 where (storeid = 30003 and empid = 123405678 and serviceday = 2 and serviceweek = 1)
;

update Mechanic_Availability set starttime = 1 where (storeid = 30003 and empid = 123405678 and serviceday = 2 and serviceweek = 1)
;

update Mechanic_Availability set endtime = 2 where (storeid = 30003 and empid = 123450678 and serviceday = 2 and serviceweek = 1)
;

update Mechanic_Availability set starttime = 2 where (storeid = 30002 and empid = 423186759 and serviceday = 4 and serviceweek = 2)
;

update Mechanic_Availability set endtime = 6 where (storeid = 30002 and empid = 423186759 and serviceday = 4 and serviceweek = 2)
;

update Mechanic_Availability set starttime = 3 where (storeid = 30002 and empid = 125689347 and serviceday = 1 and serviceweek = 2)
;

update Mechanic_Availability set endtime = 6 where (storeid = 30002 and empid = 125689347 and serviceday = 1 and serviceweek = 2)
;

update Mechanic_Availability set starttime = 2 where (storeid = 30002 and empid = 789123456 and serviceday = 6 and serviceweek = 2)
;

update Mechanic_Availability set endtime = 8 where (storeid = 30002 and empid = 789123456 and serviceday = 6 and serviceweek = 2)
;

insert into Mechanic_Availability 
values(30002, 125689347, 5, 3, 5, 8, 0)
;

INSERT INTO Orders(orderno, vin, storeid, customerid, modelname, invoicestatus) 
values (1, 'P39VN198', 30003, 10501, 'Nissan', 0);

INSERT INTO Orders(orderno, vin, storeid, customerid, modelname, invoicestatus) 
values (2, '39YVS415', 30003, 10010, 'Honda', 0);

INSERT INTO Orders(orderno, vin, storeid, customerid, modelname, invoicestatus) 
values (3, '29T56WC3', 30003, 10062, 'Nissan', 0);

INSERT INTO Orders(orderno, vin, storeid, customerid, modelname, invoicestatus) 
values (4, '9R2UHP54', 30002, 10035, 'Honda', 0);

INSERT INTO Orders(orderno, vin, storeid, customerid, modelname, invoicestatus) 
values (5, '5TR3K914', 30002, 10053, 'Nissan', 0);

INSERT INTO Orders(orderno, vin, storeid, customerid, modelname, invoicestatus) 
values (6, '15DC9A87', 30002, 10010, 'Toyota', 0);

INSERT INTO Orders(orderno, vin, storeid, customerid, modelname, invoicestatus) 
values (7, '18S5R2D8', 30002, 10001, 'Nissan', 0);
;

Insert into Schedule
Values( 1, 'Wheel Alignment', 2, 1, 1, 2, 123405678, 30003);

Insert into Schedule
Values( 2, 'Belt Replacement', 2, 1, 1, 2, 123450678, 30003);

Insert into Schedule
Values( 3, 'Tire Balancing', 1, 1, 1, 2, 123456780, 30003);

Insert into Schedule
Values( 4, 'Alternator Repair', 4, 2, 2, 6, 423186759, 30002);

Insert into Schedule
Values( 5, 'Compressor Repair', 1, 2, 3, 6, 125689347, 30002);

Insert into Schedule
Values( 6, 'B', 6, 2, 2, 8, 789123456, 30002);

Insert into Schedule
Values( 7, 'A', 5, 3, 5, 8, 125689347, 30002);
;

Insert into Auth
Values( 999, 'abcd1234', 30001, 'Admin');

Insert into Auth
Values( 13579246830001, 'abcd1234', 30001, 'Recep');

Insert into Auth
Values( 24681357930002, 'abcd1234', 30002, 'Recep');

Insert into Auth
Values( 68135792430003, 'abcd1234', 30003, 'Recep');

;