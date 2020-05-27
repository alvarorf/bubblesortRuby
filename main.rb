def bubble_sort(arr)
  loop_size = arr.length
  loop do
    swap = false
    (loop_size - 1).times do |i|
      next unless arr[i] > arr[i + 1]

      arr[i], arr[i + 1] = arr[i + 1], arr[i]
      swap = true
    end
    break unless swap
  end
  arr
end

def bubble_sort_by(array)
  loop_size = array.length
  loop do
    swap = false
    (loop_size - 1).times do |i|
      next unless yield(array[i], array[i + 1]).positive?

      array[i], array[i + 1] = array[i + 1], array[i]
      swap = true
    end
    break unless swap
  end
  array
end

puts bubble_sort([4, 3, 1, 2])
puts bubble_sort_by(%w[hi hello super hey hooy A]) { |left, right| left.length <=> right.length }
