#nested loop
for i in range(0,5):
    for j in range(0,5):
        print(i,j,end=' ')
    print(i,j)
    
    
'''Iteration 1 (i = 0):Inner loop prints: 0 0 0 1 0 2 0 3 0 4  Outer loop prints: 0 4

Iteration 2 (i = 1):Inner loop prints: 1 0 1 1 1 2 1 3 1 4   Outer loop prints: 1 4

Iteration 3 (i = 2):Inner loop prints: 2 0 2 1 2 2 2 3 2 4   Outer loop prints: 2 4

Iteration 4 (i = 3):Inner loop prints: 3 0 3 1 3 2 3 3 3 4     Outer loop prints: 3 4

Iteration 5 (i = 4):Inner loop prints: 4 0 4 1 4 2 4 3 4 4   Outer loop prints: 4 4'''





for i in range(1,5):
    for j in range(i):
        print(i,end=' ')
    print()
    
'''
In the first iteration of the outer loop (i = 1), the inner loop prints 1 once.
In the second iteration of the outer loop (i = 2), the inner loop prints 2 twice.
In the third iteration of the outer loop (i = 3), the inner loop prints 3 three times.
In the fourth iteration of the outer loop (i = 4), the inner loop prints 4 four times.
'''


r = 4

for i in range(1, r + 1):
    for j in range(1, i + 1):
        print(j, end=' ')
    print()
