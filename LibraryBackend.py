import psycopg2

conn = psycopg2.connect("host='Localhost' dbname='Library' user='postgres' password='postgres'")
cur = conn.cursor()

#Shows all Customers
def Show_All_Customers():
    cur.execute("SELECT * FROM Customers")
    customer = cur.fetchall()
    for i in customer:
        print(i)

#Shows all Books
def Show_All_Books():
    cur.execute("SELECT * FROM Books")
    books = cur.fetchall()
    for i in books:
        print(i)

#Shows all Authors
def Show_All_Author():
    cur.execute("SELECT * FROM Authors")
    author = cur.fetchall()
    for i in author:
        print(i)

#Shows all Loans
def Show_All_Loans():
    cur.execute("SELECT * FROM Loans")
    loans = cur.fetchall()
    for i in loans:
        print(i)    


#Shows the infos of a Customer on the basis of the CustomerID
def Show_Specific_Customer(customerID):
    cur.execute(f"SELECT * FROM Customers WHERE CustomerID = {customerID}")
    customer = cur.fetchall()
    for i in customer:
        print(i)

#Show_Specific_Customer(customerID = input("Geben sie die ID des Kunden ein: ")) # How to ouput a Specific Customer with their ID