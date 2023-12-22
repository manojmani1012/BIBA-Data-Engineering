num1 = [1, 2, 3]
num2 = [9, 8, 7]
result = map(lambda x, y: x + y, num1, num2)
print(list(result))

li = [5, 7, 22, 97, 54, 62, 77, 23, 73, 61]
final_list = list(map(lambda x: x*2, li))
print(final_list)

m=[1,2,3]
res=map(lambda y:y+y,m)
print(list(res))