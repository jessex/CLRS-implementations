# FIND-MAX-CROSSING-SUBARRAY(A, low, mid, high)
# Finds the maximum subarray in A which crosses the midpoint of the array 
# O(n)
# Chapter 4, Page 71

def find_max_crossing_subarray(a, low, mid, high)
  left_sum = -1.0 / 0
  sum = 0
  max_left = 0
  max_right = 0

  mid.downto low do |i|
    sum += a[i]
    if sum > left_sum
      left_sum = sum
      max_left = i
    end
  end

  right_sum = -1.0 / 0
  sum = 0

  (mid + 1).upto high do |j|
    sum += a[j]
    if sum > right_sum
      right_sum = sum
      max_right = j
    end
  end
  
  [max_left, max_right, left_sum + right_sum]
end

