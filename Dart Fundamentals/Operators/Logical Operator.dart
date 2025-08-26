// There are lots of logical operators such as : 
// Operator     Meaning           Example             Result      
// &&           AND               (true && false)     false
// `                              `                   OR
//  !           NOT             !tue                  false
import "dart:io";
void main (){
bool sunny = false, umbrella = false;
print((sunny && !umbrella) ? "Go!" : "Stay!");


}