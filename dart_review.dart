// ===================================================================
// 1. FUNDAMENTAL DATA TYPES & VARIABLES (100+ Questions)
// ===================================================================

import 'dart:collection';
import 'dart:convert';

void fundamentalDataTypes() {
  print('=== FUNDAMENTAL DATA TYPES ===');

  // 1. Basic Types
  int age = 25;
  double temperature = 36.5;
  String name = 'John Doe';
  bool isActive = true;

  // 2. Nullable Types (Null Safety)
  int? nullableAge;
  String? nullableName;
  late String lateInitialized;

  // 3. Constants and Final
  const double pi = 3.14159;
  final DateTime now = DateTime.now();

  // 4. Dynamic and Object
  dynamic dynamicVar = 'Hello';
  dynamicVar = 42; // Can change type
  Object objectVar = 'Hello';

  // 5. Runes (Unicode characters)
  Runes heartEmoji = Runes('\u2665');
  String heartString = String.fromCharCodes(heartEmoji);

  // 6. Symbols
  Symbol symbolExample = #mySymbol;

  // 7. Type checking and casting
  print('Type checks:');
  print('dynamicVar is String: ${dynamicVar is String}');
  print('dynamicVar is int: ${dynamicVar is int}');

  // 8. Safe casting
  String? safeString = dynamicVar as String?;

  // 9. Null-aware operators
  String displayName = nullableName ?? 'Unknown';
  int nameLength = nullableName?.length ?? 0;
  nullableName ??= 'Default Name'; // Assign if null

  // 10. Late variables
  lateInitialized = 'Initialized later';

  // 11. Type conversion
  String numberString = '123';
  int? convertedNumber = int.tryParse(numberString);
  double? convertedDouble = double.tryParse('45.67');

  // 12. String interpolation
  String message = 'Hello $name, you are $age years old';
  String calculation = 'Sum: ${10 + 20}';

  // 13. Multi-line strings
  String multiLine = '''
  This is a
  multi-line
  string
  ''';

  String rawString = r'Raw string with \n no escaping';

  // 14. String methods
  String text = 'Dart Programming';
  print('String operations:');
  print('Uppercase: ${text.toUpperCase()}');
  print('Lowercase: ${text.toLowerCase()}');
  print('Contains "Dart": ${text.contains('Dart')}');
  print('Starts with "Dart": ${text.startsWith('Dart')}');
  print('Length: ${text.length}');
  print('Substring: ${text.substring(0, 4)}');
  print('Split: ${text.split(' ')}');

  // 15. Number operations
  print('\nNumber operations:');
  print('Absolute: ${(-42).abs()}');
  print('Ceiling: ${3.7.ceil()}');
  print('Floor: ${3.7.floor()}');
  print('Round: ${3.7.round()}');
  print('To string: ${42.toString()}');
  print('To string as fixed: ${3.14159.toStringAsFixed(2)}');

  print('Heart emoji: $heartString');
  print('Symbol: $symbolExample');
  print('Multi-line:\n$multiLine');
  print('Raw string: $rawString');
}

// ===================================================================
// 2. COLLECTIONS - LISTS (150+ Questions)
// ===================================================================

