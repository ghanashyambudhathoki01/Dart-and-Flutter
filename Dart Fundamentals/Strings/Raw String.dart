void main() {
  String raw = r"Line1\nLine2\tTabbed"; 
  print(raw);
}
//Normal string: escape sequences are processed.

//Raw string (r"..."): escape sequences are ignored, everything is literal.