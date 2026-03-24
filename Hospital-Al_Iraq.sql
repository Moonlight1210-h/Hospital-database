 create table patients (
 id int primary key,
 first_name varchar(50) not null,
 last_name varchar(50) not null,
 age int not null,
 Governorate varchar(60) not null,
 city varchar(50) not null,
 phone int  default null,
 email varchar(50)  default null);
 create table doctors(
 id int primary key,
 first_name varchar(50) not null,
  last_name varchar(50) not null,
  Department_id int not null,
  specilaty_id int not null,
  phone int not null,
  age int not null);
  create table Medicine(
  id int primary key,
  name varchar(50) not null,
  company varchar(50) not null,
  price decimal not null,
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
  patient_id int not null ,
  medicine_id int not null,
  doctor_id int not null,
  primary key (patient_id,medicine_id,doctor_id),
  foreign key (patient_id) references patients(id),
  foreign key (doctor_id) references doctors(id),
  foreign key (medicine_id) references Medicine(id)
  );
  create table departments(
  id int primary key , 
  name varchar(50) not null,
  location varchar(50) not null
  
  );
  alter table Doctors
add constraint fk_department
foreign key (department_id) references Departments(id);
create table specilatys(
id int primary key ,
name varchar(50) not null unique
);
create table doctor_specilaty(
doctor_id int  not null,
specialty_id int not null,
primary key (doctor_id,specialty_id),
foreign key (doctor_id) references doctors(id),
foreign key (specialty_id) references specilatys(id)
);
create table Appointment(
    id int primary key,
    patient_id int not null,
    appointment_date date not null,
    reason varchar(100),
    foreign key (patient_id) references Patients(id)
);
create table rooms(
id int not null,
room_number varchar(50) not null,
capacity int not null,
patient_id int ,
department_id int not null,
primary key  (id,room_number,capacity),
foreign key (department_id) references departments(id),
foreign key (patient_id) references patients(id)
);
create table bills(
id int primary key,
patient_id int,
amount decimal not null,
bill_date date not null,
descreption varchar(50) default null,
foreign key (patient_id) references patients(id)
);
create table PaymentMethod(
    id int primary key,
    method_name varchar(50) not null
);
create table payments(
id int primary key ,
bill_id int,
amount decimal not null,
payment_date date not null,
payment_method_id int,
total_paid decimal(10,2) not null,
foreign key (bill_id) references bills(id),
foreign key (payment_method_id) references PaymentMethod(id)
);






  
  
  
  
  
  
  
  
  
  
  

  
  
  
  
  
  
 
 
 
 
  