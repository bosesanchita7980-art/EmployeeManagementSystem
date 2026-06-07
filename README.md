# Employee Management System

## Project Overview

Employee Management System is a web-based application developed using Advanced Java technologies. The system allows administrators to manage employee records efficiently and enables employees to access their personal information through a dedicated dashboard.

## Technologies Used

* Java
* JSP
* Servlet
* JDBC
* MySQL
* Apache Tomcat
* Maven
* JavaMail API
* HTML
* CSS
* JavaScript

---

## Features Implemented

### Admin Module

* Admin Login Authentication
* Dashboard Overview
* Total Employee Count
* Total Salary Calculation
* Department Statistics
* Recent Employee Records

### Employee Management

* Add Employee
* View Employee
* Update Employee
* Delete Employee

### Employee Module

* Employee Login
* Employee Personal Dashboard
* Employee Profile Details

### Pagination

* Dynamic Pagination
* 5 Employees per Page
* Automatic Page Creation

### Sorting

* Sort by Name (A-Z)
* Sort by Name (Z-A)
* Sort by Salary (Low to High)
* Sort by Salary (High to Low)
* Sort by Department

### Email Notification

* Automatic Email on Employee Creation
* Automatic Email on Employee Update
* JavaMail API Integration

### Deployment

* Maven WAR Packaging
* Apache Tomcat Deployment

---

## Database Setup

1. Open MySQL Workbench
2. Create Database

```sql
CREATE DATABASE employee_management;
```

3. Import the file:

```text
database/employee_management.sql
```

---

## Email Notification Setup

1. Enable Google 2-Step Verification
2. Generate App Password
3. Update EmailUtil.java

```java
final String fromEmail = "your-email@gmail.com";
final String password = "your-app-password";
```

---

## Project Screenshots

Screenshots are available in the screenshots folder.

* Login Page
* Admin Dashboard
* Add Employee
* View Employees
* Employee Dashboard

---

## Deployment Steps

1. Build WAR File

```bash
mvn clean package
```

2. Copy WAR file from:

```text
target/EmployeeManagementSystem.war
```

3. Paste into:

```text
apache-tomcat/webapps
```

4. Start Tomcat

```text
startup.bat
```

5. Open:

```text
http://localhost:8080/EmployeeManagementSystem
```

---

## Default Admin Credentials

Username:

```text
admin
```

Password:

```text
admin123
```

---

## Developed By : Sanchita Bose 

Advanced Java Project Submission

Employee Management System using JSP, Servlet, JDBC, MySQL and Apache Tomcat.
