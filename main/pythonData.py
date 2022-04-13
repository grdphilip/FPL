import pandas as pd
from pulp import *
import requests

url = "https://fantasy.premierleague.com/api/bootstrap-static/"

r = requests.get(url)
json = r.json()
elements_df = pd.DataFrame(json['elements'])
