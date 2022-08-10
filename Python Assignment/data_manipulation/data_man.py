from dataclasses import dataclass
import json
import mysql.connector
import numpy as np
import pandas as pd

json_sample = open('sample_data_for_assignment.json', encoding = 'utf8').read()
json_object = json.loads(json_sample)

DB = mysql.connector.connect(host = 'localhost', database='test_db', user='root', password='root')
cursor = DB.cursor()