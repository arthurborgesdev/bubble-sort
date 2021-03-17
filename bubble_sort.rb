def bubble_sort(array) 
  i = 0
  j = 1
  sorted? = true
  while sorted? 
    while i < array.length - 1 
      if array[i] > array[j]
        array[i], array[j] = array[j], array[i]
      end
      i += 1
      j += 1
    end
  end
  array
end 

p bubble_sort([1, 5, 2, 10])