void comprehensiveListExamples() {
  print('\n=== COMPREHENSIVE LIST EXAMPLES ===');

  // 1. List Creation Methods
  List<int> literal = [1, 2, 3, 4, 5];
  List<int> emptyList = [];
  List<String> emptyTyped = <String>[];
  List<int> filled = List.filled(5, 0);
  List<int> generated = List.generate(5, (index) => index * 2);
  List<int> from = List.from([1, 2, 3]);
  List<int> of = List.of([1, 2, 3]);
  List<int> unmodifiable = List.unmodifiable([1, 2, 3]);

  // 2. List Properties
  print('List properties:');
  print('Length: ${literal.length}');
  print('Is empty: ${literal.isEmpty}');
  print('Is not empty: ${literal.isNotEmpty}');
  print('First: ${literal.first}');
  print('Last: ${literal.last}');
  print('Reversed: ${literal.reversed}');

  // 3. Adding Elements
  List<int> addingExample = [1, 2];
  addingExample.add(3);
  addingExample.addAll([4, 5]);
  addingExample.insert(0, 0);
  addingExample.insertAll(2, [1.5, 1.7].map((d) => d.toInt()));

  // 4. Removing Elements
  List<int> removingExample = [1, 2, 3, 4, 5, 3];
  removingExample.remove(3); // Removes first occurrence
  removingExample.removeAt(0); // Remove by index
  removingExample.removeLast(); // Remove last element
  removingExample.removeRange(1, 3); // Remove range
  removingExample.removeWhere((x) => x > 3); // Remove by condition
  removingExample.retainWhere((x) => x <= 3); // Keep only matching

  // 5. Searching and Testing
  List<int> searchList = [1, 2, 3, 4, 5];
  print('\nSearching operations:');
  print('Contains 3: ${searchList.contains(3)}');
  print('Index of 3: ${searchList.indexOf(3)}');
  print('Last index of 3: ${searchList.lastIndexOf(3)}');
  print('Index where > 3: ${searchList.indexWhere((x) => x > 3)}');
  print('Last index where > 3: ${searchList.lastIndexWhere((x) => x > 3)}');

  // 6. Functional Operations
  List<int> functionalList = [1, 2, 3, 4, 5];

  // Map - Transform each element
  List<int> doubled = functionalList.map((x) => x * 2).toList();
  List<String> stringified = functionalList.map((x) => 'Number: $x').toList();

  // Where - Filter elements
  List<int> evens = functionalList.where((x) => x % 2 == 0).toList();
  List<int> greaterThanTwo = functionalList.where((x) => x > 2).toList();

  // Reduce and Fold
  int sum = functionalList.reduce((a, b) => a + b);
  int product = functionalList.reduce((a, b) => a * b);
  String concatenated = functionalList.fold('', (prev, element) => '$prev$element');

  // Every and Any
  bool allPositive = functionalList.every((x) => x > 0);
  bool anyEven = functionalList.any((x) => x % 2 == 0);

  // First and Last Where
  int firstEven = functionalList.firstWhere((x) => x % 2 == 0, orElse: () => -1);
  int lastOdd = functionalList.lastWhere((x) => x % 2 == 1, orElse: () => -1);

  // Single Where
  try {
    int singleGreaterThanFour = functionalList.singleWhere((x) => x > 4);
    print('Single > 4: $singleGreaterThanFour');
  } catch (e) {
    print('Error finding single element: $e');
  }

  // 7. Advanced List Operations

  // Expand - Flatten nested iterables
  List<List<int>> nestedList = [
    [1, 2],
    [3, 4],
    [5]
  ];
  List<int> flattened = nestedList.expand((list) => list).toList();

  // Take and Skip
  List<int> takeExample = functionalList.take(3).toList();
  List<int> skipExample = functionalList.skip(2).toList();
  List<int> takeWhileExample = functionalList.takeWhile((x) => x < 4).toList();
  List<int> skipWhileExample = functionalList.skipWhile((x) => x < 3).toList();

  // Cast and ReType
  List<num> numbers = [1, 2.5, 3, 4.7];
  List<double> doubles = numbers.whereType<double>().toList();

  // 8. List Sorting
  List<int> sortingList = [5, 2, 8, 1, 9, 3];
  List<int> ascending = [...sortingList]..sort();
  List<int> descending = [...sortingList]..sort((a, b) => b.compareTo(a));

  // Custom sorting with objects
  List<Map<String, dynamic>> people = [
    {'name': 'Alice', 'age': 30},
    {'name': 'Bob', 'age': 25},
    {'name': 'Charlie', 'age': 35},
  ];
  people.sort((a, b) => a['age'].compareTo(b['age'])); // Sort by age

  // 9. List Comparison and Equality
  List<int> list1 = [1, 2, 3];
  List<int> list2 = [1, 2, 3];
  List<int> list3 = [3, 2, 1];

  // Deep equality check
  bool areEqual = list1.length == list2.length && list1.asMap().entries.every((entry) => entry.value == list2[entry.key]);

  // 10. Multi-dimensional Lists
  List<List<int>> matrix = [
    [1, 2, 3],
    [4, 5, 6],
    [7, 8, 9]
  ];

  // Access and modify matrix elements
  int element = matrix[1][2]; // Gets 6
  matrix[0][0] = 10; // Sets first element to 10

  // Matrix operations
  List<int> firstRow = matrix[0];
  List<int> firstColumn = matrix.map((row) => row[0]).toList();

  // 11. List Performance Considerations
  List<int> performanceList = [];

  // Efficient way to build large lists
  performanceList = List.generate(1000, (i) => i);

  // Using growable vs fixed-length lists
  List<int> fixedLength = List.filled(100, 0, growable: false);
  List<int> growable = List.filled(100, 0, growable: true);

  print('Functional operations results:');
  print('Doubled: $doubled');
  print('Evens: $evens');
  print('Sum: $sum, Product: $product');
  print('All positive: $allPositive, Any even: $anyEven');
  print('Flattened: $flattened');
  print('Take 3: $takeExample, Skip 2: $skipExample');
  print('Sorted ascending: $ascending');
  print('People sorted by age: $people');
  print('Matrix element [1][2]: $element');
  print('First column: $firstColumn');
}

