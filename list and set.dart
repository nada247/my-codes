import 'dart:math';

import 'package:test/test.dart';

void main(){

// List <String> student = ["nada","fatma","mohamed"];   //  ممكن محددش النوع عادي لكن دا الافضل
// List <int> numbers = [1,2,3,4,5,6,7,8];               // index يبدأ من الصفر
// List <double> douNum = [1.5 ,2.3 ,3.8 ,5.25 ,0.9];
// List <bool> value = [true , false];
// List random = ["nada", 1 , "ziad" , true , 2.5];

// print(student[1]);
// print(numbers);
// print(douNum);
// print(value);
// print(random);


// //// Change values ​​in the list:------------
// student[1] = "nancy";
// print(student);

// //// methods in the list:------------
// print(student.length);
// print(student.first);
// print(student.last);
// print(student.isEmpty);       // true or false
// print(student.isNotEmpty);   // true or false
// print(student.reversed);    // بيرتب العناصر بالعكس

// //// To find the index of the item in list :----
// print(student.indexOf("nada"));

// // print(student.single);   //لو تحتوى ع عنصر واحد هتشتغل غير كده ايرور

// const List girls= ["reem" , "aya", "mai"];     // مش ممكن اعدل عليها
// print(girls);


//// Adding item to list
// List names = ["nada","fatma", "aya", "mai"];
// names.add("nancy");
// names.addAll(["rahma", "shahd"]);
// names.insert(0, "reem");
// names.insertAll(2,["asmaa","amira"]);  // هيبدأو هتضافو في مكان الانكس التاني الى هو العنصر التالت
// print(names);


//// using for loop in list :---
// for(int i =0 ; i< names.length ; i++){
//    print(names[i]);
// }


//// for each:---
// names.forEach((e){
//   print("welcome $e");
// });


// List num = [];
// for(int i =0 ; i<21 ;i++){
//   num.add(i);
// }
// print(num);


// List names = ["nada","fatma", "aya", "mai"];
// //// لازم احدد القيمه ال هترجع لانها بتكون iterable علشان كده كتبت tolist()
// List nameAfter= names.map((e)=> "hi " +e).toList();    //بضيف كلمه ثابته مع كل اسم
// print(nameAfter);

///_____________________________________________________________________________
/// Remove item from list :---------
// List names = ["nada","fatma", "aya", "mai"];
// names.remove("nada");     // the value
// names.removeAt(1);       // the index
// names.removeLast();
// names.removeRange(0, 2);     //  just remove nada and fatma 
// print(names);

///_____________________________________________________________________________
/// Replace item from list :---------
// List names = ["nada","fatma", "aya", "mai"];
// names.replaceRange(0, 2, ["nancy", "reem"] );     // ممكن ابستبدلهم بعنصر واحد عادي
// print(names);

///_______________________________________________________________________________
///Multi Dimentional list :-----
// List a=[1,2,3];
// List b=[4,5,6];
// List x= [[1,2,3],[4,5,6]];    // 2D
// List y= [[7,8,9],[10,11,12],[13,14,15]];    // 3D
// List z=[x , y];
// List s=[...a , ...b];     // just items without []

// print(z);
// print(s);
// print(x[0]);
// print(y[1][2]);     // ثالث عنصر ف تاني ليست

///_____________________________
// List num1=[ 10,20,30,40,50,60];
// List num2=[];
// /// add any number > 40
// for(int i=0 ; i<num1.length ; i++){
//    if(num1[i]>40){
//     num2.add(num1[i]);}
// }
// print(num2);

// ///Another solution:
// num1.forEach((e){if(e>40){num2.add(e);}});
// print(num2);

// ///Another solution:
// /// Where With List:--------
// num2=num1.where((e)=>  e>40).toList();
// print(num2);
// // even numbers:-
// num2=num1.where((e)=>  e.isEven).toList();
// print(num2);
// // odd numbers
// num2=num1.where((e)=>  e.isdd).toList();
// print(num2);

///_________________________________________________________________
///Set:----------
/// نفس ال list ولكن الفرق ان ال set لو حاجه مكرره مش بتشوفها نهائي
// Set num={1,2,3,4,5,6,1,2};
// print(num);

// print(num.first);
// print(num.last);       // =6   !=2
// print(num.isEmpty);
// print(num.isNotEmpty);
// print(num.length);   // =6   !=8

// Set name ={"nada","nancy","reem"};
// name.add("vvv");
// name.addAll(["aaa","bbb"]);
// name.remove("aaa");
// name.removeAll(["nada","bbb"]);


// /// مهم
// print(name.elementAt(1));      // بطبع قيمه على حسي ال index
// print(name.contains("nada"));  // بشوف العنصر دا ف ال set ولا لأ (true or false)

// /// Difference & Intersection 
// Set n1 ={1,2,3,4,5,6};
// Set n2 ={4,5,6,7,8,9};

// Set n3 = n1.difference(n2);   // عناصر ف n1 وليست ف n2  
// print(n3);

// Set n4 = n1.intersection(n2);   // العناصر المشتركه , لا يفرق الترتيت
// print(n4);

// /// To List From Set:---
// List numbers =[1,2,3,4,5,6,7,8,2,4,3,1];
// print(numbers.toSet());

}