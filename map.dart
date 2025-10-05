import 'dart:io';
// import 'dart:js_interop';

void main(){
Map information={
  "name":"aya" ,
   "age":20,

};
print(information);
print(information["age"]);

 Map<String, int> from = Map.from({'x': 10, 'y': 20});
  print(from);

  Map<String, int> of = Map.of({'x': 10, 'y': 20});    //الافضل
  print(of);

  Map<String, int> unmodifiable = Map.unmodifiable({'readonly': 1});
print(unmodifiable);

//// Methods in map:--
// print(information.keys);
// print(information.values);
print(information.length);
// print(information.isEmpty);
// print(information.isNotEmpty);
// // مهم
print(information.entries);        // = (MapEntry(name: aya), MapEntry(age: 20))



// // تغيير قيم ف ال map
// information["age"]=19;
// print(information);

// // Add key and value in my map:--
// information["id"]=123;
// print(information);

//// Remove key and value from my map:--

// information.remove("age");
// print(information);
//information.removeWhere((key, value) => value > 3);
// information.clear();   // تمسح كل حاجه

// // Find the key & value on the map :---   =>(true or false)
// print(information.containsKey("name"));          // key

// print(information.containsValue("nnnnnn"));       // value

  // Creating maps from iterables
  List<String> keys = ['name', 'age', 'city'];
  List<dynamic> values = ['John', 25, 'NYC'];
  Map<String, dynamic> fromIterables = Map.fromIterables(keys, values);
  print(fromIterables);


  // 10. Map as Cache/Lookup Table
  Map<String, String> cache = {};

  String expensiveOperation(String input) {
    return cache.putIfAbsent(input, () {
      // Simulate expensive operation
      print('Computing for: $input');
      return input.toUpperCase();
    });
  }
  expensiveOperation("name");


// // using loop in map :--
information.forEach((key , value ){
  print("key : $key , value : $value");
});

for (var entry in information.entries) {
  print('key: ${entry.key}, value: ${entry.value}');
}

///- jsonEncode() ⇨ من Map إلى String.
///- jsonDecode() ⇨ من String إلى Map.


}