import 'dart:io';

void main(){

// try{
// int x = 12;
// int y = 0;
// int z = x ~/ y;
// print(z);
// }catch(e){print("Error: $e");}


// try{
// int x = 12;
// int y = 0;
// int z = x ~/ y;
// print(z);
// }on IntegerDivisionByZeroException{
//   print("error integer division by zero");
// }catch(e){print("Error: $e");}



// try{
// int x = 12;
// int y = 0;
// int z = x ~/ y;
// print(z);
// }on IntegerDivisionByZeroException{
//   print(" The error: error integer division by zero");
// }catch(e){
//   print("Error: $e");
// }finally{
//   print("thank you");}



// try{
//   String a = "nada";  
//   int b =int.parse(a);
//   print(b);
// }on IntegerDivisionByZeroException{
//   print("Format error");
// }catch(c){
//   print("Error: $c");
// }finally{print("......");}



////Finally دائماً هتشتغل
//// On لو انا حددت نوع الخطأ صح هتشتغل
//// Catch هتشتغل لو الكود فيه خطأ و on مش متحققه 
//// Try لو الكود صح هتشتغل بدون حاجه ل on and catch
}