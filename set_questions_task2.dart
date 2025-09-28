
import 'dart:async';
import 'dart:convert';

import 'extension.dart';

void main (){
Set<int> a = {1, 2, 3, 4, 5};
Set<int> b = {4, 5, 6, 7};
Set<String> names = {'Ali', 'Sara', 'Omar', 'Nada', 'Ali'};

// // 1. Remove common elements between two sets from the first set.
// a.removeAll(b);
// print(a);

// // 2. Add all elements from set B to set A without duplicates.
// Set<int> unionSet= a.union(b);
// print(unionSet);

// // 3. Count the number of unique elements between two sets.
// Set <int> uniqueNum = a.difference(b).union(b.difference(a));
// print("Number of unique elements: ${uniqueNum.length}");
// //or
// print(a.union(b).length);

// // 4. Compute the symmetric difference between two sets.
// Set <int> difference = a.difference(b);
// print("The Difference: $difference");

// // 5. Find the intersection across a list of sets.
// Set<int> intersection = a.intersection(b);
// print("The intersection: $intersection");

// // 6. Convert set to a sorted list.
// List<int> aSorted = a.toList()..sort();
// List<int> bSorted = b.toList()..sort();
// print("A : $aSorted");
// print("B : $bSorted");

// // 7. Use retainWhere() to keep only even numbers.
// a.retainWhere((e)=> e % 2 ==0);
// print(a);

// b.retainWhere((e)=> e % 2 ==0);
// print(b);

// // 8. Group names in a Map by their first letter.
// Map<String , String> mapNames ={for (var name in names ) name[0]: name };
// print(mapNames);

// // 9. Count how many elements start with a certain letter.
// String letter = "A";
// int count = names.where((e)=> e[0]==letter).length;     // = e.startWith(letter)
// print("Names that start with the letter A: $count");

// // 10. Use lookup() to retrieve an element or a default value.
// print(names.lookup("Ali"));    // Ali
// print(names.lookup("nada"));  // null

// //11. Make an unmodifiable set and try adding elements.
// Set<String> unmodifiableSet = Set.unmodifiable({"a","b","c","d"});
// print(unmodifiableSet);
// unmodifiableSet.add("e");   // null
// print(unmodifiableSet);  

// // 12. Create a subset of the first 3 elements.
// List <int> subList = a.toList();
// Set <int> subSet = subList.take(3).toSet();
// print(subSet);

// // 13. Compare two sets to check if one is a superset of the other. 
// bool isSuberSet = a.containsAll(b);
// print(isSuberSet);

// // 14. Write a function that checks if a set is a subset of another.
// void checkSubset(Set x , Set y ){
//     bool isSubSet = x.contains(y);
//     print(isSubSet);
// }
// checkSubset(a, b);

// // 15. Convert a set to a comma-separated string.
// String namesString = names.reduce( (a, b) => '$a , $b');  
// print(namesString);

// // 16. Create a mixin that converts any list to a set removing duplicates.
// Transform transform =Transform();
// print(transform.convertFunction([0,1,2,3,4,5]));

// // 17. Convert a list of maps to a set of certain values.
// List <Map> information = [
//     {"name": "nada" , "id": 111 },
//     {"name": "mai" , "id": 123 },
//     {"name": "reem" , "id": 555 },
// ];
// Set namesSet = information.map((element)=> element["name"]).toSet();
// print(namesSet);

// 18. Extract all names longer than 3 chars into a new set.
Set longerThanTreeChar ={};
for (String name in names){
    if(name.length >3){
        longerThanTreeChar.add(name);
    }
}
print(longerThanTreeChar);


// 19. Use spread operator to merge multiple sets.
Set <int> mergedSet = {...a,...b};
print(mergedSet);

// 20. Write a function to take any number of sets and return their union.
Set<T> unionSets<T>(List<Set<T>> sets){
    Set <T> result= <T>{};
    for( var set in sets ){
        result.addAll(set);
    }
    return result ;
}
print(unionSets([a,b,names]));

}


mixin ListToSet {
  Set convertFunction(List mylist) {
    return mylist.toSet(); 
  }
}

class Transform with ListToSet {}