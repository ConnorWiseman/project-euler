function* fibonacci(f1, f2) {
  var n1 = f1 || 0,
      n2 = f2 || 1;

  while (true) {
    var current = n1;
    n1 = n2;
    n2 = current + n1;

    yield current;
  }
}

function sumEvenFibonacciNumbersBelow(n) {
  var sum      = 0,
      sequence = fibonacci(0, 1),
      current;

  do {
    current = sequence.next().value;
    if (current % 2 === 0) {
      sum += current;
    }
  } while (current < n);

  return sum;
}

var answer = sumEvenFibonacciNumbersBelow(4000000);
console.log(answer);