// ===================================================================
// 3. COLLECTIONS - MAPS (120+ Questions)
// ===================================================================

void comprehensiveMapExamples() {
  print('\n=== COMPREHENSIVE MAP EXAMPLES ===');

  // 1. Map Creation Methods
  Map<String, int> literal = {'a': 1, 'b': 2, 'c': 3};
  Map<String, int> empty = {};
  Map<String, int> emptyTyped = <String, int>{};
  Map<String, int> from = Map.from({'x': 10, 'y': 20});
  Map<String, int> of = Map.of({'x': 10, 'y': 20});
  Map<String, int> unmodifiable = Map.unmodifiable({'readonly': 1});

  // Creating maps from iterables
  List<String> keys = ['name', 'age', 'city'];
  List<dynamic> values = ['John', 25, 'NYC'];
  Map<String, dynamic> fromIterables = Map.fromIterables(keys, values);

  // 2. Map Properties and Basic Operations
  print('Map properties:');
  print('Length: ${literal.length}');
  print('Is empty: ${literal.isEmpty}');
  print('Is not empty: ${literal.isNotEmpty}');
  print('Keys: ${literal.keys}');
  print('Values: ${literal.values}');
  print('Entries: ${literal.entries}');

  // 3. Accessing and Modifying
  Map<String, int> modifyingMap = {'a': 1, 'b': 2};

  // Safe access
  int? valueA = modifyingMap['a'];
  int valueB = modifyingMap['b'] ?? 0;

  // Adding and updating
  modifyingMap['c'] = 3; // Add new
  modifyingMap['a'] = 10; // Update existing
  modifyingMap.addAll({'d': 4, 'e': 5});

  // Conditional operations
  modifyingMap.putIfAbsent('f', () => 6);
  modifyingMap.putIfAbsent('a', () => 100); // Won't override
  modifyingMap.update('b', (value) => value * 2);
  modifyingMap.update('z', (value) => value, ifAbsent: () => 0);

  // 4. Removing Elements
  Map<String, int> removingMap = {'a': 1, 'b': 2, 'c': 3, 'd': 4};
  removingMap.remove('b');
  removingMap.removeWhere((key, value) => value > 3);
  removingMap.clear(); // Remove all

  // 5. Checking Existence
  Map<String, int> existenceMap = {'name': 1, 'age': 25};
  bool hasKey = existenceMap.containsKey('name');
  bool hasValue = existenceMap.containsValue(25);

  // 6. Iteration Methods
  Map<String, int> iterationMap = {'a': 1, 'b': 2, 'c': 3};

  print('\nIteration examples:');

  // Iterate over entries
  iterationMap.forEach((key, value) {
    print('$key: $value');
  });

  // Iterate over keys
  for (String key in iterationMap.keys) {
    print('Key: $key, Value: ${iterationMap[key]}');
  }

  // Iterate over values
  for (int value in iterationMap.values) {
    print('Value: $value');
  }

  // Iterate over entries with for-in
  for (MapEntry<String, int> entry in iterationMap.entries) {
    print('Entry: ${entry.key} -> ${entry.value}');
  }

  // 7. Map Transformation
  Map<String, int> transformMap = {'apple': 5, 'banana': 3, 'cherry': 8};

  // Transform values
  Map<String, String> stringValues = transformMap.map((key, value) => MapEntry(key, '$value items'));

  // Transform keys
  Map<String, int> upperKeys = Map.fromEntries(transformMap.entries.map((e) => MapEntry(e.key.toUpperCase(), e.value)));

  // Filter map entries
  Map<String, int> filtered = Map.fromEntries(transformMap.entries.where((entry) => entry.value > 4));

  // 8. Merging Maps
  Map<String, int> map1 = {'a': 1, 'b': 2};
  Map<String, int> map2 = {'c': 3, 'd': 4};
  Map<String, int> map3 = {'b': 20, 'e': 5}; // Overlapping key

  // Simple merge (spread operator)
  Map<String, int> merged = {...map1, ...map2};

  // Merge with conflict resolution
  Map<String, int> mergedWithConflict = {...map1, ...map3};

  // Custom merge function
  Map<String, int> customMerged = Map.from(map1);
  map3.forEach((key, value) {
    customMerged[key] = (customMerged[key] ?? 0) + value;
  });

  // 9. Nested Maps
  Map<String, Map<String, dynamic>> nestedMap = {
    'user1': {'name': 'Alice', 'age': 30, 'active': true},
    'user2': {'name': 'Bob', 'age': 25, 'active': false},
  };

  // Accessing nested values
  String? userName = nestedMap['user1']?['name'];
  int? userAge = nestedMap['user1']?['age'];

  // Modifying nested values
  nestedMap['user1']?['age'] = 31;
  nestedMap['user3'] = {'name': 'Charlie', 'age': 28, 'active': true};

  // 10. Map as Cache/Lookup Table
  Map<String, String> cache = {};

  String expensiveOperation(String input) {
    return cache.putIfAbsent(input, () {
      // Simulate expensive operation
      print('Computing for: $input');
      return input.toUpperCase();
    });
  }

  // 11. Sorting Maps
  Map<String, int> unsortedMap = {'zebra': 1, 'apple': 3, 'banana': 2};

  // Sort by keys
  Map<String, int> sortedByKeys = Map.fromEntries(unsortedMap.entries.toList()..sort((a, b) => a.key.compareTo(b.key)));

  // Sort by values
  Map<String, int> sortedByValues = Map.fromEntries(unsortedMap.entries.toList()..sort((a, b) => a.value.compareTo(b.value)));

  // 12. Map Performance and Types

  // HashMap (default) - fastest for most operations
  Map<String, int> hashMap = <String, int>{};

  // LinkedHashMap - maintains insertion order
  Map<String, int> linkedMap = <String, int>{};

  // SplayTreeMap - sorted map
  Map<String, int> sortedMap = <String, int>{};

  // 13. Converting Maps
  Map<String, int> convertingMap = {'a': 1, 'b': 2, 'c': 3};

  // To lists
  List<String> keysList = convertingMap.keys.toList();
  List<int> valuesList = convertingMap.values.toList();
  List<MapEntry<String, int>> entriesList = convertingMap.entries.toList();

  // To other collections
  Set<String> keysSet = convertingMap.keys.toSet();

  // JSON serialization
  String jsonString = jsonEncode(convertingMap);
  Map<String, dynamic> fromJson = jsonDecode(jsonString);

  print('Transform examples:');
  print('String values: $stringValues');
  print('Upper keys: $upperKeys');
  print('Filtered: $filtered');
  print('Merged: $merged');
  print('User name: $userName');
  print('Sorted by keys: $sortedByKeys');
  print('JSON: $jsonString');

  // Test cache
  expensiveOperation('hello');
  expensiveOperation('hello'); // Should use cache
}

