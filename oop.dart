import 'dart:async';

// import 'package:path/path.dart';

import 'get_and_set.dart';

void main(){
  /// object:---
  /// => class name   object name  =  classname ();
  // Users user =Users();
  // Users user2 =Users();

  // user.name="basel";
  // user.age=22;
  // user.id=1234;
  // user.printUser();

  // user2.name="nada";
  // user2.age=19;
  // user2.id=555;
  // user2.printUser();
  ///_________________________________________________________________
  
  /// Example for constructor:-
  // Users user1=Users("nahed", 25, 100100);
  // user1.printUser();

  // Users userrr=Users.constructor1();
  // userrr.printUser();

//  Users userrr11=Users.constructor4();   // كده صح بردو
 ///_____________________________________________________________
 
 /// Example for Encapsulation:--
//  Play play = Play("XO", 111);    //Object = play
//  //  print(play._year);        // error , because this is private
//  //Setter 
//  play.setYear(2020);        // edit
//  //Or
//  play.year = 2020;      
//  //___________________________
//  //Getter
//  print(play.getYear());     // read     
//  // Or
//  print(play.year);


//  print(play.name);   // عادي لانها مش private

///_______________________________
///inheritance of constructor :
//  DataTwo dataTwo = DataTwo("nada");


// UserrssTwo user =UserrssTwo.manger("mohand");
// user.playTwo();



 }


// class Users{
//   String? name;
//   int? age;
//   int? id;

    /// Constructor :--
  // Users(String myname , int myage , int myid){     // مثل ال function
  //   name=myname;
  //   age=myage;
  //   id=myid;
  // }

  /// or
  
  // Users(this.name , this.age , this.id);   // مختصره فقط
  // /// مثل حصائص ال function
  // Users.constructor1([this.name , this.age , this.id]);  // الادخال اختياري
  // Users.constructor2({required this.name , this.age , this.id});   // لا يلزم الترتيب عند لاستدعاء ولكن نتعامل معها ك map (name:)
  // /// required تجعل الاسم يكتب اجباري عند الاستدعاء فوق
  // Users.constructor3([this.name , this.age , this.id]);
  // Users.constructor4(){
  //   print("noooo");
  ///________________________
// void printUser(){
//     print("Hi , my name is $name , my age is $age and my id is $id .");
//   }
// }

  ///______________________________________________________________________________
 /// Encapsulation :---
 /// علشان اقدر استخدم ال get and set لازم اكتبهم في فايل تاني واستدعي الكلاس ال موجودين فيها
 
 ///____________________________________________________________________________
 /// Inheritance (الوراثه)
//  class Parent{
//   String? username ;
//   int? id ;
//   String? courses ;

// //  void information(String username , int id , String courses ){
// //  print("name : $username , id : $id , courses : $courses");
/// or   Constructor
  // Parent({this.username ,this.id , this.courses}){
  //   print("name : $username , id : $id , courses : $courses");
  // }
//  }
 


//  class Chiled extends Parent{             ////Single Inheritance
  // لو هضيف حاجه هتبقي خاصه بيها وهتورث ل ChiledTwo
//  }


// class ChiledTwo extends Chiled{}        // Multilevel Inheritance


  /// Hierarchical Inheritance
// class Son extends Parent {}
// class SonTwo extends Parent{}
// class SonThree extends Parent{}

///_________________________________________________________________
/// Inheritance of constructor
// class Data{
//   String? name;
//   Data(this.name){
//     print("name : $name");
//   } 
// }

// class DataTwo extends Data {
//   // DataTwo(super.name){
//   //=
//   DataTwo(String name) : super( name){
//     print("Hi $name ");
//   }
// }

///________________________________________________
// class Userrss{
//   String? name ;
//   Userrss.manger(this.name){
//     print("User : $name ");

//   }
//     play(){
//     print("hiiii");
//   }
// }

// class UserrssTwo extends Userrss{
//   UserrssTwo.manger(super.name) : super.manger(){
//     print("User2 : $name");
//   }
//   playTwo(){
//     super.play();
//     print("bayyy");
//       }

// }