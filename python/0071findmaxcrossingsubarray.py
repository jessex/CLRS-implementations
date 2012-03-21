# FIND-MAX-CROSSING-SUBARRAY(A, low, mid, high)
# Finds the maximum subarray in A which crosses the midpoint of the array and
# returns the starting index, the ending index and the sum of the subarray 
# O(n)
# Chapter 4, Page 71

def find_max_crossing_subarray(a, low, mid, high):
    left_sum = -1e308
    sum = 0
    max_left = 0
    max_right = 0
    
    for i in reversed(range(low, mid + 1)):
        sum += a[i]
        if sum > left_sum:
            left_sum = sum
            max_left = i
    
    right_sum = -1e308
    sum = 0
    
    for j in range(mid + 1, high + 1):
        sum += a[j]
        if sum > right_sum:
            right_sum = sum
            max_right = j
    
    return (max_left, max_right, left_sum + right_sum)

