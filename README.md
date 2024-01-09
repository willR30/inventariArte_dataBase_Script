# TSQL database for inventory system

## Description
This inventory and sales management database, developed in T-SQL for SQL Server, focuses on managing products, clients, billing, and equipment used in repairs. It provides a comprehensive structure to record, manage, and query relevant information for the company.

## Folder Structure
The project is organized into folders containing scripts and views for different functionalities:

![image](https://github.com/willR30/inventariArte_dataBase_Script/assets/50780601/cb0259d9-94ab-46e1-bfd7-2636acc8e0e6)

- Contains scripts for creating the database and tables.
- Folder storing stored procedures (CRUD) for each table in the database.
- Scripts for inserting initial data into each table.
- Predefined views for specific queries, such as getting the most expensive product, the cheapest one, equipment by categories, client invoices in a month, among others.

## Detail of tables
- **Equipment_Category**: Categories of materials used for repairs.
- **Equipment**: Internally used equipment for repairing other devices.
- **Category**: Categories of products available for sale.
- **Products**: Products available for sale, associated with categories.
- **Bill_state**: Possible states for an invoice.
- **Month** and **Year**: Tables for managing months and years.
- **TypeCustomer** and **Customer**: Types of clients and details of registered clients.
- **CurrencyType** and **PaymentType**: Types of currency and available payment methods.
- **Bill** and **Sale**: Record of invoices and associated sales.
- **User**, **Group**, and **Membership**: User and group administration for the system.


## Using the Scripts
1.  Run the scripts in `Database and Tables Creation.sql` to create the `InventariArte` database.
2. **Insert Scripts**: Use the scripts in `Insert_daa_scripts` to insert initial data into the tables.
3. **Stored Procedures**: Access the stored procedures in `Stored Procedure folder` to perform CRUD operations on the entities.
4. **Views**: Use the views in `Views folder` to execute predefined queries and obtain specific information from the system.

## Contributing to the Project
We appreciate contributions! If you'd like to contribute to this project, follow these steps:
1. Fork the repository.
2. Create a new branch (`git checkout -b feature/new-feature`).
3. Make desired changes and document those changes.
4. Commit your changes (`git commit -am 'Add a new feature'`).
5. Push the branch to your forked repository (`git push origin feature/new-feature`).
6. Open a Pull Request in the original repository.

## Project Usage
This project is available for use by anyone under the [specify the license] license. You can use, modify, and distribute this software according to the terms of the license.

## Considerations
- The database contains more than 100 registered products.
- Predefined views offer useful queries to obtain valuable information from the system.
- Stored procedures facilitate the manipulation and management of data in different tables.
