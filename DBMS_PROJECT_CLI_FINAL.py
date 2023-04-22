import mysql.connector as SQL


mydb = SQL.connect(
    host="localhost",
    user="root",
    password="$ql12345",
    database="onlineretailstore"
)

mycursor = mydb.cursor()

admins={"Beff Jezos":"pwd1","Gill Bates":"pwd2"}
customers={}

def print_outer_menu():
	print("""Choose one of the following options:
	1. Login as Admin
	2. Login as Customer
	3. Sign up as Customer
	4. Login as Seller
	5. Sign up as Seller
	6. Explore product catalog
	7. Exit the application.
	""")


def authenticate_admin():
	while True:
		user=input("Enter your name: ")
		if user in admins:
			for i in range(3):
				pwd=input("Enter your password: ")		
				if admins[user]==pwd:
					return True
				elif i==2:
					print("Incorrect Password entered too many times! Redirecting to main menu...")
				else:
					print("Incorrect Password! Enter again! "+str(3-i-1)+" attempts left")
			return False
		else:
			print("Admin not found! Please enter valid name!")
	

def authenticate_customer():
	while True:
		user=input("Enter your email id: ")
		if user in customers:
			for i in range(3):
				pwd=input("Enter your password: ")		
				if customers[user]==pwd:
					mycursor.execute(f"select custid from customer where custname={user}")
					id=mycursor[0][0]
					return True,id
				elif i==2:
					print("Incorrect Password entered too many times! Redirecting to main menu...")
				else:
					print("Incorrect Password! Enter again! "+str(3-i-1)+" attempts left")
			return False
		else:
			print("Customer not found! Please enter valid email id!")

def customer_sign_up():
	while True:
		name=input("Enter email id: ")
		pwd=input("Enter password: ")
		if name not in customers:
			customers[name]=pwd
			print("Customer registered successfully!")
		else:
			print("Customer with same email id already registered! Enter valid email id! ")

def admin_menu():
	print("Please choose any one of the following actions:\n" +
                "1) Add category\n" +
                "2) Delete category\n" +
                "3) Add Product\n" +
                "4) Delete Product\n" +
                "5) Set Discount on Product\n" +
                "6) Back")

def customer_menu():
	print("Choose one of the following options:\n"+
       		"1) Browse products\n" +
            "2) Add a product to cart\n" +
			"3) View coupons\n" +
			"4) View cart\n" +
			"5) Empty cart\n" +
			"6) Checkout cart\n" +
			"7) Back")


def checkout_cart(custid):
    mycursor.execute(f"SELECT productid,productname,productprice FROM cart JOIN product ON cart.productid=product.productid WHERE custid={custid}")
    cart_items = mycursor.fetchall()
    if not cart_items:
        print("Your cart is empty.")
        return
    total_price = 0
    print("Cart Items:")
    for item in cart_items:
        print("Product id = " + str(item[0]) + '\t' + "Product name: " + item[1] + '\t' + "Product price: " + str(item[2]))
        total_price += item[2]
    print("Total price: " + str(total_price))
    confirm = input("Do you want to checkout? (y/n)")
    if confirm.lower() == 'y':
        # Add the cart items to the order table
        mycursor.execute(f"INSERT INTO orders(custid, orderdate, totalamount) VALUES ({custid}, NOW(), {total_price})")
        order_id = mycursor.lastrowid
        for item in cart_items:
            mycursor.execute(f"INSERT INTO orderitems(orderid, productid, quantity, unitprice) VALUES ({order_id}, {item[0]}, 1, {item[2]})")
        mydb.commit()
        print(f"Order placed successfully for Customer ID + {custid}!")
        # Empty the cart once ordered successfully
        mycursor.execute(f"DELETE FROM cart WHERE custid={custid}")
        mydb.commit()
	

while True:
	print_outer_menu()
	ch=int(input())
	if ch==1:		#login as admin
		if authenticate_admin():
			while True:
				admin_menu()
				ch=int(input())
				if ch==1:	#add category
					cat_name=input("Enter category name: ")
					mycursor.execute("insert into productcategory(categoryname) values("+cat_name+");")
				elif ch==2:		#delete category
					cat_name=input("Enter category name: ")
					mycursor.execute(f"delete from product where productid in (select productid from product where categoryid in(select categoryid from productcategory where categoryname={cat_name}) )")
					mycursor.execute(f"delete from productcategory where categoryname={cat_name}")
				elif ch==3:		#add product 
					prod_name=input("Enter product name: ")
					prod_brand=input("Enter brand name: ")
					quant=int(input("Enter available quantity: "))
					price=float(input("Enter product price: "))
					desc=input("Enter product description: ")
					cat=int(input("Enter category id: "))
					s_id=int(input("Enter seller id: "))
					mycursor.execute(f"insert into product(productname,productbrand,availableqty,productreviews,productdescription,productprice,catefgoryid,sellerid) values({prod_name}{prod_brand},{quant},5,{desc},{cat},{s_id});")
				elif ch==4:		#delete product
					prod_name=input("Enter product name: ")
					mycursor.execute(f"delete from product where productid in (select product id from product where productname={prod_name})")
				elif ch==5:		#add discount on product
					prod_name=input("Enter product name: ")
					disc=int(input("Enter discount percentage: "))
					mycursor.execute(f"update product set productprice=((100-{disc})*productprice)/100;")
				elif ch==6:
					break
				else:
					# invalid_input_msg()

	elif ch==2:		#login as customer
		k,custid=authenticate_customer()
		if k:
			while True:
				customer_menu()
				ch=int(input())
				if ch==1:	#browse products
					mycursor.execute("Select productid,productname, productbrand, productprice from product limit 15;")
					for i in mycursor:
						print("Product id = "+i[0]+'\t'+"Product name: "+i[1]+'\t'+"Brand name: "+i[2]+'\t'+"Product price = ₹"+i[3])
					print('\n')
				elif ch==2:		#add prod to cart
					prod_id=int(input("Enter product id: "))
					prod_name=input("Enter product name: ")
					quant=int(input("Enter product quantity: "))
					mycursor.execute(f"select min(productprice) from product where productid={prod_id};")
					price=mycursor[0][0]
					mycursor.execute(f"insert into cart(productid,custid,product_name,product_quantity,cost) values({prod_id},{custid},{prod_name},{quant},{price});")
				elif ch==3:		#view coupons(CHECK THIS AFTER CHANGING DB)
					mycursor.execute("select coupon_id,coupon_discount,expiry_date from coupon LIMIT 10")
					for i in mycursor:
						print("Coupon id: "+i[0]+'\t'+"Coupon discount: "+i[1]+"%"+'\t'+"Expiry date: "+i[2])
				elif ch==4:		#view cart
					mycursor.execute(f"Select productid, product_name,product_quantity,cost from cart where custid={custid};")
					for i in mycursor:
						print("Product id: "+i[0]+'\t'+"Product name: "+i[1]+'\t'+"Quantity: "+i[2]+'\t'+"Cost = "+i[3])
				elif ch==5:		#empty cart
					mycursor.execute(f"delete from cart where custid={custid};")
					print("Cart emptied succesfully!\n")
				elif ch==6:		#checkout cart
					#place order
					c_id = int(input("Enter the customer ID: "))
					checkout_cart(c_id)
				elif ch==7:		#back
					break
				else:
					invalid_input_msg()
		else:
			continue
	elif ch==3:
		customer_sign_up()
	elif ch==4:
		authenticate_seller()
	elif ch==5:
		seller_sign_up()
	elif ch==6:
		print_catalog()
	elif ch==7:
		exit_msg()
		break
	else:
		invalid_input_msg()
