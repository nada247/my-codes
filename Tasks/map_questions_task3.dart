import 'dart:mirrors';

import 'package:test/test.dart';

void main (){

  Map<String, int> scores = {'Ali': 80, 'Sara': 90, 'Omar': 70};
  Map<int, String> products = {1: 'Phone',2: 'Laptop',3: 'Tablet'};

// 1. Add a new key-value pair to a map.
scores["nada"]=50;
print(scores);

// 2. Update a value using update().
scores.update("Ali", (value)=> value *2 );
print(scores);

// 3. Remove a key from the map.
products.remove(3);
print(products);

// 4. Check if a key exists.
bool check = products.containsKey(3);
print(check);

// 5. Calculate the average of all values.
double sumValues = 0 ;
for ( num value in scores.values){
      sumValues += value ;
}
double averageValue = sumValues / scores.values.length ;
print("Avaragr of all values in map scores: $averageValue");


// 6. Filter the map to only those with value > 80.
Map <String , int> Filtered = Map.fromEntries(scores.entries.where((v)=> v.value>80));
print(Filtered);
//or
scores.removeWhere((key,value)=> value <80);
print(scores);

// 7. Convert map to list of strings 'Name:Score'.
List<MapEntry<String , int>> mapToList = scores.entries.toList();
print(mapToList);

// 8. Find the key with the highest value.
String maxKey = scores.keys.first;
int maxValue = scores[maxKey]!;
scores.forEach((kay,value){
  if (value > maxValue){
      maxValue= value ;
      maxKey = kay;
  }
});
print("key with the highest value : $maxKey , your value : $maxValue");

// 9. Create a new map with each value increased by 10%.
Map<String, double> newMap = {};
for (String key in scores.keys) {
  int originalValue = scores[key]!; 
  double increasedValue = (originalValue * 1.1); 
  newMap[key] = increasedValue; 
}
print(newMap);


// 10. Group names by their score into a map of score -> list of names.
Map < int , List<String> > scoreOfNames = {};
  scores.forEach((key, value) {
    scoreOfNames.putIfAbsent(value, () => []);
    scoreOfNames[value]!.add(key);
  });
print(scoreOfNames);

// 11. Merge two maps giving priority to the second.
Map <dynamic ,dynamic > margedMaps = {...scores ,...products};
print(margedMaps);

// 12. Reverse a map (value becomes key).
Map<int, String> reversed = {
  for (var entry in scores.entries) entry.value: entry.key};
print(reversed);

// 13. Uppercase all string values in the map.
Map<String, int> upperValues = Map.fromEntries(products.entries.map((e) => MapEntry(e.value.toUpperCase(), e.key)));
print(upperValues);

// 14. Store the length of each value into a new map.
// 15. Use forEach() to print keys and values.
// 16. Make a deep copy of a map.
// 17. Use putIfAbsent() to add missing key.
// 18. Make a map unmodifiable.
// 19. Convert map to JSON string.
// 20. Convert JSON string back to map.
// 21. Sort the map by keys or by values.
// 22. Filter map to remove keys < 2.
// 23. Convert map to list of MapEntry.
// 24. Write a function to merge a list of maps.
// 25. Implement a small cache using a map with max 5 entries (FIFO).

}