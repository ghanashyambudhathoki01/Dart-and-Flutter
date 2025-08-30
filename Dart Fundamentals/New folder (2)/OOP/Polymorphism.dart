class Animal {
  void speak (){
    print ("Speak");
  }
}
class Cat extends Animal {
  @override
  void  speak (){
    print ("Meow");
  }
}
class Dog extends Animal {
  @override
  void  speak (){
    print ("Bhau Bhau");
  }
}
void main (){
  var cat = Cat ();
  var dog = Dog ();
  cat.speak ();
  dog.speak ();
}