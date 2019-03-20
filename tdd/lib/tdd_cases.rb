def my_uniq(arr)
  uniques = []

  arr.each do |ele|
    uniques << ele if !uniques.include?(ele)
  end
  
  uniques

end

class Array

  def two_sum
    pairs = []

    self.each_with_index do |num1, i1|
      self.each_with_index do |num2, i2|
        next if i2 <= i1

        pairs << [i1, i2] if num1 + num2 == 0

      end
    end

    pairs
  end
end

def my_transpose(arr)
  transposed = Array.new(arr.length) {[]}

  i = 0
  while i < arr.length
    j = 0
    while j < arr[i].length
      transposed[j][i] = arr[i][j]
      j += 1
    end
    i += 1
  end

  transposed
end

def stock_picker(arr)

  best_pair = []
  max_diff = 0

  arr.each_with_index do |e1, i|
    arr.each_with_index do |e2, j|
      next if j < i
      diff = e2 - e1
      if diff > max_diff
        best_pair = [i, j]
        max_diff = diff 
      end
    end
  end
  
  best_pair
end