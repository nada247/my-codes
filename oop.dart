void main(){
  /// object:---
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
  ///_________________________________
  
  /// Example for constructor:-
  Users user1=Users("nahed", 25, 100100);
  user1.printUser();


}

class Users{
  String? name;
  int? age;
  int? id;

  ///Constructor :--
  // Users(String myname , int myage , int myid){     // مثل ال function
  //   name=myname;
  //   age=myage;
  //   id=myid;
  // }

  /// or
  Users(this.name , this.age , this.id);   // مختصر




  void printUser(){
    print("Hi , my name is $name , my age is $age and my id is $id .");
  }
}