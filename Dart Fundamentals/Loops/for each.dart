//forEach is a method of lists. It applies a function to every element.
import "dart:io";
void main() {
  List<int> numbers = [10, 20, 30];

  numbers.forEach((n) {
    print(n);
  });
}
