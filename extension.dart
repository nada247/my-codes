import 'dart:async';
import 'dart:io';

void main (){
  print("Enter the number : ");
  int? number = int.parse(stdin.readLineSync()!);
  print(number.isEvenAndPostive());

  print("Enter your text :");
  String? text = stdin.readLineSync();
  print(text?.upperFirstLetter());
  
}

/// هننشأ extention زي isEven and isEmpty كده مثلا 
extension XnadaX on int { 
  isEvenAndPostive(){
    return this >0 && isEven;
}
}
///_______________________________________________________

extension Text on String {
  upperFirstLetter(){
    return this[0].toUpperCase() + substring(1);
  }
}




