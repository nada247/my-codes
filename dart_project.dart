import 'dart:io';
void main(){

// print('nada') ;

// var name = "nada" ;

// var age = "20" ;
// var num = 30 ;
// print(name) ;

// print("hi, how are you $name your age $age and your number $num") ;

// print("your name is " + name + "?" ) ; 

////____________________________________________________________________

////// var x = String or int or num or bool or double

// String name = "nada1" ;
// int age = 20 ;
// num x = 25 ;
// num xx = 2.5 ;
// bool y = true ;
// bool yy = false ;
// double z = 2.5 ;

// print(" $name $age $x $xx $y  $yy  $z") ;


////// الكود بيمشي سطر بسطر
// String name = "nada";
// name = "nancy";       // mutable

////// لازم النغيير يكون من نفس النوع يعني اغير اسم باسم وليس رقم
///// حتي لو var  بما انى حددتها مينفعش اغيرها خلاص
// print(name);


// const double piMath = 3.14 ;   // immutable ميتفعش اعدل عليه 
// print(piMath);
////_____________________________________________________________________

// String age = "20";
////int number =age            دا غلطططططط لان حددت انه int و age دي str
// int number = int.parse(age);
// print(age.runtimeType);

////conversion from string to int
// print(int.parse(age).runtimeType);
// print(number);

////from double to int
// double x =20.6;
// int y =x.toInt();
// print(y);

//// from int to double
// int a = 20;
// double b =a.toDouble();
// print(b);

////fron double or int to string
// double c=20.5;
// String d =c.toString();
// print(d.runtimeType);

//// multi line string:
// String name= """ nada 
// mohamed """;     // or " nada \n mohaemed "
// print(name);


////____________________________________________________________________

// double height =10;
// double width =20;
// // المساحه
// double area = height*width;
// print(area);

//// comment : لو اكتر من سطر 
/* mnfoipmdbiffkf
noijdfmpodvk
lmkdc */
//// بس كده

// myName();        // تبع الداله كنا بنجرب تعليق للتوثيقdocument comment

////________________________________________________________________________________________________
////Arithmetic Operatore _______________________

// int x = 10;
// int y = 3;

// double z = x / y ;

// print(x + y);        // Addition
// print(x - y);        // Subtraction
// print(x - - y);      // Unary Minus
// print(x * y);        // Multiplecation
// print(x / y);        // Divition   القسمه لازم تكون Double
// print(z);
// print(x ~/ y);       // Integer divition  صحيح القسمه
// print(x % y);        // Modulus   باقي القسمه ,الارقام العشريه

////_________________________________________________________________________________________-
//// Incerement & Decrement Operators_________________________

// int a =0;
// a =a + 1;
// a =a + 1;
// a++;    // = a+1
// ++a;    // = a+1
// // بيختلفو في الاتى 
// int b = 0;
// b = ++a;   // b = a + 1  , a = a +1  وبردو لو طبعنا ال a هتساوي قيمه ال b
// b = a++;   // b = a ثم a = a + 1 -> a=1 

// a--;    // = a-1

// print(b);
// print(a);

////______________________________________________________________________________________
////Assignment operator_____________________________
// double a = 0;
// a+=10;
// a-=5;
// a/=5;
// a*=10;
// print(a);

////_________________________________________________________________________
//// Relational Operators________________________________

// int a = 10;
// int b = 20;
// print(a == b);   // هل دا صح ؟؟ دا معنى السطر دا 
// print(a < b);   // true or false
// print(a <= b); 
// print(a >= b);
// print(a != b);  

// String x = "nada";
// String y = "nada";
// print(x==y);

////________________________________________________________________________
//// Logical Operators__________________
//// and = &&      or =||      not=!

// int a = 1;
// int b = 2;

// print(a>b && a<b);     // and
// print(a>b || a<b);     // or 
// print(!(a>b || a<b));  // not
////______________________________________________________________________________________________
//// User input:__________________

// print("Enter your name:");
// String? name = stdin.readLineSync();
// print("Hello miss $name");

// // double or integer
// print("Enter your first number:");
// int? fnum = int.parse(stdin.readLineSync().toString());    // == int? fnum = int.parse(stdin.readLineSync()!);
// print("Enter your second number:");
// int? snum = int.parse(stdin.readLineSync().toString());

// print("$fnum + $snum = ${fnum+snum}");

////__________________________________________________________________________________________
/// String methods :___________________________________

// String name = "nada";
// String name2 = "nzaaaaaaa";

// print(name.length);          // طول الكلمه

// print(name.toUpperCase());   // تجعل الحروف capital

// print(name.toLowerCase());   // تجعل الحروف small

// print(name.trim());          // بتمسح المسافه من البدايه والنهايه ان وجدت

// print(name.compareTo(name2));   
// print(name2.compareTo(name));   
// print(name.compareTo(name));    

//// replace:_________________
// String n = "mohammed";
// String m = n.replaceAll("m", "v");
// print(m);

//// Substring:________________ يبدأ طباعه من الرقم الى هحدده
// String x = "mohammed";
// String y = x.substring(3);   // هيبدأ من بعد 3 الى هو 4
// print(y);
// String z = x.substring(2,6);  // البدايه والنهايه
// print(z);



}

//// function :

/// من اجل طباعه اسمي
 void myName(){
    print("nada m abulrahman");
 }