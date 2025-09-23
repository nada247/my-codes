void main(){
  DateTime dateTimeNow=DateTime.now();
  print(dateTimeNow);
  print(dateTimeNow.day);
  print(dateTimeNow.month);
  print(dateTimeNow.year);

  print(dateTimeNow.add(Duration(days : 2)));   // هنذود يومين ع التاريخ 
    print(dateTimeNow.subtract(Duration(days : 2)));   //هنطرح يومين من التاريخ




  // String date = "2023-07-24";
  // DateTime dateTimeTwo= DateTime.parse(date);
  // print(dateTimeTwo);
  // print(dateTimeTwo.day);
  // print(dateTimeTwo.year);




  //______________
  DateTime birthDate =DateTime.parse("2006-01-15");
  DateTime dateNow =DateTime.now();

  Duration diff = dateNow.difference(birthDate);

  print("Your Age is ${diff.inDays/360 }");


}