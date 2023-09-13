#Hey there! I’m part of the main branch

REM   Script: DBMS_DATA_CREATION
REM   DBMS database creation file.

CREATE TABLE Service_Centre (  
    storeid integer,  
    address varchar2(50),  
    phoneno integer,  
    oos integer,  
    managerid integer not null,  
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

CREATE TABLE Contract_Basis(   
    empid integer,   
    storeid integer,   
    empname varchar2(30),   
    address varchar2(50),   
    phoneno integer,   
    email varchar2(20),   
    salary integer,   
    emprole integer,   
    constraint pk_cb primary key (storeid, empid),   
    constraint fk_cbsc foreign key (storeid) REFERENCES Service_Centre   
);

ALTER TABLE Contract_Basis  
    add constraint bool_emprole    
    check (emprole in (1,0));

CREATE TABLE Hourly_Basis(  
    empid integer,  
    storeid integer,  
    empname VARCHAR2(20),  
    address VARCHAR2(50),  
    phoneno integer,  
    email VARCHAR2(20),  
    startdate DATE,  
    CONSTRAINT pk_hb PRIMARY KEY (storeid, empid),  
    CONSTRAINT fk_hbsc FOREIGN KEY (storeid) REFERENCES Service_Centre  
);

CREATE TABLE Auth(  
    username varchar(30),  
    userpassword varchar(10),  
    storeid integer,  
    emprole varchar(10),   
    constraint pk_auth primary key (username, userpassword)  
);

CREATE TABLE Repair_Service(   
    serviceid number,   
    servicename varchar2(30),   
    svcategory varchar2(30),   
    svduration number,   
    CONSTRAINT pk_rs PRIMARY KEY (serviceid)   
);

CREATE TABLE Maintenance_Service(  
    serviceid integer,  
    servicename varchar2(50),  
    schedule varchar2(1),  
    servicetype integer,    -- 0 - Maintenance Service only, 1 - Maintenance + Repair Service  
    scheduletime integer,  
    CONSTRAINT pk_ms PRIMARY KEY (serviceid, servicename)  
);

ALTER TABLE Maintenance_Service    
    add constraint bool_svc_chk     
    check (servicetype in (1,0)) ;

ALTER TABLE Repair_Service  
    add constraint chk_svcategory   
 check (svcategory in ('Engine Services', 'Exhaust Services', 'Electrical Services', 'Transmission Services', 'Tire Services', 'Heating and A/C Services'));

ALTER TABLE Maintenance_Service    
    add constraint chk_schedule     
    check (schedule in ('A', 'B', 'C')) ;

CREATE TABLE Service( 
    serviceid INTEGER, 
    servicename varchar2(40) Unique, 
    Constraint pk_s PRIMARY KEY (serviceid) 
);

CREATE TABLE Model_Name( 
    modelname varchar2(10), 
    Constraint pk_mn PRIMARY KEY (modelname) 
);

CREATE TABLE Prices(  
    storeid INTEGER,  
    serviceid INTEGER,  
    modelname VARCHAR2(10),  
    price INTEGER,  
    CONSTRAINT pk_prices PRIMARY KEY (serviceid, storeid, modelname), 
    CONSTRAINT fk_psc FOREIGN KEY (storeid) REFERENCES Service_Centre 
) ;

Alter table Prices 
add CONSTRAINT fk_pservice FOREIGN KEY (serviceid) REFERENCES Service;

Alter table Prices 
add  CONSTRAINT fk_pmn FOREIGN KEY (modelname) REFERENCES Model_Name 
 
 
 
     
 
;

CREATE TABLE Customer(  
    customerid INTEGER,  
    storeid INTEGER,  
    custname varchar2(20),  
    status INTEGER,  
    CONSTRAINT pk_cust PRIMARY KEY (customerid, storeid),  
    CONSTRAINT fk_custsc FOREIGN KEY (storeid) REFERENCES Service_Centre, 
    CONSTRAINT check_status CHECK(status = 1 OR status = 0)  
);

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

Create table Mechanic_Availability(   
    storeid INTEGER,   
    empid INTEGER,   
    serviceday INTEGER,   
    serviceweek INTEGER,   
    starttime INTEGER default 0,   
    endtime INTEGER default 1,   
    hoursworked INTEGER default 0,   
    CONSTRAINT pk_ma PRIMARY KEY (storeid, empid, serviceday, serviceweek, starttime,        endtime),   
    CONSTRAINT fk_mahb FOREIGN KEY (storeid, empid) REFERENCES Hourly_Basis   
) ;

drop table Mechanic_Availability;

Create table Mechanic_Availability(   
    storeid INTEGER,   
    empid INTEGER,   
    serviceday INTEGER,   
    serviceweek INTEGER,   
    starttime INTEGER default 0,   
    endtime INTEGER default 1,   
    hoursworked INTEGER default 0,   
    CONSTRAINT pk_ma PRIMARY KEY (storeid, empid, serviceday, serviceweek, starttime, endtime),   
    CONSTRAINT fk_mahb FOREIGN KEY (empid, storeid) REFERENCES Hourly_Basis   
) ;

create table Orders(  
    orderno INTEGER,  
    vin varchar2(10),   
    storeid INTEGER,   
    customerid INTEGER,   
    modelname varchar2(10),  
    invoicestatus varchar2(1) default 0,  
    constraint pk_o primary key (storeid, orderno),  
    CONSTRAINT check_invoice CHECK(invoicestatus IN (0, 1)),   
    CONSTRAINT fk_co FOREIGN KEY (customerid, storeid) REFERENCES Customer,  
    CONSTRAINT fk_vo FOREIGN KEY (vin) REFERENCES Vehicle 
);

create table Availability_Time( 
    serviceday INTEGER, 
    serviceweek INTEGER, 
    starttime INTEGER, 
    endtime INTEGER, 
    constraint pk_at PRIMARY KEY (serviceday, serviceweek, starttime, endtime) 
);

create table Schedule(  
    orderno INTEGER,  
    servicename varchar2(30),   
    serviceday INTEGER, 
    serviceweek INTEGER, 
    starttime INTEGER,   
    endtime INTEGER,  
    empid INTEGER,  
    storeid INTEGER,  
    CONSTRAINT pk_sw PRIMARY KEY (orderno, servicename),  
    CONSTRAINT fk_hbsw FOREIGN KEY (storeid, empid, serviceday, serviceweek, starttime, endtime) REFERENCES Mechanic_Availability 
)


/***************************************************************************************
*    Title:     AUTOR
*    Team:      T-16
*    Author/s:   Sourabh Wattamwar, Neel Shah, Aditi Salunkhe, Purv Patel
*    Date:      November 09, 2022
*
***************************************************************************************/


