import requests
from bs4 import BeautifulSoup


# Perform a Google search and get the HTML response
search_query = """HP 15s, AMD Ryzen 5 5500U, 15.6 inch(39.6cm) FHD Micro-Edge Anti-Glare Laptop (8GB RAM/512 GB SSD/AMD Radeon Graphics/Win 11/MSO 21/Alexa/Dual Speakers/1.69 Kgs/Natural Silver) 15s-eq2223AU"""
url = f"https://www.google.com/search?q={search_query}"
response = requests.get(url)
html_content = response.content

# Create a BeautifulSoup object
soup = BeautifulSoup(html_content, 'html.parser')

# Find all the search result links
search_results = soup.find_all('a')

# Extract the URLs containing 'flipkart' or 'amazon' keywords
links = [link['href'] for link in search_results if link.has_attr('href') and ('flipkart' in link['href'] or 'amazon' in link['href'])]

# Print the extracted links
for link in links:
    print(link)