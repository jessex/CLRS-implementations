# PERMUTE-BY-CYCLIC(A)
# Generates a cyclic permutation of the array A
# O(n)
# Chapter 5, Page 129

def permute_by_cyclic(a)
  n = a.length
  offset = rand(n)
  b = Array.new(n)
  
  for i in 0..n - 1
    dest = i + offset
    if dest >= n
      dest = dest - n
    end
    
    b[dest] = a[i]
  end
  
  b
end

