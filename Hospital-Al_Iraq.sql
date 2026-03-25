 -- Patients--
 create table patients (
 id int primary key auto_increment,
 first_name varchar(50) not null,
 last_name varchar(50) not null,
 gender enum('male','female'),
 date_of_birth date not null,
 governorate varchar(60) not null,
 city varchar(50) not null,
 phone varchar(20) unique default null,
 email varchar(50) unique default null);
 -- doctors --
 create table doctors(
 id int primary key auto_increment,
 first_name varchar(50) not null,
  last_name varchar(50) not null,
  gender enum('male','female'),
  department_id int not null,
  phone varchar(20) unique not null,
  date_of_birth date not null);
  -- medicine --
  create table medicine(
  id int primary key auto_increment,
  name varchar(50) not null,
  company varchar(50) not null,
  price decimal (10,2) not null,
  exp_date date not null,
  dosage varchar(60) );
  -- patient_doctor --
  create table patient_doctor(
  patient_id int not null ,
  doctor_id int not null ,
  visit_date date not null ,
  primary key (patient_id,doctor_id,visit_date),
  foreign key (patient_id) references patients(id) on delete cascade,
  foreign key (doctor_id) references doctors(id) on delete cascade
  );
  -- patient_medicine --
  create table patient_medicine(
  id int primary key auto_increment,
  patient_id int not null ,
  medicine_id int not null,
  doctor_id int not null,
  dosage varchar(50),
  start_date date,
  end_date date,
  created_at timestamp default current_timestamp,
  updated_at timestamp default current_timestamp on update current_timestamp,
  foreign key (patient_id) references patients(id),
  foreign key (doctor_id) references doctors(id),
  foreign key (medicine_id) references medicine(id)
  );
  -- department --
  create table departments(
  id int primary key auto_increment, 
  name varchar(50) not null,
  location varchar(50) not null
  
  );
  -- altering --
  alter table Doctors
add constraint fk_department
foreign key (department_id) references Departments(id);
-- specialties --
create table specialties(
id int primary key auto_increment,
name varchar(50) not null unique
);
-- doctor_specialty --
create table doctor_specialty(
doctor_id int  not null,
specialty_id int not null,
primary key (doctor_id,specialty_id),
foreign key (doctor_id) references doctors(id) on delete cascade,
foreign key (specialty_id) references specialties(id) on delete cascade
);
-- appointment --
create table appointment(
    id int primary key auto_increment,
    patient_id int not null,
    doctor_id int not null ,
    appointment_datetime datetime not null,
    status enum('pending','completed','cancelled'),
    reason varchar(100),
    created_at timestamp default current_timestamp,
  updated_at timestamp default current_timestamp on update current_timestamp,
    foreign key (patient_id) references Patients(id),
    foreign key (doctor_id) references doctors(id)
);
-- rooms --
create table rooms(
id int primary key auto_increment,
room_number varchar(50) unique not null,
capacity int not null,
department_id int not null,
foreign key (department_id) references departments(id)
);
-- room_occupancy --
create table room_occupancy(
room_id int not null,
patient_id int not null,
from_date date not null,
to_date date not null,
primary key (room_id,patient_id,from_date),
foreign key (patient_id) references patients(id),
foreign key (room_id) references rooms(id));
-- bills --
create table bills(
id int primary key auto_increment ,
patient_id int not null,
amount decimal(10,2) not null,
bill_date date not null,
status enum ('paid','unpaid','partial'),
description varchar(50) default null,
foreign key (patient_id) references patients(id)
);
-- pament_method --
create table payment_methods(
    id int primary key auto_increment,
    payment_method_name varchar(50) not null
);
-- payments --
create table payments(
id int primary key auto_increment ,
bill_id int,
amount decimal (10,2) not null,
payment_date date not null,
payment_method_id int,
transaction_id varchar(100),
foreign key (bill_id) references bills(id),
foreign key (payment_method_id) references payment_methods(id)
);






  
  
  
  
  
  
  
  
  
  
  

  
  
  
  
  
  
 
 
 
 
  