def bubble_sort(array) 
  i = 0
  sorted = false
  until sorted 
    swapped = 0
    while i < array.length - 1 
      if array[i] > array[i + 1]
        array[i], array[i + 1] = array[i + 1], array[i]
        swapped += 1
      end
      i += 1
    end
    sorted = true if swapped == 0
    i = 0
  end
  array
end 

p bubble_sort([1, 5, 2, 10, 1, 2, 3, 4, 5, 400, 12, 12, 23, 1])