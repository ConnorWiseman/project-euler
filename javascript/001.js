function sumMultiplesOfThreeAndFiveBelow(n) {
  var sum = 0;

  for (var i = 0; i < n; i++) {
    if (i % 3 === 0 || i % 5 === 0) {
      sum += i;
    }
  }

  return sum;
}

var answer = sumMultiplesOfThreeAndFiveBelow(1000);
console.log(answer);