abstract class Human {
  String? haircolor; 
  
  void walk() {
    print("walk"); 
  }

  void dance();
}

class Sita extends Human {
  @override 
  void dance() {
    print("Kathak"); 
  }
}
 