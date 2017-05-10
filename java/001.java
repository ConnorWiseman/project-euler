public final class Problem001 {
    public static void main(String[] args) {
        int answer = sumMultiplesOfThreeAndFiveBelow(1000);
        System.out.println(answer);
    }

    public static int sumMultiplesOfThreeAndFiveBelow(int n) {
        int sum = 0;

        for (int i = 0; i < 1000; i++) {
            if (i % 3 == 0 || i % 5 == 0) {
                sum += i;
            }
        }

        return sum;
    }
}
