
import re
emails = ['abc@gmail.com', 'bcd@yahoo.com', 'cde@datagrokr.com']
for email in emails:
    company = re.findall(r".*@(.*)\.(.*)", email)[0][0]
    print(company)
