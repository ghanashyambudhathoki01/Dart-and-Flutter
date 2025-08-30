class Person {
// Variable (Porpoerties)
String? name;
String? hairColor;
int? weight;

// Functions (Behaivour) [Method]
void walk(){
  print ("Person walking");
}
void speak (){
  print ("Person Speaking");
}
}
void main (){
  var person1 = Person ();
  person1.name = "Ghanashyam";
  person1.hairColor = "Black";
  person1.weight = 60;
  print ("Person 1 is ${person1.name}");
  person1.speak();
}