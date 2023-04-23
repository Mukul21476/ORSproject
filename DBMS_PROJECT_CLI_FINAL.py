import mysql.connector as SQL
import random,datetime
from datetime import datetime,timedelta,date


mydb = SQL.connect(
    host="localhost",
    user="root",
    password="$ql12345",
    database="onlineretailstore"
)

mycursor = mydb.cursor()


def invalid_input_msg():
	print("Invalid input! Enter again!")

def exit_msg():
	print("Thank you for using Online Retail Store! Exiting the application...")

def print_catalog():
	mycursor.execute("Select productid,productname, productbrand, productprice from product limit 15;")
	for i in mycursor:
		print("Product id = "+str(i[0])+'\t'+"Product name: "+str(i[1])+'\t'+"Brand name: "+str(i[2])+'\t'+"Product price = ₹"+str(i[3]))
	print('\n')

def print_outer_menu():
	print("""Choose one of the following options:
	1. Login as Admin
	2. Login as Customer
	3. Sign up as Customer
	4. Register to be a Seller
	5. Explore product catalog
	6. Exit the application.
	""")



def authenticate_admin():
	while True:
		user=input("Enter your name: ")
		#CHECK THIS ONCE
		mycursor.execute(f"select adminpassword from admindata where adminname='{user}';")
		p=mycursor.fetchall()
		if p:
			for i in range(3):
				pwd=input("Enter your password: ")		
				if p[0][0]==pwd:
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
		mycursor.execute(f"Select customerpassword from customer where emailaddress='{user}';")
		p=mycursor.fetchall()
		if p:
			for i in range(3):
				pwd=input("Enter your password: ")		
				if p[0][0]==pwd:
					mycursor.execute(f"select custid,custname from customer where emailaddress='{user}'")
					data=mycursor.fetchall()
					id=data[0][0]
					name=data[0][1]
					print(f"Welcome {name}!!\n")
					return True,id
				elif i==2:
					print("Incorrect Password entered too many times! Redirecting to main menu...")
				else:
					print("Incorrect Password! Enter again! "+str(3-i-1)+" attempts left")
			return False,-1
		else:
			print("Customer not found! Please enter valid email id!")

def customer_sign_up():
	while True:
		name=input("Enter your name: ")
		num=input("Enter your phone number: ")
		mail=input("Enter email id: ")
		addr=input("Enter your address: ")
		saved_payment=input("Enter payment method you would like to save: (Enter '-' if you don't want to save any payment method)")
		membership=input("Choose your customer membership: (Silver, GOld, Platinum)")
		pwd=input("Enter password: ")
		mycursor.execute(f"select custid from customer where emailaddress='{mail}';")
		customers=mycursor.fetchall()
		if not customers:
			mycursor.execute(f"Insert into customer(custname,phonenumber,emailaddress,custaddr,savedpaymentmethod,custmembership,customerpassword) values('{name}','{num}','{mail}','{addr}','{saved_payment}','{membership}','{pwd}');")
			mydb.commit()
			print("Customer registered successfully!")
			break
		else:
			print("Customer with same email id already registered! Enter valid email id! ")

# def authenticate_seller():
# 	while True:
# 		user=input("Enter your name: ")
# 		if user in sellers:
# 			for i in range(3):
# 				pwd=input("Enter your password: ")		
# 				if sellers[user]==pwd:
# 					return True
# 				elif i==2:
# 					print("Incorrect Password entered too many times! Redirecting to main menu...")
# 				else:
# 					print("Incorrect Password! Enter again! "+str(3-i-1)+" attempts left")
# 			return False
# 		else:
# 			print("Seller not found! Please enter valid name!")

def seller_sign_up():
	user=input("Enter your name: ")
	addr=input("Enter your address: ")
	mycursor.execute(f"Insert into seller(seller_name,seller_address) values('{user}','{addr}');")
	mydb.commit()

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
			"3) Add a product to wishlist\n"+
			"4) View coupons\n" +
			"5) View cart\n" +
			"6) Empty cart\n" +
			"7) View wishlist\n"+
			"8) Empty wishlist\n"+
			"9) Checkout cart\n" +
			"10) Back")


