import time # This is required to include time module.
ticks = time.time()
print ("Number of ticks since 12:00am, January 1, 1970:", ticks)


t=time.localtime(time.time())
print(t)

t1=time.asctime(time.localtime(time.time()))
print(t1)






 
