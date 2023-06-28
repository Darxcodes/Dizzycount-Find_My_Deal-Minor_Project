from bs4 import BeautifulSoup
import requests

# Function to extract Product Title
def get_title(soup):
	
	try:
		# Outer Tag Object
		title = soup.find("span", attrs={"id":'productTitle'})

		# Inner NavigableString Object
		title_value = title.string

		# Title as a string value
		title_string = title_value.strip()

		# # Printing types of values for efficient understanding
		# print(type(title))
		# print(type(title_value))
		# print(type(title_string))
		# print()

	except AttributeError:
		title_string = ""	

	return title_string

# Function to extract Product Price
def get_price(soup):

	try:
		price = soup.find("span", attrs={'class':'a-price-whole'}).string.strip()

	except AttributeError:
		price = ""	

	return price

# Function to extract Product Rating
def get_rating(soup):

	try:
		rating = soup.find("i", attrs={'class':'a-icon a-icon-star a-star-4-5'}).string.strip()
		
	except AttributeError:
		
		try:
			rating = soup.find("span", attrs={'class':'a-icon-alt'}).string.strip()
		except:
			rating = ""	

	return rating

# Function to extract Number of User Reviews
def get_review_count(soup):
	try:
		review_count = soup.find("span", attrs={'id':'acrCustomerReviewText'}).string.strip()
		
	except AttributeError:
		review_count = ""	

	return review_count

# Function to extract Availability Status
def get_availability(soup):
	try:
		available = soup.find("div", attrs={'id':'availability'})
		available = available.find("span").string.strip()

	except AttributeError:
		available = ""	

	return available	

if __name__ == '__main__':

	# Headers for request
	HEADERS = ({'User-Agent':
	            'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36',
	            'Accept-Language': 'en-US, en;q=0.5'})

	# The webpage URL
  
	#URL = "https://www.amazon.in/Adidas-Mens-Pictor-Running-Shoe/dp/B08TMX7WW8/ref=asc_df_B08TMX7WW8/?tag=googleshopmob-21&linkCode=df0&hvadid=612607732727&hvpos=&hvnetw=g&hvrand=13330493418382279421&hvpone=&hvptwo=&hvqmt=&hvdev=m&hvdvcmdl=&hvlocint=&hvlocphy=9040212&hvtargid=pla-1725601433492&psc=1"

	# HTTP Request
file=open("input.txt","r")
url=file.read()
file.close()
url="https://www.amazon.in/HP-Micro-Edge-Anti-Glare-Graphics-15s-eq2144au/dp/B09RZRF1PJ&sa=U&ved=2ahUKEwj668vWo9T_AhXoLrkGHdvCB3kQFnoECAkQAg&usg=AOvVaw2dY91GjSq_4FflRcoEFj5Y"

webpage = requests.get(url, headers=HEADERS)
# Soup Object containing all data
soup = BeautifulSoup(webpage.content, "lxml")

	# Function calls to display all necessary product information
print("Product Title =", get_title(soup))
print("\n")
print("Product Price =", get_price(soup))
print("\n")
print("Product Rating =", get_rating(soup))
print("\n")
print("Number of Product Reviews =", get_review_count(soup))
print("\n")
print("Availability =", get_availability(soup))
print("\n")
print()
print()





