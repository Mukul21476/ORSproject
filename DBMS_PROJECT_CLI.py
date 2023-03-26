import mysql.connector





def olap_print():
    for i in mycursor:
        print(i[0],i[1],i[2],sep='\t')
    print("===============================================================================================================")

def query_print():
    for res in mycursor:
        print(res[0],res[1],sep='\t')
    print("===============================================================================================================")


mydb = mysql.connector.connect(
    host="localhost",
    user="root",
    password="$ql12345",
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


olap_query1="""select productname, categoryname, sum(availableqty)
from product,productcategory
where product.categoryid=productcategory.categoryid
group by productname,categoryname with rollup
limit 10;"""

olap_query2="""select order_status, month(order_date_time) as mon, sum(order_amount)
from orders
group by order_status, month(order_date_time) with rollup
limit 10;"""

olap_query3="""select productname, productbrand, sum(productprice)
from product
group by productname, productbrand with rollup
order by sum(productprice) desc
limit 10;"""

olap_query4="""select product_name, product_quantity, avg(cost)
from cart, product
where cart.productid=product.productid
group by product_name, product_quantity with rollup
limit 10;"""
#CLI
while True:
    print("""Choose one of the following options:
            1. Get top 5 products based on their total quantity sold 
            2. Get top 10 highly reviewed electronics products
            3. Olap query 1
            4. Olap query 2
            5. Olap query 3
            6. Olap query 4
            7. Exit""")
    a=int(input())
    if a==1:
        mycursor.execute(query1)
        #print("Product Name","Total Sold",sep='\t')
        query_print()
    elif a==2:
        mycursor.execute(query2)
        print("Product Name","Average Reviews",sep='\t')
        query_print()
    elif a==3:
        mycursor.execute(olap_query1)
        print("Product Name","Category Name","Sum(AvailableQty)",sep='\t')
        olap_print()
    elif a==4:
        mycursor.execute(olap_query2)
        print("Order Status","Month","Sum(Order_amt)",sep='\t')
        olap_print()
    elif a==5:
        mycursor.execute(olap_query3)
        print("Product Name","Product Brand","Sum(product price)",sep='\t')
        olap_print()
    elif a==6:
        mycursor.execute(olap_query4)
        print("Product Name","Product Quantity","Avg(cost)",sep='\t')
        olap_print()
    elif a==7:
        print("THANK YOU FOR USING ONLINE RETAIL STORE!")
        break
    else:
        print("Invalid Input!")
    print('\n')
# ---------------------------------------------------------------------------------------------------------------------
# jfkr
