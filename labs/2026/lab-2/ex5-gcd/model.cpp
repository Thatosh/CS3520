#include <iostream>
using namespace std;

int gcd(int a, int b) {
    while (b != 0) {
        int temp = a % b;
        a = b;
        b = temp;
    }

    return a;
}

int main() {
    int x = 48;
    int y = 18;

    cout << gcd(x, y) << endl;

    return 0;
}
