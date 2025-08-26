// There are lots of null aware operators such as : 
// Operator     Meaning                   Example                     
// ??           Default value if null     int?age;     
//                               `       int vaild =age ?? 18;           
//  !           Access Property          person?.name                  
//  ??=         Asign only if null       x ??=10;

import "dart:io";
void main (){
 int? age;
 print("Age : ${age ?? 18}");
}