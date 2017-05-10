def fibonacci(f1 = 0, f2 = 1):
    while True:
        yield f1
        f1, f2 = f2, f1 + f2

def sumEvenFibonacciNumbersBelow(n):
    sum = 0

    for next in fibonacci(0, 1):
        if next < 4000000:
            if next % 2 == 0:
                sum += next
        else:
            return sum

if __name__ == "__main__":
    answer = sumEvenFibonacciNumbersBelow(4000000)
    print(answer)
