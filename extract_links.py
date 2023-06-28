import requests
from bs4 import BeautifulSoup
from urllib.parse import urlparse
import re



def fetch_link(search_query):
    # Perform a Google search and get the HTML response
    #search_query = """HP 15s, AMD Ryzen 5 5500U, 15.6 inch(39.6cm) FHD Micro-Edge Anti-Glare Laptop (8GB RAM/512 GB SSD/AMD Radeon Graphics/Win 11/MSO 21/Alexa/Dual Speakers/1.69 Kgs/Natural Silver) 15s-eq2223AU"""
    url = f"https://www.google.com/search?q={search_query}"
    response = requests.get(url)
    html_content = response.content

    # Create a BeautifulSoup object
    soup = BeautifulSoup(html_content, 'html.parser')

    # Find all the search result links
    search_results = soup.find_all('a')

    # Extract the URLs containing 'flipkart' or 'amazon' keywords
    links_amazon = [link['href'] for link in search_results if link.has_attr('href') and ('amazon' in link['href'])]
    links_flipkart = [link['href'] for link in search_results if link.has_attr('href') and ('flipkart' in link['href'])]

    ##
    filtered_links_amazon = [link for link in links_amazon if "/url?q=" in link][0]
    filtered_links_flipkart = [link for link in links_flipkart if "/url?q=" in link][0]
    print("amazon:",filtered_links_amazon)
    print("flipkart:",filtered_links_flipkart)
    links=[filtered_links_amazon,filtered_links_flipkart]
    print("links:",links)
    # Print the extracted links
    urls=[]
    for link in links:
        link=link[7:]
        pattern = r"(https?://[^&]+)"

        match = re.search(pattern, link)

        if match:
            url = match.group(1)
            #print(url)
            urls.append(url)
    #print("urls:",urls)
    return urls