import 'dart:io';

void main(){
Map information={
  "name":"aya" ,
   "age":20,

};
// print(information);
// print(information["age"]);

//// Methods in map:--
// print(information.keys);
// print(information.values);
// print(information.length);
// print(information.isEmpty);
// print(information.isNotEmpty);
// // مهم
// print(information.entries);        // = (MapEntry(name: aya), MapEntry(age: 20))



// // تغيير قيم ف ال map
// information["age"]=19;
// print(information);

// // Add key and value in my map:--
// information["id"]=123;
// print(information);

//// Add key and value from my map:--

// information.remove("age");
// print(information);

// information.clear();   // تمسح كل حاجه

// // Find the key & value on the map :---   =>(true or false)
// print(information.containsKey("name"));          // key

// print(information.containsValue("nnnnnn"));       // value


// // using loop in map :--
information.forEach((key , value ){
  print("key : $key , value : $value");
});


}