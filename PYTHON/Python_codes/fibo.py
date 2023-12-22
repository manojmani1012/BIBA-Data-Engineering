
def fibo(n):
    a=0
    b=1
    for i in range(n+1):
        print(a)
        c=a+b
        a=b
        b=c
print(fibo(5))







'''
Iteration 0:a = 0, b = 1, prints a = 0.
Iteration 1:a = 1, b = 1, prints a = 1.
Iteration 2:a = 1, b = 2, prints a = 1.
Iteration 3:a = 2, b = 3, prints a = 2.
Iteration 4:a = 3, b = 5, prints a = 3.
Iteration 5:a = 5, b = 8, prints a = 5.'''