def checkout_cart(custid, delivery_address):
	# Getting the cart items
	mycursor.execute(f"SELECT productid, product_name, cost, product_quantity FROM cart WHERE custid={custid}")
	cart_items = mycursor.fetchall()

	# Checking if cart is empty
	if not cart_items:
		print("Your cart is empty.")
		return

	# Checking if items are out of stock
	for item in cart_items:
		product_id, productname, cost, qty = item
		mycursor.execute(f"SELECT AvailableQty FROM product WHERE productid = {product_id}")
		available_qty = mycursor.fetchone()[0]
		if qty > available_qty:
			print(f"{item[1]} is out of stock. Only {available_qty} available.")
			return

	# Calculating total price and quantity
	total_price = sum(item[2]*item[3] for item in cart_items)
	total_qty = sum(item[3] for item in cart_items)

	# Determine the customer membership and set expected delivery date
	today = date.today()
	mycursor.execute(f"SELECT CustMembership FROM customer WHERE custid={custid}")
	cust_m = mycursor.fetchone()[0]
	if cust_m == "Gold":
		exp_dd = today + timedelta(days=2)
		shipr = "Jason Stone"
	elif cust_m == "Platinum":
		exp_dd = today + timedelta(days=1)
		shipr = "Samantha Harrison"
	elif cust_m == "Silver":
		exp_dd = today + timedelta(days=3)
		shipr = "Angela Frazier"
	else:
		exp_dd = today + timedelta(days=5)
		shipr = "Regina Hall"


	# Getting coupon details (if applicable)
	coupon_id = None
	coupon_discount = 0
	coupon_expiry = None
	coupon_code = input("Enter coupon code/ coupon id (if applicable): ")
	if coupon_code:
		mycursor.execute(f"SELECT coupon_id, coupon_discount, expiry_date FROM coupons WHERE coupon_id='{coupon_code}'")
		coupon = mycursor.fetchone()
		if coupon:
			coupon_id, coupon_discount, coupon_expiry = coupon
			if coupon_expiry < date.today():
				print("Coupon has expired.")
			
			else:
				print("Coupon applied successfully!")
				
		else:
			print("Invalid coupon code.")

	# Calculating final price
	final_price = total_price - ((total_price * coupon_discount)/100)

	# Insert order details into Orders table
	order_date_time = datetime.now().strftime('%Y-%m-%d %H:%M:%S')
	payment_mode = input("Enter payment mode (e.g. credit card, PayPal, etc.): ")
	tracking_id = random.randint(150,1000)
	mycursor.execute(f"INSERT INTO Orders (order_date_time, delivery_address, order_status, order_amount, payment_mode, coupon_id, tracking_id) VALUES ('{order_date_time}', '{delivery_address}', 'Order Placed', {final_price}, '{payment_mode}', {coupon_id}, '{tracking_id}')")
	order_id = mycursor.lastrowid

	# Insert into OrderHistory table
	mycursor.execute(f"INSERT INTO OrderHistory (CustomerID, Order_id) VALUES ({custid}, {order_id})")
	# Insert into order_details table
	mycursor.execute(f"INSERT INTO order_details (shipper_name,location,expected_delivery_date) VALUES ({shipr},{delivery_address},{exp_dd})")

	# Update product quantities
	for item in cart_items:
		product_id, productname, cost, qty = item
		mycursor.execute(f"UPDATE product SET AvailableQty = AvailableQty - {qty} WHERE id = {product_id}")

	# Empty the cart
	mycursor.execute(f"DELETE FROM cart WHERE custid={custid}")

	mydb.commit()

	print(f"Order placed successfully! Total amount: {final_price}, Total quantity: {total_qty}")






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
					mycursor.execute("insert into productcategory(categoryname) values('"+cat_name+"');")
					mydb.commit()
				elif ch==2:		#delete category
					cat_name=input("Enter category name: ")
					mycursor.execute(f"delete from product where categoryid in(select categoryid from productcategory where categoryname='{cat_name}');")
					mycursor.execute(f"delete from productcategory where categoryname='{cat_name}'")
					mydb.commit()
				elif ch==3:		#add product 
					prod_name=input("Enter product name: ")
					prod_brand=input("Enter brand name: ")
					quant=int(input("Enter available quantity: "))
					price=float(input("Enter product price: "))
					desc=input("Enter product description: ")
					cat=int(input("Enter category id: "))
					s_id=int(input("Enter seller id: "))
					mycursor.execute(f"insert into product(productname,productbrand,availableqty,productreviews,productdescription,productprice,categoryid,productseller) values('{prod_name}','{prod_brand}',{quant},5,'{desc}',{price},{cat},{s_id});")
					mydb.commit()				
				elif ch==4:		#delete product
					prod_name=input("Enter product name: ")
					mycursor.execute(f"delete from product where productname='{prod_name}'")
					mydb.commit()
				elif ch==5:		#add discount on product
					prod_name=input("Enter product name: ")
					disc=int(input("Enter discount percentage: "))
					mycursor.execute(f"update product set productprice=((100-{disc})*productprice)/100;")
					mydb.commit()
				elif ch==6:
					break
				else:
					invalid_input_msg()
		else:
			continue
	elif ch==2:		#login as customer
		k,custid=authenticate_customer()
		if k:
			while True:
				customer_menu()
				ch=int(input())
				if ch==1:	#browse products
					print_catalog()
				elif ch==2:		#add prod to cart
					prod_id=int(input("Enter product id: "))
					prod_name=input("Enter product name: ")
					quant=int(input("Enter product quantity: "))
					mycursor.execute(f"select min(productprice) from product where productid={prod_id};")
					price=mycursor.fetchall()[0][0]
					mycursor.execute(f"insert into cart(productid,custid,product_name,product_quantity,cost) values({prod_id},{custid},'{prod_name}',{quant},{price});")
					mydb.commit()
					print("Product added to cart successfully!\n")
				elif ch==3:		#add prod to wishlist
					prod_id=int(input("Enter product id: "))
					prod_name=input("Enter product name: ")
					mycursor.execute(f"insert into wishlist(productid,productname,customerid) values({prod_id},'{prod_name}',{custid})")
					mydb.commit()
					print("Product added to wishlist successfully!\n")
				elif ch==4:		#view coupons(CHECK THIS AFTER CHANGING DB)
					mycursor.execute(f"Select custmembership from customer where custid={custid};")
					membership=mycursor.fetchone()[0]
					mycursor.execute(f"select coupon_id,coupon_discount,expiry_date from coupons where c_membership='{membership}' AND expiry_date>DATE(NOW()) LIMIT 10")
					flag=0
					for i in mycursor:
						flag=1
						print("Coupon id: "+str(i[0])+'\t'+"Coupon discount: "+str(i[1])+"%"+'\t'+"Expiry date: "+str(i[2]))
					if flag==0:
						print("You don't have any coupons right now. Check back later!\n")
				elif ch==5:		#view cart
					mycursor.execute(f"Select productid, product_name,product_quantity,cost from cart where custid={custid};")
					for i in mycursor:
						print("Product id: "+str(i[0])+'\t'+"Product name: "+str(i[1])+'\t'+"Quantity: "+str(i[2])+'\t'+"Cost = "+str(i[3]))
				elif ch==6:		#empty cart
					mycursor.execute(f"delete from cart where custid={custid};")
					mydb.commit()
					print("Cart emptied succesfully!\n")
				elif ch==7:		#view wishlist
					mycursor.execute(f"Select productid, product_name from wishlist where customerid={custid}")
					for i in mycursor:
						print("Product id: "+str(i[0])+'\t'+"Product name: "+str(i[1]))
				elif ch==8:		#empty wishlist
					mycursor.execute(f"delete from wishlist where customerid={custid}")
					mydb.commit()
					print("Wishlist emptied successfully!\n")
				elif ch==9:		#checkout cart
					#place order
					addr=input("Enter the delivery address: ")
					checkout_cart(custid,addr)
				elif ch==10:		#back
					break
				else:
					invalid_input_msg()

		else:
			continue
	elif ch==3:		#sign up as customer
		customer_sign_up()
	elif ch==4:		#register as seller
		seller_sign_up()
	elif ch==5:		#product catalog
		print_catalog()
	elif ch==6:		#exit
		exit_msg()
		break
	else:
		invalid_input_msg()