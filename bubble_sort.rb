def bubble_sort(array)
  array.each_index do |i|
    array.each_index do |j|
      array[i], array[j] = array[j], array[i] if array[i] < array[j]
    end
  end
  array
end


