drop database if exists project_details;
create database project_details;
use project_details;
create table employee(
Fname varchar(20),
Lname varchar(20),
Ssn int primary key,
Bdate date,
Address varchar(50),
Sex int,
Salary float,
Super_ssn int,
Dno int,
foreign key (Super_ssn) references employee(Ssn),
foreign key (Dno) references department(Dnumber) 
);
create table department(
Dname varchar(20),
Dnumber int primary key,
Mgr_ssn int,
Mgr_start_date date
);
create table dept_locations(
Dnumber int,
Dlocation varchar(50),
foreign key (Dnumber) references department(Dnumber),
primary key(Dnumber,Dlocation)
);
create table project(
Pname varchar(20),
Pnumber int primary key,
Plocation varchar(50),
Dnum int,
foreign key (Dnum) references department(D_number)
);
create table works_on(
Essn int,
Pno int,
Hours float,
foreign key (Essn) references employee(ssn),
foreign key (Pno) references project(Pnumber),
primary key(Essn,Pno)
);
create table dependent(
Essn int,
Dependent_name varchar(20),
Sex varchar(5),
Bdate date,
Relationship varchar(20),
foreign key(Essn) references employee(ssn),
primary key (Essn,Dependent_name)
);

