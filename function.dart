import 'dart:io';

void main(){
// myName();

// infomation("aya",22 );

// areaRectangle(10, 20);

// print(sum(5, 15));

// names();
// names("reem");

// xxx("omar");
// xxx("ahmed",20);

// printname(20, "nada");
// nnnn(name: "nada", age: 20);
// nnnn(name: "nada");


// int v=sumNumber(10, 20, 30);
// print(v);


// // Anonymous Function: داله ليس لها اسم
// //EX1:
// List x =["a","b","c","d"];
// x.forEach((e){print("hiii ");});    //Anonymous Function

// //EX2:
// var y =(int a){
//   return a*2;
// };
// print(y(3));

}
////______________________________________________________________


// void myName(){          
//   print("nada mohamed");
// }


// void infomation(String name , int age){     //void معناها إن الدالة مش بترجع أي قيمة
//   print("my name is $name and my ages $age");
// }


// void areaRectangle(double l, double w){
//   double area= l*w;
//   print("area : $area");
// }

// // //Return in function:---
// int sum(int a , int b){
//   int c = a+b;
//   return c;
// }


// // // ممكن اجعل ال parameter اختياري انه يتكتب
// void names([String? name=""]){         // name=""    علشان ميرجعش null
//   print("hi $name");
// }


// // // Parameter اختياري واجباري 
// void xxx(String name ,[int? age=0]){       // الاختيارى ف الاخر
//   if(age==0){
//     print("hpw are you $name");}
//   else{
//     print("how are you $name ,your age is $age ?");}
// }


// // // Named Parameter:----  (لو محددناش النوع هياخد ال parameter بالترتيب)
// void printname(name , age){
//   print("hi $name age $age");
// }

// void nnnn({name="" , age=0} ){        // هي دي ال named parameter
//   print("hi $name age $age");
// }

// // // لو كتبنا قبل ال parameter كلمه required هتخليه اخباري يتكتب


// // // Arrow :---   (طريقه مختصره لكتابه الداله)
// int sumNumber(int a, int b , int c)=> a + b + c ;


// // Scope in function :---  المدى   

// المتغيرات اللي بتتعرف برا أي دالة بتكون متاحة لكل الكود (Global).
// لو المتغير جوه دالة main، يبقى استخدامه محدود داخل main والدوال اللي جواها بس.
// لو المتغير جوه دالة تانية، يبقى استخدامه محدود داخل نفس الدالة دي بس (Local).
