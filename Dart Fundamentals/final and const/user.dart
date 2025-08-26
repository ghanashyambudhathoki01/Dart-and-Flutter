import 'dart:io';

void main() {
  print("Enter the value of pi:");
  String? input = stdin.readLineSync();
  double pi = double.parse(input!);
  print("The value of pi is: $pi");
}
