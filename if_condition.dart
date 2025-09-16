import 'dart:ffi';

void main (){
//// If Condition:_________
// int age =15;

// if (age>=18 && age<60){
//   print("you are adult");}
// else{
//   print("you are child");}
//__________________________________

// int number = 2;
// if (number == 1){
// print("day is sun");}
// else if(number ==2){
//   print("day is mon");}
// else if(number ==3){
//   print("day is tue");}
// else{
//   print("day is none");}

////______________________________________________________________________________
////Switch Case:___________ لازم استدعي 'dart:io'   نفس if بس مش بتقبل logical operator

// int num = 1;
// switch(num){
//     case 1:  // =       if num ==1 
//     print("day is saterday");
//     break;  // لو اتحقق اخرج

//     case 4:
//     print("day is fri");
//     break;

//     default:
//     print("invalid day");
// }



//_____________________________________________________________________________________________
//// Assert :بدخل انا الخطأان وجد لو الشرط صح هيرن لكن لو خطأ هيطلع ايرور بالرساله اللى هكنبها

// int age = 20;
// assert( age>0 , "age must to be larger than zero");
// print(" your age is $age");

////Ternary Operator:_____________ the same from if 
// int age = 80;
// String message = (age>20) ? "age larger than 20" : "age less than 20" ;
// print(message);

////Ex_______________________________________________________________________________
// int num = 5;
// if (num >=0){print(" the number is postive");}
// else{print(" the number is negative");}

// int num1 = 8;
// if (num1% 2==0 ){print(" the number is even");}
// else{print(" the number is odd");}

// double price = -66;
// double discount = 0;
// if (price >=100){
//     discount = 0.2;
// }else if (price >50 && price <100){
//     discount = 0.1;
// }else if(price <=50 && price >0){

//     discount = 0;
// }else{
//     discount=0;
//     print("the price can't to br negative");
// }
// double finalPrice= price-price*discount;
// print("price: $finalPrice , doscount: ${discount*100} %");

//____________________________________________________________________
//// Try:-  لتجنب الايرور

// try{
// الكود بتاعنا       , لو طلع ايرور او متحققش هيدخل على  كود كاتش
//}catch (e){
// الكود البديل زي else
// }
//_____________________________________________________________________




}