# Task-Manager
 
 # Overview

The TaskManager project is a web-based application designed to manage tasks effectively. This application is built using Java with Spring framework and Maven for dependency management. It includes CRUD (Create, Read, Update, Delete) operations for managing products (tasks).

 
 # Key Files and Directories
pom.xml: Maven configuration file that manages project dependencies.
src/main/java/productcrudapp:
controller/MainController.java: Handles HTTP requests and responses.
dao/ProductDao.java: Data Access Object for interacting with the database.
model/Product.java: Represents the Product entity.
src/main/webapp/WEB-INF:
spring-servlet.xml: Spring configuration file.
web.xml: Web application deployment descriptor.
views: Contains JSP files for different views like adding, updating, and viewing products.

# Getting Started
# Prerequisites
> Java Development Kit (JDK) 8 or higher
> Apache Maven
> Apache Tomcat (or any other servlet container)
 
# Installation
Clone the repository:

> bash
 
git clone https://github.com/yourusername/TaskManager.git
Navigate to the project directory:

> bash

cd TaskManager
Build the project using Maven:

> bash
mvn clean install
Deploy the application to Tomcat:

> Copy the generated WAR file from the target directory to the webapps directory of your Tomcat installation.
Start Tomcat server.
Access the application:

Open a web browser and go to http://localhost:8080/TaskManager.

# Usage
Home Page: Lists all tasks.
Add Task: Provides a form to add a new task.
Update Task: Allows updating an existing task.
View Task: Displays the details of a task.
Contributing
Fork the repository.
Create a new branch (git checkout -b feature-branch).
Make your changes.
Commit your changes (git commit -am 'Add new feature').
Push to the branch (git push origin feature-branch).
Create a new Pull Request.
