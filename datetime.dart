void main(){
  // DateTime dateTime=DateTime.now();
  // print(dateTime);
  // print(dateTime.day);
  // print(dateTime.month);
  // print(dateTime.year);

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