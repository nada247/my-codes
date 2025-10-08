import 'dart:convert';
import 'dart:mirrors';

import 'package:test/test.dart';


void main (){
  /// _____________________Task Three __________________________
  
  Map<String, int> scores = {'Ali': 80, 'Sara': 90, 'Omar': 70};
  Map<String, int> scores2 = {'Ziad': 70, ',Mai': 60, 'Nada': 90};
  Map<int, String> products = {1: 'Phone',2: 'Laptop',3: 'Tablet'};


// // 1. Add a new key-value pair to a map.
// scores["nada"]=50;
// print(scores);


// // 2. Update a value using update().
// scores.update("Ali", (value)=> value *2 );
// print(scores);


// // 3. Remove a key from the map.
// products.remove(3);
// print(products);


// // 4. Check if a key exists.
// bool check = products.containsKey(3);
// print(check);


// // 5. Calculate the average of all values.
// double sumValues = 0 ;
// for ( num value in scores.values){
//       sumValues += value ;
// }
// double averageValue = sumValues / scores.values.length ;
// print("Avaragr of all values in map scores: $averageValue");


// // 6. Filter the map to only those with value > 80.
// Map <String , int> Filtered = Map.fromEntries(scores.entries.where((v)=> v.value>80));
// print(Filtered);
// //or
// scores.removeWhere((key,value)=> value <80);
// print(scores);


// // 7. Convert map to list of strings 'Name:Score'.
// List<MapEntry<String , int>> mapToList = scores.entries.toList();
// print(mapToList);


// // 8. Find the key with the highest value.
// String maxKey = scores.keys.first;
// int maxValue = scores[maxKey]!;
// scores.forEach((kay,value){
//   if (value > maxValue){
//       maxValue= value ;
//       maxKey = kay;
//   }
// });
// print("key with the highest value : $maxKey , your value : $maxValue");


// // 9. Create a new map with each value increased by 10%.
// Map<String, double> newMap = {};
// for (String key in scores.keys) {
//   int originalValue = scores[key]!; 
//   double increasedValue = (originalValue * 1.1); 
//   newMap[key] = increasedValue; 
// }
// print(newMap);


// // 10. Group names by their score into a map of score -> list of names.
// Map < int , List<String> > scoreOfNames = {};
//   scores.forEach((key, value) {
//     scoreOfNames.putIfAbsent(value, () => []);
//     scoreOfNames[value]!.add(key);
//   });
// print(scoreOfNames);


// // 11. Merge two maps giving priority to the second.
// Map <dynamic ,dynamic > margedMaps = {...scores ,...products};
// print(margedMaps);


// // 12. Reverse a map (value becomes key).
// Map<int, String> reversed = {
//   for (var entry in scores.entries) entry.value: entry.key};
// print(reversed);


// // 13. Uppercase all string values in the map.
// Map<String, int> upperValues = Map.fromEntries(products.entries.map((e) => MapEntry(e.value.toUpperCase(), e.key)));
// print(upperValues);


// // 14. Store the length of each value into a new map.
// Map < String , int > newMapp = {};
// for (var entry in products.entries) {
//   newMapp[entry.value] = entry.value.length;
// }
// print(newMapp);


// // 15. Use forEach() to print keys and values.
// scores.forEach((key, value) {
//     print("key : $key , value : $value");
// });


// // 16. Make a deep copy of a map.
// Map < String , int > copyMap = Map.from(scores);
// print(copyMap);


// // 17. Use putIfAbsent() to add missing key.
// scores.putIfAbsent("ziad", ()=> 95);
// print(scores);


// // 18. Make a map unmodifiable.
// Map <String , int > unmodifiableMap = Map.unmodifiable({"read": 1});
// print(unmodifiableMap);
// // unmodifiableMap.remove("read");    // error


// // 19. Convert map to JSON string.
// String jsonString = jsonEncode(scores);
// print(jsonString);


// // 20. Convert JSON string back to map.
// Map < String , dynamic > jsonMap = jsonDecode(jsonString);
// print(jsonMap);


// // 21. Sort the map by keys or by values.
// Map < String , int > sortedByKeys = Map.fromEntries(scores.entries.toList()..sort((a , b) => a.key.compareTo(b.key)));
// print(sortedByKeys);
// //or 
// Map < String , int > sortedByValues = Map.fromEntries(scores.entries.toList()..sort((a , b) => a.value.compareTo(b.value)));
// print(sortedByValues);


// // 22. Filter map to remove keys < 2.
// products.removeWhere((key,value)=> key < 2);
// print(products);


// // 23. Convert map to list of MapEntry.
//   List<MapEntry<String, int>> entriesList = scores.entries.toList();
//   print(entriesList);


// 24. Write a function to merge a list of maps.
  Map<dynamic,dynamic>? margeFunction (List<Map<dynamic , dynamic >> maps){
    Map <dynamic , dynamic > res = {};
      for(var map in maps ){
        res.addAll(map);
      }
      return res ;
  }

print(  margeFunction([scores , scores2 , products]));


// 25. Implement a small cache using a map with max 5 entries (FIFO).
  Map <dynamic , dynamic > smallCashe = {};
  List<dynamic> order = [];

  void addToSmallCache(dynamic key, dynamic value) {
    if (smallCashe.length >= 5) {
      dynamic fifo = order.removeAt(0);
      smallCashe.remove(fifo);
    }
    smallCashe[key] = value;
    order.add(key);
  }

  addToSmallCache('a', 'Apple');
  addToSmallCache('b', 'Banana');
  addToSmallCache('c', 'Cherry');
  addToSmallCache('d', 'Date');
  addToSmallCache('e', 'Elderberry');
  addToSmallCache('f', 'Fig'); // أول واحد "a" هيتشال

  print(smallCashe); // هيطبع الخمسة الأخيرين


}
