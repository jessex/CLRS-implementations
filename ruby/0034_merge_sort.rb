# MERGE-SORT(A, p, r)
# Sorts the given array from indices p to r using a Divide-and-Conquer approach
# O(n log n)
# Chapter 2.3, Page 34

def merge(a, p, q, r)
  m = q - p + 1
  n = r - q
  l = []
  o = []

  for i in 1..m
    l << a[p + i - 1]
  end

  for j in 1..n
    o << a[q + j]
  end

  l << 1.0 / 0
  o << 1.0 / 0
  i = 0
  j = 0

  for k in p..r
    if l[i] <= o[j]
      a[k] = l[i]
      i += 1
    else
      a[k] = o[j]
      j += 1
    end
  end
  a
end

def merge_sort(a, p, r)
  if p < r
    q = (p + r) / 2
    merge_sort(a, p, q)
    merge_sort(a, q + 1, r)
    merge(a, p, q, r)
  end
  a
end

