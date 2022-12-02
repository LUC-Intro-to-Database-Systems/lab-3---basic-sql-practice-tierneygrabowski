DROP DATABASE IF EXISTS lab_3;
CREATE DATABASE lab_3;
USE lab_3;
CREATE TABLE CLIENT (
    clientID INT NOT NULL AUTO_INCREMENT,
    client_name VARCHAR(55) NOT NULL,
    client_address VARCHAR(55) NOT NULL,
    client_age INT NOT NULL,
    PRIMARY KEY (clientID)
);
INSERT INTO client (clientID, client_name, client_address, client_age)
VALUES
	(1,	'James Clark',	'1001 Plymouth Ave',	38),
	(2,	'Leah Nicole',	'2401 Chicago Ave #212',	36),
	(3,	'Silas Alexander',	'5012 Humboldt Lane',	22),
	(4,	'Noah Charles',	'501 College Ave.',	25),
	(5,	'Chris Isaac',	'228 e, 149th st.',	37),
	(6,	'Noah Charles',	'501 College Ave.',	25),
	(7,	'Brittney Owens',	'321 Thursday Ave.', 42),
	(8,	'Kurt Douglas',	'123 Mt. Glenwood',	58),
	(9,	'Areta Farries',	'789 Touy Ave.' ,	62 ),
	(10,	'Jessica Daniel',	'698 Featherstone',	47),
	(11,	'Gary Moore',	'698 Featherstone',	48),
	(12,	'Elnora Daniel',	'698 Featherstone',	61),
	(13,	'Daniel Moore',	'698 Featherstone',	22),
	(14,	'Cheryl Pearson',	'228 e 149th st.',	67);

CREATE TABLE POLICY (
    policyID INT NOT NULL AUTO_INCREMENT,
    policyType VARCHAR(55) NOT NULL,
    policyTerm VARCHAR(45) NOT NULL,
    policyLimits VARCHAR(100) NOT NULL,
    PRIMARY KEY (policyID)
);
INSERT INTO policy(policyID, policyType, policyTerm, policyLimits)
VALUES
(1,	'Home',	'yearly',	"$100,000 "),
(2,	'Home',	'yearly',	"$250,000 "),
(3,	'Home',	'yearly',	"$500,000 "),
(4,	'Home',	'yearly',	"$1,000,000 "),
(5,	'Home',	'6-month',	"$100,000 "),
(6,	'Home',	'6-month',	"$250,000 "),
(7,	'Home',	'6-month',	"$500,000 "),
(8,	'Home',	'6-month',	"$1,000,000 "),
(9,	'Car',	'yearly',	"$60,000 "),
(10,'Car',	'yearly',	"$120,000 "),
(11,'Car',	'6-month',	"$60,000 "),
(12,'Car',	'6-month',	"$120,000 ");

CREATE TABLE POLICY_LIST (
    CLIENT_clientID INT NOT NULL,
    POLICY_policyID INT NOT NULL,
    FOREIGN KEY (CLIENT_clientID)
        REFERENCES CLIENT (clientID)
        ON DELETE CASCADE,
    FOREIGN KEY (POLICY_policyID)
        REFERENCES POLICY (policyID)
        ON DELETE CASCADE
);
INSERT INTO POLICY_LIST (CLIENT_clientID, POLICY_policyID)
VALUES
(2,	1),
(9,	1),
(13,	1),
(2,	4),
(5,	4),
(8,	5),
(14,	6),
(11,	7),
(1,	8),
(3,	8),
(7,	9),
(1,	10),
(3,	10),
(7,	10),
(10,	10),
(6,	11),
(4,	12);
 
 /* 1. Write the SQL command to list all clients and all the columns pertaining to a client. */
SELECT 
    *
FROM
    CLIENT;

/* 2. Write the SQL command to change client Chris Isaac to Chris Pearson. */
UPDATE CLIENT 
SET 
    client_name = 'Chris Pearson'
WHERE
    clientID = 5;

/* 3.Write the SQL command to display all policies that have a policy type of 'Home'.*/
SELECT 
    *
FROM
    POLICY
WHERE
    policyType = 'home';

/* 4. Write the SQL command to display all columns for policies that have yearly terms. */
SELECT 
    *
FROM
    POLICY
WHERE
    policyTerm = 'yearly';
 
 /* 5. Write the SQL command that displays the client name, address, and age sorted by age in descending order in the figure below */

SELECT 
    client_name, client_address, client_age
FROM
    CLIENT
ORDER BY (client_age) DESC;

/* 6. Write the SQL command that calculates the average age of all clients. */

SELECT 
    AVG(client_age)
FROM
    CLIENT;

/* 7. Write the SQL command that lists the name and age of clients who are between the ages of 22 and 40. */  

SELECT 
    clientID, client_name, client_age
FROM
    CLIENT
WHERE
    client_age BETWEEN 22 AND 40;

/* 8. Write the SQL command that lists all home policies that have a policy limit under $250,000. */  

SELECT 
    *
FROM
    policy
WHERE
    policyType = 'home'
        AND policyLimits <= '$250,000';

  /* 9. Write the SQL command that lists the client's name and address for all addresses that contain 'Featherstone' and order by age in ascending order. */   
SELECT 
    client_name, client_address
FROM
    client
WHERE
    client_address = '698 Featherstone'
ORDER BY (client_age) ASC;

 /* 10. Write the SQL command that lists the name, address, and age of clients who are age 35 and above and whose address contains the number 8. */  
SELECT 
    client_name, client_address, client_age
FROM
    CLIENT
WHERE
    client_age > 35
        AND client_address LIKE '%8%';
/* 11. Write the SQL command that returns the total # of policies offered. */  
SELECT 
    COUNT(*) AS 'Total Count'
FROM
    policy;

/* 12. Write the SQL command that returns the policy type and the total count of policies by type. */  
SELECT 
    policytype, COUNT(policyType) AS 'Count of Policies'
FROM
    POLICY
GROUP BY policyType;

/* 13. Write the SQL command that returns the youngest and oldest client. */ 

SELECT 
    MIN(client_age) AS 'Youngest Client',
    MAX(client_age) AS 'Oldest Client'
FROM
    CLIENT;

/* 14. Write the SQL command that lists all clients that have a home insurance policy. */ 

SELECT 
    *
FROM
    CLIENT
        INNER JOIN
    policy ON client.clientID = policy.policyID
WHERE
    policyType = 'home';

/* 15. Write the SQL command that lists all of the instances of a policy where the client ID is equal to #2 */

SELECT 
    *
FROM
    CLIENT
        INNER JOIN
    policy ON client.clientID = policy.policyID
WHERE
    client.clientID = 2;
/* Extra Credit. Write the SQL command that lists all of the instances of a policy where the client ID is equal to #2 */

SELECT 
    *
FROM
    CLIENT
        INNER JOIN
    policy ON client.clientID = policy.policyID;
