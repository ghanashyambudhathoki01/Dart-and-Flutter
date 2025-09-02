class Data { 
  String _important = "hello";
  String get importantData{
    return _important;
  }
  set changeData (String updatedData){
    if (updatedData.length >=5){
      _important = updatedData;
    }
  }
}
void main (){
  var obj = Data ();
  print (obj.importantData);
  obj.changeData= "Hi";
  print (obj.importantData);
  obj.changeData = "Welcome";
  print (obj.importantData);
}