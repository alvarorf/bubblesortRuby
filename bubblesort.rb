def bubble_sort(arr)
  i = 0
  for i in 0..(arr.length - 2)
        next if arr[i] > arr[i + 1]
            temp = arr[i]
            arr[i] = arr[i + 1]
            arr[i + 1] = temp
        end
  end
  return arr
    end
# print(bubble_sort([3, 1, 7]))

    