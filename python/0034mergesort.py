# MERGE-SORT(A, p, r)
# Sorts the given array from indices p to r using a Divide-and-Conquer approach
# O(n log n)
# Chapter 2.3, Page 34

def merge(a, p, q, r):
    m = q - p + 1
    n = r - q
    l = []
    o = []

    for i in range(1, m + 1):
        l.append(a[p + i - 1])

    for j in range(1, n + 1):
        o.append(a[q + j])

    l.append(1e3000)
    o.append(1e3000)
    i = 0
    j = 0

    for k in range(p, r + 1):
        if l[i] <= o[j]:
            a[k] = l[i]
            i += 1
        else:
            a[k] = o[j]
            j += 1

def merge_sort(a, p, r):
    if p < r:
        q = (p + r) / 2
        merge_sort(a, p, q)
        merge_sort(a, q + 1, r)
        merge(a, p, q, r)

