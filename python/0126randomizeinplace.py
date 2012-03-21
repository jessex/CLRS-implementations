# RANDOMIZE-IN-PLACE(A)
# Generates a random permutation of the array A in place by random swapping
# O(n)
# Chapter 5, Page 126

import random

def randomize_in_place(a):
    n = len(a)
    for i in range(n):
        random_index = random.randint(i, n - 1)
        
        temp = a[i]
        a[i] = a[random_index]
        a[random_index] = temp

