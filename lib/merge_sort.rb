require 'benchmark'

def merge_sort(array)
  arr = array
  #puts "merge array with length " + arr.length.to_s
  if arr.length <= 1
    return arr
  end

  left = Array.new
  right = Array.new
  middle = (arr.length / 2)

  (0..arr.length - 1).each do |x|
    left << arr[x] if x < middle
    right << arr[x] if x >= middle
  end
  #puts ("split into size left: " + left.length.to_s + " and right: " + right.length.to_s)

  left = merge_sort(left)
  right = merge_sort(right)

  return merge(left, right)
end

def merge(left, right)
  sorted = Array.new

  while left.length > 0 && right.length > 0
    #puts "compare left: " + left.first.to_s + " and right: " + right.first.to_s
    if left.first <= right.first
      sorted << left.first
      left.shift
    else
      sorted << right.first
      right.shift
    end
  end

  while left.length > 0
    sorted << left.first
    left.shift
  end
  while right.length > 0
    sorted << right.first
    right.shift
  end
  return sorted
end


n = 50000
a = (0..n).to_a
Benchmark.bm do |x|
  x.report('Sorted') { merge_sort(a) }
  x.report('Random') { merge_sort(a).reverse_each }
  x.report('Reverse') { merge_sort(a).shuffle }
end
