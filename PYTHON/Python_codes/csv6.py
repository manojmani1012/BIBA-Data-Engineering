import pandas as pd 
# Creating Dictionary 
dict = { 
    'series': ['The Big bang theory', 'Prison break', 'Breaking Bad'], 
    'episodes': [185, 79, 96], 
    'actors': ['Jim parsons', 'Michael', 'walter'] 
} 
# Creating Dataframe 
data = pd.DataFrame(dict) 
print(data)