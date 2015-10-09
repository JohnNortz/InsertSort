require 'benchmark'
require '../lib/merge_sort'
require '../lib/sort'

def qsort(array)
  lo = 0;
  hi = array.length - 1

  quickSort(array, lo, hi)
end

def quickSort(array, lo, hi)
  if lo < hi
    p = partition(array, lo, hi)
    quickSort(array, lo, p)
    quickSort(array, p + 1, hi)
  end
  return array
end

def partition(array, lo, hi)
  # pivot = array[(lo + (hi - lo) / 2)]
  pivot = array[(lo + hi) / 2]
  while true do
    while array[hi] > pivot do
      hi = hi - 1
    end
    while array[lo] < pivot do
      lo = lo + 1
    end
    if lo < hi
      a = array[lo]
      array[lo] = array[hi]
      array[hi] = a
      lo += 1
      hi -= 1
    else
      return hi
    end
  end
end



n = 50000
a = (0..n).to_a
puts "\n\nQuick Sorting...."
Benchmark.bm do |x|
  x.report('Sorted') { qsort(a) }
  x.report('Random') { qsort(a).reverse_each }
  x.report('Reverse') { qsort(a).shuffle }
end
