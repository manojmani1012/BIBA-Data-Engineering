#if-statement:
if 10 > 5:
   print("10 greater than 5")
 
print("BYE")



#if-else statement
x = 10
if x == 4:
   print("Yeah")
else:
   print("Nope")
   
   
   
# if..else chain statement 
letter = "M"
if letter == "B":
  print("letter is B")
else: 
  if letter == "C":
    print("letter is C")
  else:
    if letter == "M":
      print("letter is M")
    else: 
      print("letter isn't A, B and C")



# Nested if statement example
x = 50
if x > 10:
  print("Above ten")
  if x > 20:
    print("and also above 20!")



# if-elif statement example - we can check condition in elif but not in else.
 
letter = "O"
if letter == "B":
    print("letter is B")
elif letter == "C":
    print("letter is C")
elif letter == "O":
    print("letter is O")
else:
    print("letter isn't A, B or C")



n=5
if n==5:
  print("j")
else:
  if n==0:
    print("k")
  else:
    if n==10:
      print("m")
    else:
      print('no')
    
  