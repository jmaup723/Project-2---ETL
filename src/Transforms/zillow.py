import requests
url = "http://files.zillowstatic.com/research/public/Zip/Sale_Prices_Zip.csv"
myfile = requests.get(url, allow_redirects=True)
open('Sale_Prices_Zip.csv', 'wb').write(myfile.content)