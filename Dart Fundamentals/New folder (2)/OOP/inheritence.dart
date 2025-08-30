class Father {
  String Surname = "Budhathoki";
  void writng (){
    print ("I love to writing");
  }
}
class Son extends Father {}
void main (){
  var son = Son ();
  print(son.Surname);
  son.writng();
}