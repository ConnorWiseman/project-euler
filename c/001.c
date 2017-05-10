#include <stdio.h>

int sumMultiplesOfThreeAndFiveBelow(int n)
{
   int sum = 0;
   int i;

   for (i = 0; i < n; i++) {
      if (i % 3 == 0 || i % 5 == 0) {
         sum += i;
      }
   }

   return sum;
}

int main(int argc, char *argv[])
{
   int answer = sumMultiplesOfThreeAndFiveBelow(1000);
   printf("%d\n", answer);

   return 0;
}