// ===================================================================
// 4. COLLECTIONS - SETS (80+ Questions)
// ===================================================================

void comprehensiveSetExamples() {
  print('\n=== COMPREHENSIVE SET EXAMPLES ===');

  // 1. Set Creation Methods
  Set<int> literal = {1, 2, 3, 4, 5};
  Set<int> empty = <int>{};
  Set<int> fromIterable = Set.from([1, 2, 3, 2, 1]); // Duplicates removed
  Set<int> of = Set.of([1, 2, 3]);
  Set<int> unmodifiable = Set.unmodifiable({1, 2, 3});

  // Different set implementations
  Set<int> hashSet = <int>{}; // Default HashSet
  Set<int> linkedSet = LinkedHashSet<int>(); // Maintains insertion order
  Set<int> sortedSet = SplayTreeSet<int>(); // Sorted set

  // 2. Set Properties
  print('Set properties:');
  print('Length: ${literal.length}');
  print('Is empty: ${literal.isEmpty}');
  print('Is not empty: ${literal.isNotEmpty}');
  print('First: ${literal.first}');
  print('Last: ${literal.last}');

  // 3. Adding and Removing Elements
  Set<int> modifyingSet = {1, 2, 3};

  // Adding
  modifyingSet.add(4);
  modifyingSet.add(2); // Duplicate, won't be added
  modifyingSet.addAll([5, 6, 7]);

  // Removing
  modifyingSet.remove(3);
  modifyingSet.removeWhere((element) => element > 5);

  // 4. Set Operations (Mathematical)
  Set<int> setA = {1, 2, 3, 4, 5};
  Set<int> setB = {4, 5, 6, 7, 8};
  Set<int> setC = {2, 3};

  // Union - all elements from both sets
  Set<int> union = setA.union(setB);

  // Intersection - common elements
  Set<int> intersection = setA.intersection(setB);

  // Difference - elements in setA but not in setB
  Set<int> difference = setA.difference(setB);

  // Symmetric difference
  Set<int> symmetricDiff = setA.union(setB).difference(setA.intersection(setB));

  print('Set operations:');
  print('Set A: $setA');
  print('Set B: $setB');
  print('Union: $union');
  print('Intersection: $intersection');
  print('Difference (A - B): $difference');
  print('Symmetric difference: $symmetricDiff');

  // 5. Set Relationships

  // Subset checking
  bool isSubset = setC.every((element) => setA.contains(element));
  bool isSuperset = setA.containsAll(setC);
  bool isDisjoint = setA.intersection(setB).isEmpty;

  print('\nSet relationships:');
  print('Is $setC subset of $setA: $isSubset');
  print('Is $setA superset of $setC: $isSuperset');
  print('Are $setA and $setB disjoint: $isDisjoint');

  // 6. Functional Operations on Sets
  Set<int> functionalSet = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10};

  // Filtering
  Set<int> evens = functionalSet.where((n) => n % 2 == 0).toSet();
  Set<int> greaterThanFive = functionalSet.where((n) => n > 5).toSet();

  // Mapping
  Set<int> doubled = functionalSet.map((n) => n * 2).toSet();
  Set<String> stringified = functionalSet.map((n) => 'Number: $n').toSet();

  // Testing
  bool allPositive = functionalSet.every((n) => n > 0);
  bool anyEven = functionalSet.any((n) => n % 2 == 0);

  // Finding elements
  int? firstEven = functionalSet.firstWhere((n) => n % 2 == 0, orElse: () => -1);

  // 7. Converting Between Collections
  Set<int> originalSet = {3, 1, 4, 1, 5, 9};

  // Set to List
  List<int> listFromSet = originalSet.toList();
  List<int> sortedList = originalSet.toList()..sort();

  // List to Set (removes duplicates)
  List<int> listWithDuplicates = [1, 2, 2, 3, 3, 3, 4, 4];
  Set<int> setFromList = listWithDuplicates.toSet();

  // Set to Map
  Map<int, String> mapFromSet = {for (var element in originalSet) element: 'Value: $element'};

  // 8. Custom Objects in Sets

  // Using sets for deduplication
  List<String> duplicateNames = ['Alice', 'Bob', 'Alice', 'Charlie', 'Bob'];
  Set<String> uniqueNames = duplicateNames.toSet();

  // 9. Set Performance Considerations

  // HashSet: O(1) average for add, remove, contains
  Set<int> hashSetPerf = <int>{};

  // LinkedHashSet: O(1) for operations + maintains order
  Set<int> linkedSetPerf = LinkedHashSet<int>();

  // SplayTreeSet: O(log n) for operations, always sorted
  Set<int> sortedSetPerf = SplayTreeSet<int>();

  // Performance test simulation
  for (int i = 0; i < 1000; i++) {
    hashSetPerf.add(i);
    linkedSetPerf.add(i);
    sortedSetPerf.add(i);
  }

  // 10. Advanced Set Operations

  // Cartesian product
  Set<int> set1 = {1, 2};
  Set<String> set2 = {'a', 'b'};
  Set<List<dynamic>> cartesianProduct = {};
  for (int i in set1) {
    for (String s in set2) {
      cartesianProduct.add([i, s]);
    }
  }

  // Power set (all subsets)

  Set<int> smallSet = {1, 2, 3};

  print('\nAdvanced operations:');
  print('Evens: $evens');
  print('Doubled: $doubled');
  print('Unique names: $uniqueNames');
  print('List from set: $listFromSet');
  print('Set from list: $setFromList');
  print('Cartesian product: $cartesianProduct');
}
