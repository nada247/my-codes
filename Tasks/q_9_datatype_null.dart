 // 9. Write an extension on String adding isEmail().

extension x on String{
  bool isEmail(){
    return this.contains('@') && this.contains('.');
  }
  }
 
 void main (){
 String? emailname1 = "nada@gmail''com";
 String? emailname2 = "nada@student.edu.du.eg" ;
 print(emailname1.isEmail());
 print(emailname2.isEmail());
 }