# INSERTION-SORT(A)
# Sorts the given array by iteratively inserting each element into the sorted 
# portion of the array 
# O(n^2)
# Chapter 2.1, Page 18

def insertion_sort(a)
  for j in 1..a.length-1
    key = a[j]
    i = j - 1
    
    while i >= 0 and a[i] > key
      a[i + 1] = a[i]
      i -= 1
    end

    a[i + 1] = key
  end
  a
end

