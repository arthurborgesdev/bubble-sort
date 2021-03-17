def bubble_sort(array) 
  i = 0
  j = 1
  while i < array.length - 1 
    array[i], array[j] = array[j], array[i] if array[i] > array[j]
    i += 1
    j += 1
  end
  array
end 

p bubble_sort([1, 5, 2, 10])