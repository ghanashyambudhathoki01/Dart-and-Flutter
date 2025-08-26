//if: Executes a block of code only if a given condition is true.

//else if: Checks another condition if the previous if or else if was false.

//else: Executes a block of code if none of the previous conditions are true.
void main() {
  var a = 4;
  var b = 4;
  
  if(a>b){
      print("a is greater than b");
  } else if(a==b){
      print("a and b are same");
  } 
  
  else {
      print("b is greater than a");
  }
}