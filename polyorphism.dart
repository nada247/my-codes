void main (){
  // Manger manger =Manger();
  // manger.printClass();
 
 print(Students.val);
 Students.printname("nada");
}


// class Humans {

//   void printClass(){
//     print("Humans");
//  }
// }

// class Manger extends Humans{
//   @override
//   // لو عاوزه استخدم نفس الداله ولكن هعدل فيها لازم اكتب Override
//   void printClass(){
//     print("Manger is Human");
//   }
// }




/// Static Variable
class Students {
  static String val="welcome";
  static void printname(String name){
    print("$val $name");
  }

}