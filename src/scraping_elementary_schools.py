from bs4 import BeautifulSoup as bs
import bs4
import pandas as pd
import requests
import json
from pprint import pprint
import numpy as np

i = 1
elementary_url = "https://www.greatschools.org/virginia/schools/?gradeLevels%5B%5D=e&st%5B%5D=public_charter&st%5B%5D=public&view=table&page=" + str(i)

response = requests.get(elementary_url)
soup = bs(response.text, "html.parser")
print('scraping website')

s = soup.findAll('script')
cdata = s[0].contents[0]

school_data = cdata.split('gon.search=')
school_data = school_data[1]
school_data = school_data.replace(";\n//]]>\n","") 

school_data= json.loads(school_data)

total_pages = school_data['totalPages']

zip_code = []
school_name = []
school_rating = []
percent_low_income = []
grade_levels = []

print('collecting data...')
i = 1
for page in range(total_pages):
    elementary_url = "https://www.greatschools.org/virginia/schools/?gradeLevels%5B%5D=e&st%5B%5D=public_charter&st%5B%5D=public&view=table&page=" + str(i)
    response = requests.get(elementary_url)
    soup = bs(response.text, "html.parser")
    
    s = soup.findAll('script')
    cdata = s[0].contents[0]

    school_data = cdata.split('gon.search=')
    school_data = school_data[1]
    school_data = school_data.replace(";\n//]]>\n","") 
    
    school_data= json.loads(school_data)
    
    for school in school_data['schools']:
        current_zip_code = school['address']['zip']
        zip_code.append(current_zip_code)
    
        current_school_name = school['name']
        school_name.append(current_school_name)
    
        current_school_rating = school['rating']
        school_rating.append(current_school_rating)
    
        current_percent_low_income = school['percentLowIncome']
        percent_low_income.append(current_percent_low_income)
    
        current_grade_levels = school['gradeLevels']
        grade_levels.append(current_grade_levels)
        
    i = i+1
print('done collecting data')

total_records = len(zip_code)
print(f'total records: {total_records}')

elementary_schools_df = pd.DataFrame(
    {'zip_code': zip_code,
     'school_name': school_name,
     'school_rating': school_rating,
     'grade_levels': grade_levels,
     'percent_low_income': percent_low_income
    })

elementary_schools_df['percent_low_income'] = elementary_schools_df['percent_low_income'].str.replace('%', '')

elementary_schools_df['percent_low_income'] = elementary_schools_df['percent_low_income'].replace('?', np.nan)

elementary_schools_df.to_csv('../input/elementary_schools_data.csv', index=False)
print('exported data: ../input/elementary_schools_data.csv')