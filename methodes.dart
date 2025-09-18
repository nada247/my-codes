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


// 5-GetRange:--
// نفس فكره ال sublist

List names = ["adam","nour","shams","yazan"];
var nn = names.getRange(1,3 );
print(nn.toList());
}