import mysql.connector as SQL


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
					return True
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
       		"1) browse products\n" +
        	"2) browse deals\n" +
            "3) add a product to cart\n" +
            "4) add products in deal to cart\n" +
			"5) view coupons\n" +
			"6) check account balance\n" +
			"7) view cart\n" +
			"8) empty cart\n" +
			"9) checkout cart\n" +
			"10) upgrade customer status\n" +
			"11) Add amount to wallet\n" +
			"12) back")

while True:
	print_outer_menu()
	ch=int(input())
	if ch==1:
		if authenticate_admin():
			admin_menu()
		else:
			continue
	elif ch==2:
		if authenticate_customer():
			customer_menu()
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