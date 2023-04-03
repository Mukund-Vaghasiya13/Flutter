import 'dart:io';

void main()
{

  print("Enter the no:");
  var a = int.parse(stdin.readLineSync()!);

  if(a > 0)
  {
    print("Negative");
  }
  else{
    print("Positive");
  }
}