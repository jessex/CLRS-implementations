# BUBBLESORT(A)
# Sorts the given array by swapping adjacent elements which are out of order
# O(n^2)
# Chapter 2, Page 40

def bubblesort(a)
  for i in 0..a.length - 2
    (a.length - 1).downto i + 1 do |j|
      if a[j] < a[j - 1]
        temp = a[j]
        a[j] = a[j - 1]
        a[j - 1] = temp
      end
    end
  end
  a
end

