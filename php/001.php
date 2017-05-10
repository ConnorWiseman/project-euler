<?php

function sumMultiplesOfThreeAndFiveBelow($n) {
    $sum = 0;

    for ($i = 0; $i < $n; $i++) {
        if ($i % 3 === 0 || $i % 5 === 0) {
            $sum += $i;
        }
    }

    return $sum;
}

$answer = sumMultiplesOfThreeAndFiveBelow(1000);
echo $answer;

?>
