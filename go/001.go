package main

import "fmt"

func sumMultiplesOfThreeAndFiveBelow(n int) int {
	sum := 0

	for i := 0; i < n; i++ {
		if i%3 == 0 || i%5 == 0 {
			sum += i
		}
	}

	return sum
}

func main() {
	answer := sumMultiplesOfThreeAndFiveBelow(1000)
	fmt.Println(answer)
}
