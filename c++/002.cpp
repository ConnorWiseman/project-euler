#include <iostream>
using namespace std;

int sumEvenFibonacciNumbersBelow(int n)
{
   int sum = 0;
   int f1 = 0;
   int f2 = 1;

   while (f1 < n)
   {
       if (f1 % 2 == 0)
          sum += f1;

       f1 = f2;
       f2 = f1 + f2;
   }

   return sum;
}

int main(int argc, const char * argv[])
{
   int answer = sumEvenFibonacciNumbersBelow(4000000);
   cout << answer << endl;

   return 0;
}
