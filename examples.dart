import 'dart:io';
import 'dart:math';
void main(){

  ///Ex 1 :---
// List users =[
//   {"name":"ahmed", "password":"111"},
//   {"name":"adam", "password":"a999"},
//   {"name":"nour", "password":"abc"}
// ];

// print("Enter your name:");
// String? name=stdin.readLineSync();
// print("Enter your password:");
// String? password=stdin.readLineSync();

// var result=users.firstWhere((e)=>e["name"]==name ,orElse: () => null);
// // orElse علشان ميطلعش ايرور لو الشرط متحققش
// if(result==null){
//   print("The name is not found");}
// else{
//   if(result["password"]==password){
//     print("Sin_in successful");}
//     else{print("incorrect password");
//     }
//     }

///__________________________________________________
 /// Ex 2:--
 /// Avarage
// List num = [1,2,3,4,5,6,7,8,9];

// double r = 0;

// for(int i =0 ; i< num.length ;i++){
//   r += num[i];
// }

// double result = r/num.length;
// print("Avarage : $result");

// /// ممكن اكتبه بال function
// calculatAvarage([10,20,30,40,50,60,70,80,90]);
// calculatAvarage([50,24,18,92,74]);
///________________________________________________

 ///Ex 3 :--
 /// حل المعادلات من الدلرجه التانيه
 
// print("Enter (a): ");
//  double? a=double.parse(stdin.readLineSync()!);  // ممكن ادخل نص وانا بستخدمها احولهم ل double
//  print("Enter (b): ");
//  double? b=double.parse(stdin.readLineSync()!);
//  print("Enter (c): ");
//  double? c=double.parse(stdin.readLineSync()!);

// double delta = (b *  b) - (4 * a * c);

// if(delta >0){
//   double x1 =(-b - sqrt(delta)) / (2 * a);
//   double x2 =(-b + sqrt(delta)) / (2 * a);
//   print("Two soultion: $x1  ,  $x2");
//   print("Two soultion: ${x1.toStringAsFixed(3)}  ,  ${x2.toStringAsFixed(3)}");   // تحديد عدد لارقام العشريه
// }else if( delta ==1){
//   double x1 = -b / (2 * a);
//   print("One soultion: $x1");
// }else{
//   print("No soultion");
// }

/// هنحل نفس الكود ب function
// soulvingQuadraticEquations(a, b, c);
 

}

 /// Ex 2
// void calculatAvarage(List l){
  // double sum = 0;
  // for(int i =0; i<l.length ;i++){
  //   sum +=l[i];
  // }
  // double result =sum / l.length;
  // print("Avarage : $result");
// }


/// Ex 3
// void soulvingQuadraticEquations(double a , double b , double c){
// double delta = (b *  b) - (4 * a * c);

// if(delta >0){
//   double x1 =(-b - sqrt(delta)) / (2 * a);
//   double x2 =(-b + sqrt(delta)) / (2 * a);
//   print("Two soultion: $x1  ,  $x2");
//   print("Two soultion: ${x1.toStringAsFixed(2)}  ,  ${x2.toStringAsFixed(2)}");   // تحديد عدد لارقام العشريه
// }else if( delta ==1){
//   double x1 = -b / (2 * a);
//   print("One soultion: $x1");
// }else{
//   print("No soultion");
// }
// }