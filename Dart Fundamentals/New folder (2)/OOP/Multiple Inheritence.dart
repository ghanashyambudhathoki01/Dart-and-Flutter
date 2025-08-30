mixin class Mom {
  void Eat(){}
}
mixin class Father {
  String surname = "Budhathoki";
  void writing (){
    print ("I love to writing");
  }
}
class Son with Father, Mom{}
void main (){
  var son =Son ();
  print (son.surname);
  son.Eat();
  son.writing();
}
