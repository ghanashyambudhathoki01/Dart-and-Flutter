class Person {
  //Variable (Porperties)
  String? name;
  String? hairColor;
  int? Weight;
  //Functions (Behaivour) [Method]
  void walk (){
    print("Person Walking");
  }
  void speak (){
    print ("Person Speaking");
  }
  //Constructor 
Person (this.name,this.hairColor, this.Weight);
}
void main (){
  var person1 = Person ("Ghanashyam", "Black", 80);
  print ("Person 1 is ${person1.name}");
  person1.speak (); 
}