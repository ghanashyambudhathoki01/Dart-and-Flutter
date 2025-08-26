// A final variable can only be set once. 
// Its value is fixed at runtime(When the programs runs).
// We cannot resign later.
import "dart:io";

void main() {
  final currentTime = DateTime.now();  // fixed variable name
  print("The current time is: $currentTime");
}
