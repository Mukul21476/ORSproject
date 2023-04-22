import mysql.connector as SQL


admins={"Beff Jezos":"pwd1","Gill Bates":"pwd2"}


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
	user=input("Enter your name: ")
	pwd=input("Enter your password: ")
	if user in admins:
		if admins[user]==pwd:
			return True
		else:
			print("Incorrect Password! Enter again!")
	else:
		print("Admin not found! Please enter valid name!")
	

def authenticate_customer():
	user=input("Enter username: ")
	pwd=input("Enter password: ")

def customer_sign_up():
	name=input("Enter name: ")
	pwd=input("Enter password: ")

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
		authenticate_admin()
	elif ch==2:
		authenticate_customer()
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