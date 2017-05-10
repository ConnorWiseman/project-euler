#include <iostream>
using namespace std;

int sumMultiplesOfThreeAndFiveBelow(int n)
{
   int sum = 0;

   for (int i = 0; i < n; i++) {
      if (i % 3 == 0 || i % 5 == 0) {
         sum += i;
      }
   }

   return sum;
}

int main(int argc, const char * argv[])
{
   int answer = sumMultiplesOfThreeAndFiveBelow(1000);
   cout << answer << endl;

   return 0;
}
