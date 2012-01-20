# FIND-MAXIMUM-SUBARRAY(A, low, high)
# Finds the maximum subarray in the array A and returns the starting index, the
# ending index and the sum of the subarray 
# O(n log n)
# Chapter 4, Page 72

require '0071_find_max_crossing_subarray'

def find_maximum_subarray(a, low, high)
  if high == low
    [low, high, a[low]]
  else
    mid = (low + high) / 2

    left_low, left_high, left_sum = find_maximum_subarray a, low, mid
    right_low, right_high, right_sum = find_maximum_subarray a, mid + 1, high
    cross_low, cross_high, cross_sum = 
      find_max_crossing_subarray a, low, mid, high

    if left_sum >= right_sum and left_sum >= cross_sum
      [left_low, left_high, left_sum]
    elsif right_sum >= left_sum and right_sum >= cross_sum
      [right_low, right_high, right_sum]
    else
      [cross_low, cross_high, cross_sum]
    end
  end
end

