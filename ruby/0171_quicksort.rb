# QUICKSORT(A, p, r)
# Sorts the given array from indices p to r using a Divide-and-Conquer approach
# O(n^2)
# Chapter 7, Page 171

def quicksort(a, p, r)
  if p < r
    q = partition(a, p, r)
    quicksort(a, p, q - 1)
    quicksort(a, q + 1, r)
  end
end
        
def partition(a, p, r)
  x = a[r]
  i = p - 1
    
  for j in p..r - 1
    if a[j] <= x
      i += 1
      temp = a[i]
      a[i] = a[j]
      a[j] = temp
    end
  end
    
  temp = a[i + 1]
  a[i + 1] = a[r]
  a[r] = temp
    
  i + 1
end

