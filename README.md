# Lab 3 - SQL Practice in MySQL Workbench
This lab will meet the following objectives:

1.  Write SQL commands to create database objects such as tables, indexes, and views as well as commands to define access rights to those database objects.

2.  Write SQL commands to insert, update, delete, and retrieve data within the database tables.

## Instructions
For this lab, you will practice writing SQL commands that create tables, insert, delete, update and retrieve data.  Using the ER model below, you will re-create the model in MySQL workbench and insert the data found in the provided text files of this repository.  

![alt text](https://instructorc.github.io/site/slides/database/images/general/table_view.PNG)

You will record your relationships within this readme file.  When writing down the relationships, make sure to adhere to the following bullet points below.


## Requirements

### Deliverable 1 - Data Definition Language (5 Points)
1 Recreate the database schema identified above.  You can do this one of two ways.  You can use the Modeling tool in Workbench or you can write the SQL commands to create the database and related tables.  Whether you create the database schema using the database modeling tool in MySQL workbench or you create via command line, you will need to provide the commands used to create the database and related tables.  You can include those commands within the file you will use for deliverable 2.  
  1. Make sure all of the relationships are properly configured
  2. Make sure the primary key is specified and auto increments for both the **CLIENT** and **POLICY** table
  3. Make sure all columns in the database are marked as NOT NULL
  4. Enforce that the relationship between **CLIENT** and **POLICY** are strong and enforce cascading if either a **CLIENT** or **POLICY** is deleted.
  5. Include the SQL commands used for creating the database and tables into the file you will use for deliverable 2.


### Deliverable 2 - Data Manipulation Language (10 Points)
Create a file called **lab3.sql** and add the following queries into the file.  You will need to take a screenshot of the rendered output for each command and place a screenshot of your output beneath the example output provided.  Make sure to place a SQL comment above each command identifying the query.  In order to make changes to the data, you may need to change the SQL Editor settings.  You can do this by navigating to EDIT -> SQL Editor -> and unchecking Safe Updates.  It is advised to restart MySQL Workbench after changing this setting.
<br>First, write the SQL commands to insert data into each of the tables. Your insert statements should also be included in the lab2.sql file.  **The data files are listed in the repository for this lab**
1.  Write the SQL command to list all clients and all the columns pertaining to a client.  The intended output is below.
<img src="https://instructorc.github.io/site/slides/database/images/lab3/1.PNG" width="350" alt="output query 1"/>
<img width="1920" alt="task1" src="https://user-images.githubusercontent.com/93145401/204697640-81e7d4e2-81f6-421e-9e58-f50408c5fd34.png">

2.  Write the SQL command to change client Chris Isaac to Chris Pearson.  No output for this command

3.  Write the SQL command to display all policies that have a policy type of 'Home'.
<img src="https://instructorc.github.io/site/slides/database/images/lab3/3.PNG" width="300" alt="output query 3"/>
<img width="1920" alt="task3" src="https://user-images.githubusercontent.com/93145401/204697691-ee9540b3-4d12-48af-928a-23a9b02d2836.png">

4.  Write the SQL command to display all columns for policies that have yearly terms
<img src="https://instructorc.github.io/site/slides/database/images/lab3/4.PNG" width="300" alt="output query 4"/>
<img width="1920" alt="task4" src="https://user-images.githubusercontent.com/93145401/204697744-75389fc1-e43f-4c4d-9e68-045da783a4ca.png">

5.  Write the SQL command that displays the client name, address, and age sorted by age in descending order in the figure below
<img src="https://instructorc.github.io/site/slides/database/images/lab3/5.PNG" width="300" alt="output query 5"/>
<img width="1920" alt="Screenshot 2022-11-29 at 9 05 01 PM (2)" src="https://user-images.githubusercontent.com/93145401/204697971-4d4883fb-6df0-48e9-8a6f-1c4bbe9aa51a.png">

6.  Write the SQL command that calculates the average age of all clients
<img src="https://instructorc.github.io/site/slides/database/images/lab3/6.PNG" width="90" alt="output query 6"/>
<img width="1920" alt="Screenshot 2022-11-29 at 9 06 25 PM (2)" src="https://user-images.githubusercontent.com/93145401/204698121-d9ccd4c2-62d6-43a6-b661-d925c1685000.png">

7.  Write the SQL command that lists the name and age of clients who are between the ages of 22 and 40
<img src="https://instructorc.github.io/site/slides/database/images/lab3/7.PNG" width="180" alt="output query 7"/>
<img width="1920" alt="Screenshot 2022-11-29 at 9 08 02 PM (2)" src="https://user-images.githubusercontent.com/93145401/204698336-f479bbbc-207e-4e06-a982-4d6330f69a9f.png">

8.  Write the SQL command that lists all home policies that have a policy limit under $250,000.
<img src="https://instructorc.github.io/site/slides/database/images/lab3/8.PNG" width="270" alt="output query 8"/>
<img width="1920" alt="Screenshot 2022-11-29 at 9 09 21 PM (2)" src="https://user-images.githubusercontent.com/93145401/204698443-377d6316-153b-4f40-b522-ae298b8f6618.png">

9.  Write the SQL  command that lists the client's name and address for all addresses that contain 'Featherstone' and order by age in ascending order.
<img src="https://instructorc.github.io/site/slides/database/images/lab3/9.PNG" width="200" alt="output query 9"/>
<img width="1920" alt="Screenshot 2022-11-29 at 9 10 27 PM (2)" src="https://user-images.githubusercontent.com/93145401/204698565-d41e291e-da73-4d1d-8f76-79acedc79daf.png">

10.  Write the SQL command that lists the name, address, and age of clients who are age 35 and above and whose address contains the number 8
<img src="https://instructorc.github.io/site/slides/database/images/lab3/10.PNG" width="300" alt="output query 10"/>
<img width="1920" alt="Screenshot 2022-11-29 at 9 11 48 PM (2)" src="https://user-images.githubusercontent.com/93145401/204698754-9e04f920-3b9f-4941-96ae-d1ee0ef24e8f.png">

11.  Write the SQL command that returns the total # of policies offered
<img src="https://instructorc.github.io/site/slides/database/images/lab3/11.PNG" width="80" alt="output query 11"/>
<img width="1920" alt="Screenshot 2022-11-29 at 9 12 57 PM (2)" src="https://user-images.githubusercontent.com/93145401/204698850-4d99ab6d-1aff-4d74-98aa-b086654e6a45.png">

12.  Write the SQL command that returns the policy type and the total count of policies by type
<img src="https://instructorc.github.io/site/slides/database/images/lab3/12.PNG" width="170" alt="output query 12"/>
<img width="1920" alt="Screenshot 2022-11-29 at 9 13 34 PM (2)" src="https://user-images.githubusercontent.com/93145401/204698930-d3ec8aa8-cd10-4add-9164-0af386099847.png">

13.  Write the SQL command that returns the youngest and oldest client
<img src="https://instructorc.github.io/site/slides/database/images/lab3/13.PNG" width="170" alt="output query 13"/>
<img width="1920" alt="Screenshot 2022-11-29 at 9 14 12 PM (2)" src="https://user-images.githubusercontent.com/93145401/204699040-986510f6-46dc-4b13-a7b0-c1a14598359c.png">


14.  Write the SQL command that lists all clients that have a home insurance policy
<img src="https://instructorc.github.io/site/slides/database/images/lab3/14.PNG" width="450" alt="output query 14"/>
15.  Write the SQL command that lists all of the instances of a policy where the client ID is equal to #2
<img src="https://instructorc.github.io/site/slides/database/images/lab3/15.PNG" width="450" alt="output query 15"/>

### Extra Credit (2 Points)
List all clients along with their respective policies.<br>
<img src="https://instructorc.github.io/site/slides/database/images/lab3/ec.PNG" width="550" alt="output query Extra credit"/>



## Submission Guidelines

For this lab, you will submit 2 items to the repository that has been assigned to you.  The two items that you will need to submit are listed below: 
1. The README.MD file that includes screenshots of the result grid window for each SQL query
   1. Include the image beneath the output image I provide

2. The **lab3.sql** file.  The lab3.sql file should be uploaded to your repository

Once you have completed both of the items above, you will need to submit the link to your repository for lab3 prior to the due date and time listed.  Make sure you receive an email confirmation notifying you that the assignment has been submitted.


## Lab Resources
- [W3 Schools SQL tutorial](https://www.w3schools.com/sql/)
- [Make a ReadMe file Web-based Editor](https://www.makeareadme.com/)
