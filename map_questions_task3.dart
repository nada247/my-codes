// import 'package:test/test.dart';

void main (){

  Map<String, int> scores = {'Ali': 80, 'Sara': 90, 'Omar': 70};
  Map<int, String> products = {1: 'Phone',2: 'Laptop',3: 'Tablet'};

// 1. Add a new key-value pair to a map.
scores["nada"]=50;
print(scores);

// 2. Update a value using update().
scores.update("Ali", (value)=> value *2);
print(scores);

// 3. Remove a key from the map.
products.remove(1);
print(products);

// 4. Check if a key exists.
bool check = products.containsKey(2);
print(check);

// 5. Calculate the average of all values.
double sumValues = 0 ;
for ( var value in scores.values){
      sumValues += value ;
}
double averageVlue = sumValues / scores.values.length ;
print("Avaragr of all values in map scores: $averageVlue");

// 6. Filter the map to only those with value > 80.
// 7. Convert map to list of strings 'Name:Score'.
// 8. Find the key with the highest value.
// 9. Create a new map with each value increased by 10%.
// 10. Group names by their score into a map of score -> list of names.
// 11. Merge two maps giving priority to the second.
// 12. Reverse a map (value becomes key).
// 13. Uppercase all string values in the map.
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