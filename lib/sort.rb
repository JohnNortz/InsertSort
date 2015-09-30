def sort(array)
  (1..array.length-1).each do |i|
    extract = array[i]
    (1..i).each do |j|
      if extract > array[i - j]
        array[i - j + 1] = array[i - j]
        if (i-j) == 0
          array[i - j] = extract
          break
        end
      else
        array[i - j + 1] = extract
        break
      end
    end
  end
  puts array
end
