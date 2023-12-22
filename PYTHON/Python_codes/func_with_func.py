def outer_func(x):
    def inner_func(y):
        return x + y
    
    result = inner_func(10)      #call inner function
    return result

result_outer = outer_func(10)
print(result_outer)

def a(x):
    def b(y):
        return x+y
    res=b(20)
    return res
ou=a(20)
print(ou)