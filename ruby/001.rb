def sumMultiplesOfThreeAndFiveBelow (n)
  sum = 0

  for i in 0..(n-1)
    if i % 3 == 0 or i % 5 == 0
      sum += i
    end
  end

  return sum
end

answer = sumMultiplesOfThreeAndFiveBelow 1000
puts answer
