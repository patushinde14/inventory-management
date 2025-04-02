# Inventory Management System

## Overview
The **Inventory Management System** is a web-based application designed to efficiently manage stock, track inventory levels, and automate order management. It is built using **Spring Boot**, **Spring MVC**, **Hibernate**, **JSP**, and **MySQL**.

## Features
- **Product Management** – Add, update, delete, and view inventory items.
- **Stock Tracking** – Monitor available stock levels.
- **Order Management** – Process orders and track transactions.
- **User Authentication** – Secure login for admin and staff.
- **Reports & Analytics** – Generate sales and inventory reports.
- **Database Integration** – Uses MySQL for data storage.

## Technologies Used
- **Backend:** Spring Boot, Spring MVC, Hibernate
- **Frontend:** JSP, HTML, CSS, JavaScript
- **Database:** MySQL
- **Build Tool:** Maven

## Installation
1. Clone the repository:
   ```sh
   git clone https://github.com/your-username/inventory-management-system.git
   ```
2. Navigate to the project folder:
   ```sh
   cd inventory-management-system
   ```
3. Configure the MySQL database:
   - Create a database named `inventory_db`.
   - Update `application.properties` with database credentials.

4. Build and run the application:
   ```sh
   mvn spring-boot:run
   ```

5. Open the application in a browser:
   ```sh
   http://localhost:8080
   ```

## Usage
1. **Login** as an admin or staff.
2. **Manage Products** – Add or update inventory items.
3. **Track Stock Levels** – View current stock availability.
4. **Process Orders** – Create and manage orders.
5. **Generate Reports** – View sales and inventory analytics.

## Folder Structure
```
inventory-management-system/
│── src/main/java/com/example/inventory  # Java source files
│── src/main/resources/static            # CSS, JS, and assets
│── src/main/resources/templates         # JSP files
│── src/main/resources/application.properties # Configuration file
│── pom.xml                              # Maven dependencies
└── README.md                            # Documentation file
```


## Future Enhancements
- Implement role-based access control.
- Add supplier and purchase management features.
- Introduce barcode scanning for inventory tracking.

## License
This project is open-source and available under the [MIT License](LICENSE).

