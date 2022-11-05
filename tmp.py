
from config import exchangekey 
import requests, json 
url = "https://api.apilayer.com/exchangerates_data/latest?base=USD" 
payload = {}
headers= {
  "apikey": exchangekey
} 
response = requests.request("GET", url, headers=headers, data = payload) 
status_code = response.status_code
result = response.text
json = json.loads(result)
print(json['rates']['EUR'])
 
#print(json.dumps(json, indent=4))
#;