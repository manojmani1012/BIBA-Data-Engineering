set_a={1,2,3}
set_b={1,2,3}                   #a == b or not
equi=set_a==set_b
print(equi)

set_a={1,2,3}
set_b={1,2,3}
nonequi=set_a!=set_b
print(nonequi)

set_a = {1, 2, 3}
set_b = {3, 4, 5}
union_result = set_a | set_b  # or set_a.union(set_b)
print(union_result)

set_a = {1, 2, 3}
set_b = {3, 4, 5}
intersection_result = set_a & set_b  # or set_a.intersection(set_b)
print(intersection_result)

set_a = {1, 2, 3}
set_b = {3, 4, 5}
difference_result = set_a - set_b  # or set_a.difference(set_b)
print(difference_result)

set_a = {1, 2, 3}                       #returns a new set containing elements that are unique to each set.
set_b = {3, 4, 5}
symmetric_difference_result = set_a ^ set_b  # or set_a.symmetric_difference(set_b)
print(symmetric_difference_result)

set_a = {1, 2, 3}                    #using issubset()
set_b = {1, 2, 3, 4, 5}          
is_subset = set_a <= set_b           #one set is a subset of another.   < proper subset
print(is_subset)

set_a = {1, 2, 3, 4, 5}             #using issuperset
set_b = {1, 2, 3}
is_superset = set_a >= set_b  ##one set is a superset of another.     > proper superset
print(is_superset)

