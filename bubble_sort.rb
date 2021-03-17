def bubble_sort(array) 
  i = 0
  j = 1
  sorted = true
  while sorted 
    swapped = 0
    while i < array.length - 1 
      if array[i] > array[j]
        array[i], array[j] = array[j], array[i]
        swapped += 1
      end
      i += 1
      j += 1
    end
    sorted = false if swapped == 0
    i = 0
    j = 1
  end
  array
end 

p bubble_sort([1, 5, 2, 10, 1, 2, 3, 4, 5, 400, 12, 12, 23, 1])