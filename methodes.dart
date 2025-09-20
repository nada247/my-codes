import 'dart:io';

void main(){

// // 1-Sublist:--
// List names = ["adam","nour","shams","yazan"];
// List subNames =names.sublist(1);        // nouar & shams & yazan
// print(subNames);
// List subNames2 =names.sublist(1, 3);    // nouar & shams  
// print(subNames2);


// // 2-Shuffle:--
// List names = ["adam","nour","shams","yazan"];
// names.shuffle();     // اعاده ترتيب عشوائي
// print(names);


// // 3-as map:--
// // تحول ال list الى map وتجعل ال index هو ال key
// List names = ["adam","nour","shams","yazan"];
// Map newMap =names.asMap();
// print(newMap);


// // 4-Wheretype:--
// // من خلالها اقدر افصل انواع الداتا من list شامله

// List random = ["nada", 20 , 5.25 , true];
// var listString= random.whereType<String>();
// var listInt= random.whereType<int>();
// var listDouble= random.whereType<double>();
// var listBool= random.whereType<bool>();
// print(random);
// print(listString);
// print(listInt);
// print(listDouble);
// print(listBool);


// // 5-GetRange:--
// // نفس فكره ال sublist

// List names = ["adam","nour","shams","yazan"];
// var nn = names.getRange(1,3 );
// print(nn.toList());    //[nour, shams]


// // 6- Any & Every :--
//any:
// بترجع true لو فيه *عنصر واحد بس* على الأقل حقق الشرط.
// يعني مش لازم كل العناصر تحقق الشرط.
//every:
// بترجع true بس لو *كل العناصر* حققت الشرط بدون استثناء.

//EX:
// List number =[1,2,3,4,5,6];
// print(number.any((element)=> element>4));     // true or false

// print(number.every((element)=> element>4));


// // 7-Take & Skip :--
// List numbers =[1,2,3,4,5,6];
// print(numbers.take(2));     // بتاخد العناصر من الاول لحد الاندكس اللى حددته
// print(numbers.skip(2));     // بتتجاهل العناصر من الاول لحد الاندكس اللى حددته


// // 8-Fold & Reduce :--
// List numbers =[1,2,3,4,5,6];
// var x=numbers.fold(2,(previousValue ,element)=> element+previousValue);
// print(x);

// var xx=numbers.fold(2,(pV,e){
//     print("PV: $pV");
//     print("E: $e");
//     return e+pV;     // ممكن احدد رقم ثابت
// });
// print(xx);


// var y=numbers.reduce((previousValue ,element)=> element+previousValue);
// print(y);

// var yy=numbers.reduce((pV,e){
//     print("PV: $pV");
//     print("E: $e");
//     return e+pV;     // ممكن احدد رقم ثابت
// });
// print(yy);


// var zz=numbers.reduce((pV,e){
//     print("PV: $pV");
//     print("E: $e");
//     return 1;
// });
// print(zz);

}