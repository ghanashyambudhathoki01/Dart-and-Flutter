class Person {
  String? name;
  String? hairColor;
  int? weight;
  //Functions (Behaivour) [Method]
  void walk () {
    print ("Person walking");
  }
  void speak (){
    print ("Person speaking");
  }
  // Constructor 
  Person (String myname, String myHairColor, int myWeight){
    name = "Ghanashyam";
    hairColor = "Black";
    weight= myWeight;
  }
}
void main (){
  var person1 = Person ("Ghanashyam", "Black", 80);
  print ("Persom 1 is ${person1.name}");
  person1.speak ();
}