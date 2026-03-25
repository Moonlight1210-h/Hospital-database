 # 🏥 Hospital Database System

## 🚀 Overview
A production-ready relational database designed using MySQL to manage hospital operations efficiently.  
This project focuses on data integrity, scalability, and real-world hospital workflows, making it suitable as a foundation for real applications.

---

## ⚡️ Key Highlights

- 🧠 Well-structured relational design (3NF)
- 🔗 Strong relationships using Foreign Keys & Constraints  
- 📊 Scalable architecture for future expansion  
- 🛡️ Data integrity using UNIQUE, ENUM, and CASCADE  
- ⏱️ Full tracking with created_at and updated_at  
- 💰 Integrated billing and payment system  

---

## 🧱 Database Architecture

### 📌 Core Tables
- patients — Stores patient information  
- doctors — Contains doctor data  
- departments — Hospital departments  
- specialties — Medical specialties  
- medicine — Medicine inventory  

### 🔗 Relationship Tables
- patient_doctor — Patient visits  
- patient_medicine — Prescriptions  
- doctor_specialty — Doctor specializations  
- room_occupancy — Dynamic room assignment  

### ⚙️ Operational Tables
- appointments — Appointment management  
- rooms — Hospital rooms  
- bills — Billing system  
- payments — Payment transactions  

---

## 🛠️ Technologies

- MySQL  
- SQL (DDL - Data Definition Language)

---

## ⚙️ Setup & Usage

### 1️⃣ Create Database
CREATE DATABASE hospital_db;
USE hospital_db;
### 2️⃣ Run SQL Script
Run the provided file:

Hospital-AI_Iraq.sql
### 3️⃣ Start Using
Insert data and test queries such as:
- Retrieve patient records  
- View doctor appointments  
- Track prescriptions  
- Generate billing data  

---

## 📊 Example Use Cases

- 🔍 Retrieve all appointments for a specific doctor  
- 💊 Track medicines prescribed to a patient  
- 🛏️ Monitor room occupancy over time  
- 💰 Generate billing and payment reports  

---

## 🔥 Design Decisions

- Used junction tables to handle many-to-many relationships  
- Replaced direct patient-room relation with room_occupancy for flexibility  
- Applied ENUM for controlled values (gender, status)  
- Implemented AUTO_INCREMENT for all primary keys  
- Structured schema for performance and maintainability  

---

## 📈 Future Improvements

- 👤 User authentication system (roles & permissions)  
- 🌐 API integration (Python / Node.js)  
- 📊 Interactive dashboard (Web / Power BI)  
- 📑 Advanced reporting system  

---

## 🤝 Contribution

Contributions are welcome.  
Feel free to suggest improvements or submit enhancements 🚀

---

## 👨‍💻 Author

Hussein Mohammed

---

## ⭐️ Final Note

This is not just a database project —  
it is a solid step toward building a real-world scalable system.

If you like the project, consider giving it a ⭐️
