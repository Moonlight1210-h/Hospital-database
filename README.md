#Hospital Database System

A relational database system for managing hospital operations,
built with MySQL from scratch.

## 📋 Overview
This database handles the core operations of a hospital including
patient management, doctor assignments, appointments,
medicine prescriptions, and billing.

## 🗄️ Database Structure

| Table | Description |
|-------|-------------|
| patients | Patient personal information |
| doctors | Doctor profiles and specialties |
| departments | Hospital departments |
| appointments | Patient-doctor appointments |
| medicines | Medicine inventory |
| patient_medicine | Prescribed medicines per patient |
| rooms | Room assignments |
| bills | Patient billing |
| payments | Payment transactions |
| payment_methods | Available payment methods |

## 🔗 Key Relationships
- Each doctor belongs to one department
- A patient can visit multiple doctors
- Each appointment is linked to a patient and doctor
- Bills are generated per patient visit
- Payments are tracked with payment methods

## 🛠️ Technologies Used
- MySQL 8.0
- SQL — DDL & DML
- Database Design & Normalization

## 📊 Features
- ✅ Normalized database design (3NF)
- ✅ Foreign key constraints
- ✅ Composite primary keys
- ✅ Referential integrity
- ✅ Scalable structure

## 👨‍💻 Author
Hussein Al Shmary
Junior Data Analyst | Baghdad, Iraq
SQL • Python • MySQL • Excel
