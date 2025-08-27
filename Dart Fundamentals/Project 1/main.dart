import "dart:math";
import "dart:io";
void main() {
  var items = ["rock", "paper", "scissor"];
  while (true){
    var choice = Random().nextInt(3); // 0,1,2
    var computerChoice = items[choice];
    var userInput = stdin.readLineSync();
    if (userInput == "q"){
        break;
    }
    if (computerChoice == userInput) {
         print("It is a draw");
  } else if ((computerChoice == "rock" && userInput == "paper") || (computerChoice == "paper" && userInput == "scissor") || (computerChoice == "scissor" && userInput == "rock")) {
            print("User won");
  }  else {
    print("User lost");
  }

  print("Computer choice: ${computerChoice}");
  }
 
}
