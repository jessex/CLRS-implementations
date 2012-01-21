# RANDOMIZE-IN-PLACE(A)
# Generates a random permutation of the array A in place by random swapping
# O(n)
# Chapter 5, Page 126

def randomize_in_place(a)
  n = a.length
  for i in 0..n - 1
    random_index = i + rand(n - i)
    puts random_index

    temp = a[i]
    a[i] = a[random_index]
    a[random_index] = temp
  end
  a
end

