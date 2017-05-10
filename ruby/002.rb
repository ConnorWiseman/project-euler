def fibonacci (f1 = 0, f2 = 1)
  fiber = Fiber.new do
    loop do
      Fiber.yield f1
      f1, f2 = f2, f1 + f2
    end
  end

  return fiber
end

def sumEvenFibonacciNumbersBelow (n)
  sum = 0
  fib = fibonacci 0, 1
  current = 0

  loop do
    current = fib.resume

    break if current > n
    if current % 2 == 0
      sum += current
    end
  end

  return sum
end

answer = sumEvenFibonacciNumbersBelow 4000000
puts answer
