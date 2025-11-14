CREATE TABLE IF NOT EXISTS Customers(
    CustomerID PRIMARY KEY,
    Firstname VARCHAR(255),
    Lastname VARCHAR(255),
    Age INTEGER,
    E-Mail VARCHAR(255),
    Street VARCHAR(255),
    Housenumber INTEGER,
    City VARCHAR(255),
    Zipcode INTEGER
);

CREATE TABLE IF NOT EXISTS Books(
    BookID PRIMARY KEY,
    ISBN INTEGER,
    Name VARCHAR(255),
    NumberOfPages INTEGER,
    PublishingHouse VARCHAR(255),
    Author_ID INTEGER
);

CREATE TABLE IF NOT EXISTS Author(
    AuthorID PRIMARY KEY,
    Fistname VARCHAR(255),
    Lastname VARCHAR(255)
);

CREATE TABLE IF NOT EXISTS Loans(
    LoanID PRIMARY KEY,
    CustomerID INTEGER,
    BookID INTEGER,
    LoanStartDate DATE,
    LoanEndDate DATE
);