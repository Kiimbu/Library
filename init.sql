CREATE TABLE IF NOT EXISTS Customers(
    CustomerID SERIAL PRIMARY KEY,
    Firstname VARCHAR(255),
    Lastname VARCHAR(255),
    Age INTEGER,
    EMail VARCHAR(255),
    Street VARCHAR(255),
    Housenumber INTEGER,
    City VARCHAR(255),
    Zipcode INTEGER
);

CREATE TABLE IF NOT EXISTS Books(
    BookID SERIAL PRIMARY KEY,
    ISBN INTEGER,
    Name VARCHAR(255),
    NumberOfPages INTEGER,
    PublishingHouse VARCHAR(255),
    AuthorID INTEGER
);

CREATE TABLE IF NOT EXISTS Author(
    AuthorID SERIAL PRIMARY KEY,
    Firstname VARCHAR(255),
    Lastname VARCHAR(255)
);

CREATE TABLE IF NOT EXISTS Loans(
    LoanID SERIAL PRIMARY KEY,
    CustomerID INTEGER,
    BookID INTEGER,
    LoanStartDate DATE,
    LoanEndDate DATE
);


ALTER TABLE Loans
ADD CONSTRAINT Loans_fk_CustomerID FOREIGN KEY(CustomerID) REFERENCES Customers(CustomerID),
ADD CONSTRAINT Loans_fk_BookID FOREIGN KEY(BookID) REFERENCES Books(BookID);

ALTER TABLE Books
ADD CONSTRAINT Books_fk_AuthorID FOREIGN KEY(AuthorID) REFERENCES Author(AuthorID);


