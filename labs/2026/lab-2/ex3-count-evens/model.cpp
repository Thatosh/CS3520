#include <iostream>
using namespace std;

int main() {
    int arr[] = {3, 8, 12, 7, 20, 5, 6};
    int n = 7;
    int count = 0;

    for (int i = 0; i < n; i++) {
        if ((arr[i] & 1) == 0) {
            count++;
        }
    }

    cout << count << endl;

    return 0;
}
