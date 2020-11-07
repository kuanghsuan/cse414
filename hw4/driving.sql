-- a. Translate the diagram above by writing the SQL
-- CREATE TABLE statements to represent this E/R diagram. Include all key constraints; you should specify both primary and foreign keys.

CREATE TABLE InsuranceCo
(
    name VARCHAR(30) Primary key,
    phone INT
);

CREATE TABLE Person
(
    ssn INT Primary key,
    name VARCHAR(30)
);

CREATE TABLE Driver
(
    ssn INT Primary key references Person(ssn),
    driverID INT
);

CREATE TABLE NonProfessionalDriver
(
    ssn INT Primary key references Driver(ssn)
);

CREATE TABLE ProfessionalDriver
(
    ssn INT Primary key references Driver(ssn),
    medicalHistory VARCHAR(100)
);

CREATE TABLE Vehicle
(
    licensePlate VARCHAR(30) PRIMARY KEY,
    year INT,
    name VARCHAR(30),
    ssn INT,
    maxLiability REAL,
    FOREIGN KEY(name) REFERENCES InsuranceCo(name),
    FOREIGN KEY(ssn) REFERENCES Person(ssn)
);


CREATE TABLE Car
(
    licensePlate VARCHAR (30) PRIMARY KEY REFERENCES Vehicle(licensePlate),
    make VARCHAR(10)
);


CREATE TABLE Truck
(
    licensePlate VARCHAR (30) PRIMARY KEY REFERENCES Vehicle(licensePlate),
    capacity VARCHAR(10),
    ssn INT,
    FOREIGN KEY(ssn) REFERENCES ProfessionalDriver(ssn)
);

CREATE TABLE Drives
(
    licensePlate VARCHAR (30) REFERENCES Car(licensePlate),
    ssn INT REFERENCES NonProfessionalDriver(ssn),
    PRIMARY KEY(ssn, licensePlate)
);



-- b. Which relation in your relational schema represents the relationship "insures" in the E/R diagram? Why is that your representation?

-- (ans) I use the Vehicle table to represent the "insures" relationship. Since "insures" is a N to 1 relationship,
--       I can use a foreign key in relation vehicle to save one table.

-- c. Compare the representation of the relationships "drives" and "operates" in your schema, and explain why they are different.

-- (ans) In my schema,
--       "drives" is a N to N relationship, 
--       a car can be driven by multiple non professional drivers and a non professional drivers can drive several different car.
--       "operates" is a N to 1 relationship,
--       a professional driver can operate several trucks. However, one truck can only be operated by one specific professional driver.