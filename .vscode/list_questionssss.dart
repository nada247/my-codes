import 'dart:math';
void main (){

  List <int> numbers=[10, -5, 3, 8, 3, 0, -2, 10, 7];
  List<String> fruits = ['Apple', 'Banana', 'Orange', 'Apple', 'Mango'];

  // 1:Create a new list containing only positive numbers.
  List <int> positiveNumber = [];
  positiveNumber=numbers.where((element)=> element>0).toList();
  print(positiveNumber);

  // 2:Calculate the sum of all numbers without using reduce().
  int sum=0;
  for(int i=0 ; i<numbers.length ; i++){
      sum+=numbers[i]; 
  }
  print("Sum of numbers : $sum");

  // 3:Use reduce() to calculate the product of all numbers.
  int product = numbers.reduce((x,y)=> x*y);
  print("Product of numbers : $product");

  // 4:Find the most frequent number and its count.
  var frequent = <int, int>{};

  for (var num in numbers) {
    frequent[num] = (frequent[num] ?? 0) + 1;
  }
  var mostFrequent = frequent.entries.reduce((a, b) => a.value > b.value ? a : b);

  print('Most frequent: ${mostFrequent.key}');
  print('Count: ${mostFrequent.value}');

  // 5:Remove all duplicates while preserving first occurrence.
  var result = numbers.toSet();
  print(result.toList());

  // 6:Reverse the list without using reversed.
  List<int> reverseNumbers = [];
  for( int i =numbers.length-1 ; i>=0 ; i--){
      reverseNumbers.add(numbers[i]);
  }
  print("Reverse the list : $reverseNumbers");

  // 7:Split the list into two lists: even numbers and odd numbers.
  List<int> evenNumber = [];
  List<int> oddNumber = [];
  for(int i =0 ; i<numbers.length ; i++){
    if (numbers[i] % 2 == 0 ){
      evenNumber.add(numbers[i]);
    }
    else{
      oddNumber.add(numbers[i]);
    }
    print("Even Numbers : $evenNumber");
    print("Odd Numbers : $oddNumber");
  }

  // 8:Create a Map where key is the number and value is its frequency.
   Map<int, int> frequencyMap = {};

  for (int num in numbers) {
    frequencyMap[num] = (frequencyMap[num] ?? 0) + 1;
  }
  print("Number frequencies: $frequencyMap");

  // 9:Calculate the average of the numbers.
  double sum = 0;
  for( int i =0 ; i<numbers.length ; i++){
    sum+=numbers[i];
  }
  double resultOfAvarage = sum/numbers.length ;
  print("Avarage : $resultOfAvarage");

  // 10:Create a sublist from index 2 to index 6.
  List<int> subListOfNumbers = numbers.sublist(2,7);
  print(subListOfNumbers);

  // 11:Merge two lists into one dynamic list.
  List margeLists = [...numbers , ...fruits];
  print(margeLists);

  // 12:Convert fruits list into a Map where key=fruit name, value=length.
  Map < String , int > fruitLengths= {
    for (var fruit in fruits) fruit: fruit.length};

  print("Fruit lengths: $fruitLengths");

  // 13:Remove all items with length < 6 from fruits list.
  List <String> item = fruits.where((fruit)=> fruit.length <6 ).toList();
  print("All items with length < 6 : $item");

  // 14:Insert 'Pineapple' after 'Banana'.
  fruits.insert(2, "Pineapple");
  print(fruits);

  // 15: Create a new list from fruits with all uppercase.
  List<String> upperFruits = fruits.map((fruit) => fruit.toUpperCase()).toList();
  print(upperFruits);

  // 16:Prefix all fruits with 'My_'.
  for(int i =0 ; i< fruits.length ; i++){
    fruits[i] = "My_" + fruits[i];
  }
  print(fruits);

  //Or
  fruits.forEach((e){
    print("My_ $e");
  });
  print(fruits);

  // 17:Use fold() to create a single String of all items separated by commas
  
   String resultOne = numbers.skip(1).fold('${numbers.first}', (a, b) => '$a , $b');  // a=10,5 (1) 

  print(resultOne);

  // 18:Convert List of numbers into a single String '10 - -5 - 3...'
   String resultTwo = numbers.skip(1).fold('${numbers.first}', (a, b) => '$a - $b');  // a=10--5 (1) 

  print(resultTwo);

  // 19:Create a List containing the index of all items > 5.
  List <int> indexItem = [];
  for (int i = 0 ; i<numbers.length ; i++){
    if (numbers[i] > 5){
      indexItem.add(i);
    }
  }
  print(indexItem);

  // 20:Return the first element > 5 or -1 if not found.
  int res = numbers.firstWhere((e)=> e >5 ,orElse:()=> -1 );
  print(res);

  // 21:Compare two methods to get max value: loop vs reduce.
  // loop
  int max = numbers[0];
  for ( int i =0 , i<numbers.length ; i++){
    if (numbers[i] > max);
    max = numbers[i];
  }
  print(max);
  
  // reduce
  int maxx = numbers.reduce((a , b)=> a>b ? a : b);
  print(maxx);

  // 22:Use List.generate() to create a List of 50 random numbers.
  var random = Random();
  List<int> randomNumbers = List.generate(50, (index) => random.nextInt(100));
  print(randomNumbers);

  // 23:Calculate the running sum of the list.
  int runningSum = numbers.reduce((previousValue ,element)=> element+previousValue);
  print(runningSum);
  
  //24: Square all positive numbers but keep negatives unchanged.
  for (int i = 0 ; i <numbers.length ; i++){
    if (numbers[i] >0 ){
      numbers[i] = numbers[i]*numbers[i];
    }
  }
  print(numbers);

  // 25:Merge two lists and sort ascending.
  List one =[1,9,5,3,6];
  List two =[8,2,4,7];
  List marge = [...one ,...two];
  marge.sort();
  print(marge);


  }