# JEE Student Registration System

A Java EE-based web application designed to manage student registrations. Built using JSP and Servlets, the application allows administrators to perform CRUD operations on student data, including uploading student photos.

## 📌 Features

- Register new students with name, email, and photo(optional)
- View a list of all registered students(page still under construction)
- Search for students by name or ID(feature still to be implemented)
- Delete student records(feature still to be implemented)
- Count the total number of students in the database(feature still to be implemented)

## 🧰 Technologies Used

- Java EE (JSP, Servlets)
- NetBeans IDE
- GlassFish Server
- MySQL Database
- HTML/CSS

## 🚀 Getting Started

Follow the steps below to run this project in NetBeans using GlassFish and MySQL.

---

### ✅ 1. Clone the Repository

If you have Git installed:

```bash
git clone https://github.com/thuhlokay/jee-student-registration.git
```

Or download the ZIP file and extract it.

---

### ✅ 2. Open the Project in NetBeans

1. Launch **NetBeans**.
2. Go to `File > Open Project`.
3. Navigate to the cloned/extracted folder and select the StudentEJBModule(brown bean).
4. Wait for NetBeans to load the project.
5. Clean & Build it.

6. Again, go to `File > Open Project`.
7. Navigate to the cloned/extracted folder and select the StudentRegistrationWebApp(browser/earth icon).
8. Wait for NetBeans to load the project.
9. Right-click on Libraries(in the StudentRegistrationWebApp folder structure/tree) and click `Add JAR/Folder`.
10. Navigate to the StudentEJBModule.jar file and select it, and click `Open`
11. Clean & Build the project.

---

### ✅ 3. Set Up GlassFish Server

1. Still in NetBeans, go to `Tools > Servers`.
2. Click `Add Server` and choose **GlassFish Server**.
3. Locate the GlassFish installation directory and complete the setup.
4. Make sure **GlassFish** is selected as the server for the project:
   - Right-click the project > `Properties` > `Run` > set Server to GlassFish.

---

### ✅ 4. Create the MySQL Database

Open MySQL Workbench, phpMyAdmin, or NetBeans’ SQL tab, and run the following SQL:

```sql

CREATE DATABASE StudentListDB;
USE StudentListDB;

CREATE TABLE student (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100),
    email VARCHAR(100),
    photo VARCHAR(255)
);
```

---

### ✅ 5. Create the MySQL User

```sql

CREATE USER 'app'@'localhost' IDENTIFIED BY '123';
GRANT ALL PRIVILEGES ON StudentListDB.* TO 'app'@'localhost';
FLUSH PRIVILEGES;

```

---

### ✅ 6. Set Up the Database Connection in Code

Ensure your `DBConnection.java` (or similar class) has the correct credentials:

```java
String url = "jdbc:mysql://localhost:3306/StudentListDB";
String username = "app";
String password = "123";
```

Also make sure the MySQL JDBC driver is added to your project libraries.

---

### ✅ 7. Run the Application

1. Right-click the project in NetBeans and select **Run**.
2. The project will build, deploy to GlassFish, and open in your browser.
3. You should now see the Student Registration homepage.

---

## 🔒 Notes

- Ensure MySQL and GlassFish services are running before you run the project.
- You may need to adjust firewall settings or GlassFish JDBC resources if deploying to a server.
- For image uploads to work correctly, the `photo` upload path must exist and be writable on your machine.

---

## 👨‍💻 Authors

Khaholelo Thuhlo-Cakeni &
Bokamoso Glen Nchabeleng

## 📄 License

This project is licensed under the [MIT License](https://opensource.org/licenses/MIT).
