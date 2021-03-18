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

def bubble_sort_by(array)
  i = 0
  sorted = false
  until sorted
    swapped = 0
    while i < array.length - 1
      orientation = yield(array[i], array[i + 1])
      if orientation.positive?
        array[i], array[i + 1] = array[i + 1], array[i]
        swapped += 1
      elsif orientation.negative?
        array[i + 1], array[i]  = array[i], array[i + 1]
        swapped += 1
      end
      i += 1
    end
    sorted = true if swapped.zero?
    i = 0
  end
   p array
end

bubble_sort_by(["hi","hello","hey"]) do |left,right|
  left.length - right.length
end 

