import re
import pprint
import json
from json import JSONEncoder
import jsonpickle

class setEncoder(JSONEncoder):
        def default(self, obj):
            return list(obj)


name = 'sample_stored_procedure.sql'
query = ''
json_obj = []
with open(name,'r') as sql_file:
    query = sql_file.read()
    
    sql_statements = query.split(';')
    count = 1
    final_output = []
    for statement in sql_statements:
        mp = {}
        mp['statement_id'] = count
        keywords = re.split('\n| |,', statement.strip())
        s = set()
        se = set()
        mp['target_table_name'] = []
        if keywords[0] == 'INSERT' or 'UPDATE' or 'CREATE':
                mp['statement_type'] = keywords[0].lower()
        for idx,val in enumerate(keywords):
            if val == 'FROM' or val == 'JOIN':
                se.add(val)
                s.add(keywords[idx+1])
        
        mp2 = {}
        mp2['type'] = se
        mp2['name'] = s
        mp['target_table_name'].append(mp2)
        count += 1
        json_obj.append(mp)


#         for i in json_obj:
#                 pprint.pprint(i)   


# 


jsonData = json.dumps(json_obj, indent=4, cls=setEncoder)
print(jsonData)

# Let's load it using the load method to check if we can decode it or not.
setObj = json.loads(jsonData)

with open("sample_stored_procedure.json", "w") as outfile:   
        json.dump(setObj, outfile)


