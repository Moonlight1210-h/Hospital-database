 🏥 Hospital Database System
🚀 Overview
A production-ready relational database designed to manage hospital operations using MySQL.
This project focuses on data integrity, scalability, and real-world hospital workflows.
It demonstrates how modern systems organize patients, doctors, treatments, appointments, billing, and room management using best practices in database design.
⚡️ Key Highlights
🧠 Well-structured relational design (3NF)
🔗 Strong relationships using Foreign Keys & Constraints
📊 Scalable and maintainable architecture
🛡️ Data integrity using UNIQUE, ENUM, and CASCADE
⏱️ Full tracking with created_at and updated_at
💰 Integrated billing and payment system
🧱 Database Architecture
📌 Core Tables
patients → Stores patient information
doctors → Contains doctor data
departments → Hospital departments
specialties → Doctor specialties
medicine → Medication details
🔗 Relationship Tables
patient_doctor → Tracks patient visits
patient_medicine → Prescriptions
doctor_specialty → Doctor-specialty mapping
room_occupancy → Dynamic room assignment
⚙️ Operational Tables
appointments → Appointment scheduling
rooms → Hospital rooms
bills → Billing records
payments → Payment transactions
🛠️ Technologies
MySQL
SQL (DDL - Data Definition Language)
⚙️ Setup & Usage
1️⃣ Create Database
CREATE DATABASE hospital_db;
USE hospital_db;
2️⃣ Run SQL Script
Execute the file:
Hospital-AI_Iraq.sql
3️⃣ Start Using
You can now insert data and run queries such as:
Retrieve patient records
Check doctor appointments
Track prescriptions
Generate billing data
📊 Example Use Cases
🔍 Retrieve all appointments for a specific doctor
💊 Track medicines prescribed to a patient
🛏️ Monitor room occupancy over time
💰 Generate financial and billing reports
🔥 Design Decisions
Used junction tables to handle many-to-many relationships
Removed direct patient-room relationship → replaced with room_occupancy
Applied ENUM to control specific values (status, gender)
Used AUTO_INCREMENT for all primary keys
Designed schema for scalability and real-world usage
📈 Future Improvements
👤 User authentication system (roles & permissions)
🌐 API integration (Python / Node.js)
📊 Interactive dashboard (Web or BI tools)
📑 Advanced reporting system
🤝 Contribution
Contributions are welcome.
Feel free to suggest improvements or extend the project 🚀
👨‍💻 Author
Hussein Mohammed
⭐️ Final Note
This project is not just a database —
it represents a solid step toward building a real-world scalable system.
If you find it useful, consider giving it a ⭐️
