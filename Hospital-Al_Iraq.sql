 create table patients (
 id int primary key,
 first_name varchar(50) not null,
 last_name varchar(50) not null,
 date_of_birth date not null,
 Governorate varchar(60) not null,
 city varchar(50) not null,
 phone varchar(20) default null,
 email varchar(50)  default null);
 create table doctors(
 id int primary key,
 first_name varchar(50) not null,
  last_name varchar(50) not null,
  Department_id int not null,
  phone varchar(20) not null,
  date_of_birth date not null);
  create table medicine(
  id int primary key,
  name varchar(50) not null,
  company varchar(50) not null,
  price decimal (10,2) not null,
  exp_date date not null,
  dosage varchar(60) );
  create table patient_doctor(
  patient_id int not null ,
  doctor_id int not null ,
  visit_date date not null ,
  primary key (patient_id,doctor_id,visit_date),
  foreign key (patient_id) references patients(id),
  foreign key (doctor_id) references doctors(id)
  );
  create table patient_medicine(
  id int primary key auto_increment,
  patient_id int not null ,
  medicine_id int not null,
  doctor_id int not null,
  dosage varchar(50),
  start_date date,
  end_date date,
  foreign key (patient_id) references patients(id),
  foreign key (doctor_id) references doctors(id),
  foreign key (medicine_id) references medicine(id)
  );
  create table departments(
  id int primary key , 
  name varchar(50) not null,
  location varchar(50) not null
  
  );
  alter table Doctors
add constraint fk_department
foreign key (department_id) references Departments(id);
create table specialties(
id int primary key ,
name varchar(50) not null unique
);
create table doctor_specialty(
doctor_id int  not null,
specialty_id int not null,
primary key (doctor_id,specialty_id),
foreign key (doctor_id) references doctors(id),
foreign key (specialty_id) references specilties(id)
);
create table appointment(
    id int primary key,
    patient_id int not null,
    doctor_id int not null ,
    appointment_date date not null,
    reason varchar(100),
    foreign key (patient_id) references Patients(id),
    foreign key (doctor_id) references doctors(id)
);
create table rooms(
id int primary key,
room_number varchar(50) not null,
capacity int not null,
patient_id int ,
department_id int not null,
foreign key (department_id) references departments(id),
foreign key (patient_id) references patients(id)
);
create table bills(
id int primary key,
patient_id int not null,
amount decimal(10,2) not null,
bill_date date not null,
description varchar(50) default null,
foreign key (patient_id) references patients(id)
);
create table payment_method(
    id int primary key,
    payment_method_name varchar(50) not null
);
create table payments(
id int primary key ,
bill_id int,
amount decimal (10,2) not null,
payment_date date not null,
payment_method_id int,
foreign key (bill_id) references bills(id),
foreign key (payment_method_id) references PaymentMethod(id)
);






  
  
  
  
  
  
  
  
  
  
  

  
  
  
  
  
  
 
 
 
 
  