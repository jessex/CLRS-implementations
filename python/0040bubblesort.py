# BUBBLESORT(A)
# Sorts the given array by swapping adjacent elements which are out of order
# O(n^2)
# Chapter 2, Page 40

def bubblesort(a):
    for i in range(0, len(a) - 1):
        for j in reversed(range(i + 1, len(a))):
            if a[j] < a[j - 1]:
                temp = a[j]
                a[j] = a[j - 1]
                a[j - 1] = temp

