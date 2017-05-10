public final class Problem002 {
    public static void main(String[] args) {
        int answer = sumEvenFibonacciNumbersBelow(4000000);
        System.out.println(answer);
    }

    public static int sumEvenFibonacciNumbersBelow(int n) {
        int sum = 0;
        int f1 = 0;
        int f2 = 1;

        while (f1 < n) {
            if (f1 % 2 == 0) {
              sum += f1;
            }

            int temp = f1 + f2;
            f1 = f2;
            f2 = temp;
        }

        return sum;
    }
}
