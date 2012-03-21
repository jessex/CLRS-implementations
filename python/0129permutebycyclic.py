# PERMUTE-BY-CYCLIC(A)
# Generates a cyclic permutation of the array A
# O(n)
# Chapter 5, Page 129

import random

def permute_by_cyclic(a):
    n = len(a)
    offset = random.randint(0, n - 1)
    b = [None] * n
    
    for i in range(n):
        dest = i + offset
        if dest >= n:
            dest = dest - n
        
        b[dest] = a[i]
        
    return b

