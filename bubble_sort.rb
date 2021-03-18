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
    sorted = true if swapped.zero?
    i = 0
  end
  array
end
