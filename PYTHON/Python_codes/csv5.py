import pandas as pd
header=['emp_id','salary','DOJ']
rows=[[101,45120,18/1/2024],[102,40120,16/1/2024],[103,45120,18/1/2024],[104,45120,18/1/2024],[105,45120,18/1/2024]]
data=pd.DataFrame(rows,columns=header)
data.to_csv('doj_table.csv',index=False)