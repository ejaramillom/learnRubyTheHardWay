def plusMinus(arr)
  positive = 0
  negative = 0
  zero = 0

  arr.each do |element|
    positive += 1 if element > 0
    negative += 1 if element < 0
    zero += 1 if element == 0
  end

  puts '%1.6f' % (positive.to_f / arr.length.to_f)
  puts '%1.6f' % (negative.to_f / arr.length.to_f)
  puts '%1.6f' % (zero.to_f / arr.length.to_f)
end

values = [-4, 3, -9, 0, 4, 1]

plusMinus(values)
