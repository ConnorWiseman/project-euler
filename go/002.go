package main

import "fmt"

func fibonacci(f1 int, f2 int) func() int {
	return func() int {
		current := f1
		f1, f2 = f2, f1 + f2
		return current
	}
}

func sumEvenFibonacciNumbersBelow(n int) int {
  sum := 0
  fib := fibonacci(0, 1)

  for {
    current := fib()
    if current > n {
      break;
    } else if current % 2 == 0 {
      sum += current
    }
  }

  return sum
}

func main() {
	answer := sumEvenFibonacciNumbersBelow(4000000)
	fmt.Println(answer)
}
