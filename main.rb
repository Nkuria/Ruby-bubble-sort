def bubble_sort(arr)
    range = arr.length - 1
   loop do
      swapped = false
  
      range.times do |i|
        if arr[i] > arr[i + 1]
          arr[i], arr[i + 1] = arr[i + 1], arr[i]
          swapped = true
          i += 1
        end
      end
    
      break unless swapped
    end
    arr
  end
  
  print bubble_sort([3, 6, 1, 2, 4, 2, 7, 5, 0, 9, 6])

  def bubble_sort_by(arr)
    range = arr.length - 1
    loop do
      swapped = false
      range.times do |i|
        if yield(arr[i], arr[i + 1]).positive?
          arr[i], arr[i + 1] = arr[i + 1], arr[i]
          swapped = true
        end
      end
      break if swapped == false
    end
    print arr
  end
  
  bubble_sort_by(%w[hi hello hey]) do |left, right|
    left.length - right.length
  end
  