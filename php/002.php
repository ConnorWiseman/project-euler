<?php

function fibonacci($f1 = 0, $f2 = 1) {
    while (true) {
        $current = $f1;
        $f1 = $f2;
        $f2 = $current + $f1;

        yield $current;
    }
}

function sumEvenFibonacciNumbersBelow($n) {
    $sum = 0;
    $fib = fibonacci();

    foreach ($fib as $value) {
        if ($value > $n) {
            break;
        } else if ($value % 2 === 0) {
            $sum += $value;
        }
    }

    return $sum;
}

$answer = sumEvenFibonacciNumbersBelow(4000000);
echo $answer;

?>
