//The for-in loop is used to go through each element in a collection (like a list).
import "dart:io";
void main() {
  List<String> fruits = ['Apple', 'Banana', 'Mango'];

  for (String fruit in fruits) {
    print(fruit);
  }
}
