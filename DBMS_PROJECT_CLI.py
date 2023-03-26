import mysql.connector

mydb = mysql.connector.connect(
    host="localhost",
    user="root",
    password="muk3itd",
    database="onlineretailstore"
)

mycursor = mydb.cursor()

# embedded queries
query1= '''
    SELECT Product.ProductName, SUM(Cart.product_quantity) AS total_sold
    FROM Product
    JOIN Cart ON Product.ProductID = Cart.ProductID
    GROUP BY Product.ProductID
    ORDER BY total_sold DESC
    LIMIT 5
'''

query2 = '''
    SELECT Product.ProductName, AVG(Product.ProductReviews) AS avg_reviews
    FROM Product
    JOIN ProductCategory ON Product.categoryID = ProductCategory.CategoryID
    WHERE ProductCategory.CategoryName = 'Electronics'
    GROUP BY Product.ProductID
    HAVING AVG(Product.ProductReviews) > 4.0
    ORDER BY AVG(Product.ProductReviews) DESC
    LIMIT 10
'''


#CLI
while True:
    print("""Choose one of the following options:
            1. Get product name and quantity sold
            2. Get product name and average reviews
            3. Exit""")
    a=int(input())
    if a==1:
        mycursor.execute(query1)
        for result in mycursor:
            print(result)
        print("===============================================================================================================")
    elif a==2:
        mycursor.execute(query2)
        for res in mycursor:
            print(res)
        print("===============================================================================================================")
    elif a==3:
        print("THANK YOU FOR USING ONLINE RETAIL STORE!")
        break
    else:
        print("Invalid Input!")
# ---------------------------------------------------------------------------------------------------------------------
