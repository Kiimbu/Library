-- Drop all tables if they exist (in correct dependency order)
DROP TABLE IF EXISTS Loans;
DROP TABLE IF EXISTS Books;
DROP TABLE IF EXISTS Author;
DROP TABLE IF EXISTS Customers;

-- Create Customers table
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

-- Create Author table
CREATE TABLE IF NOT EXISTS Author(
    AuthorID SERIAL PRIMARY KEY,
    Firstname VARCHAR(255),
    Lastname VARCHAR(255)
);

-- Create Books table
CREATE TABLE IF NOT EXISTS Books(
    BookID SERIAL PRIMARY KEY,
    ISBN INTEGER,
    Name VARCHAR(255),
    NumberOfPages INTEGER,
    PublishingHouse VARCHAR(255),
    AuthorID INTEGER
);

-- Create Loans table
CREATE TABLE IF NOT EXISTS Loans(
    LoanID SERIAL PRIMARY KEY,
    CustomerID INTEGER,
    BookID INTEGER,
    LoanStartDate DATE,
    LoanEndDate DATE
);

-- Add foreign key constraints to Loans table
ALTER TABLE Loans
ADD CONSTRAINT Loans_fk_CustomerID FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID),
ADD CONSTRAINT Loans_fk_BookID FOREIGN KEY (BookID) REFERENCES Books(BookID);

-- Add foreign key constraint to Books table
ALTER TABLE Books
ADD CONSTRAINT Books_fk_AuthorID FOREIGN KEY (AuthorID) REFERENCES Author(AuthorID);

-- Insert sample data into Customers
INSERT INTO Customers (Firstname, Lastname, Age, EMail, Street, Housenumber, City, Zipcode) VALUES
('Anna', 'Schmidt', 34, 'anna.schmidt@example.com', 'Hauptstraße', 12, 'Berlin', 10115),
('Tom', 'Müller', 45, 'tom.mueller@example.com', 'Bahnhofstraße', 8, 'Hamburg', 20095),
('Lisa', 'Klein', 29, 'lisa.klein@example.com', 'Marktplatz', 3, 'Köln', 50667);

-- Insert sample data into Author
INSERT INTO Author (Firstname, Lastname) VALUES
('Johannes', 'Becker'),
('Miriam', 'Neumann'),
('Felix', 'Hartmann');

-- Insert sample data into Books
INSERT INTO Books (ISBN, Name, NumberOfPages, PublishingHouse, AuthorID) VALUES
(9783456789012, 'Der Schattenwald', 320, 'Buchhaus Verlag', 1),
(9781234567890, 'Die verlorene Zeit', 280, 'Literatur & Co.', 2),
(9789876543210, 'Reise durch die Sterne', 400, 'NovaBooks', 3);

-- Insert sample data into Loans
INSERT INTO Loans (CustomerID, BookID, LoanStartDate, LoanEndDate) VALUES
(1, 2, '2025-11-01', '2025-11-15'),
(2, 1, '2025-10-20', '2025-11-03'),
(3, 3, '2025-11-10', '2025-11-24');