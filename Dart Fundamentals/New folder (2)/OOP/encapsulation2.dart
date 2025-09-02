import "encapsulation.dart";
void main (){
  var d = Data();
  print (d.importantData);
  d.changeData = "Namaste";
  print(d.importantData);
}