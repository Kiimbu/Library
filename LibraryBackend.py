import psycopg2

conn = psycopg2.connect("host='Localhost' dbname='Library' user='postgres' password='postgres'")
cur = conn.cursor()


def Show_All_Customers():
    cur.execute("SELECT * FROM Customers;")
    customer = cur.fetchall()
    for i in customer:
        print(i)

def Show_Specific_Customer(customerID):
    cur.execute(f"SELECT * FROM Customers WHERE CustomerID = {customerID}")
    customer = cur.fetchall()
    for i in customer:
        print(i)

#Show_Specific_Customer(customerID = input("Geben sie die ID des Kunden ein: ")) # How to ouput a Specific Customer with their ID