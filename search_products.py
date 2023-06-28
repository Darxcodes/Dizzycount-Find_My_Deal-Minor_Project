from bs4 import BeautifulSoup
import requests
import re

def get_product_name(soup):

	try:
		#price = soup.find("span", attrs={'class':'a-size-medium a-color-base a-text-normal'}).string.strip()
		price_elements = soup.find_all("span", attrs={'class':'a-size-base-plus a-color-base a-text-normal'})
		prices = [price.string.strip() for price in price_elements]
	except AttributeError:
		price = ""	

	return prices

# Function to extract Product Price
def get_price(soup):

	try:
		price = soup.find("span", attrs={'class':'a-price-whole'}).string.strip()

	except AttributeError:
		price = ""	
    
	return price


def product_names(brand,category):
	

    # Headers for request
    HEADERS = ({'User-Agent':
                    'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36',
                    'Accept-Language': 'en-US, en;q=0.5'})
	
    #url="https://www.amazon.in/s?k=moblies&i=electronics"
    #url="https://www.amazon.in/s?k={}&i={}".format(prod_name,category)
    query=str(brand)+" "+str(category)
    query=query.replace(" ","+")
    url="https://www.amazon.in/s?k={}".format(query)
    print("url:",url)

    webpage = requests.get(url, headers=HEADERS)

    #x=re.search(r"amazon", url)
    #y=re.search(r"flipkart",url)
    #print("Product Price =", get_price(soup))
    #print("Product Rating =", get_rating(soup))
    #print("Number of Product Reviews =", get_review_count(soup))
    #print("Availability =", get_availability(soup))
    
    # Soup Object containing all data
    soup = BeautifulSoup(webpage.content, "lxml")
    product_name=get_product_name(soup)
    #product_price=get_price(soup)
    #print("Product Title =", get_product_name(soup))
    #print("Product Title =",product_price)
    product_list=[{"product_name":i} for i in product_name]
    #print("Product List :\n", product_list)
    return product_list

    
