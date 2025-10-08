 import 'dart:js_interop';


//4:
typedef Operation = double Function (num a , num b);


void main(){
 // 1. Demonstrate the difference between late final and final.
    // Final : "لازم اعين قيمتها وقت التعريف ولا يمكن تغيير هذه القيمه"
        final String name = "nada";
        print(name);



    // Late Final : "ممكن اعين قيمتها بعد تعريفها , ايضاً غير قابله للتغيير "
        late final int level = 2 ;
        print(level);
        //or
        late final int age ;
        age =19;
        print(age);



 // 2. Write a function returning nullable string and handle it safely.
        String? null_or_nullableString (bool login){
            if (login){
                return "Wellcome"; }
            else{
                return "null";}
            }  
        String? my_name =null_or_nullableString(false);
        print(my_name);



 // 3. Use ?? and ??= and ! operators in practice.
    // ??
        int a ;   // non nuiiable
        int? b;   // null
        a=b ?? 10 ;   // لو a!=b   اعطلهم قيمه 10
        print(a);
    // ??=
        int? id ;
        id ??=111;
        print(id);
    // ! معناها ان القيمه ليست null
        String? program = "AI";
        String my_program = program !;
        print("My program is $my_program");



 // 4. Create a typedef for a function taking two numbers returning double.
        // typedef Operation = double Function (num a , num b);
        double add(num a , num b)=> a+b .toDouble();
        Operation operation =add ;
        print(operation(5,10));



 // 5. Try a wrong cast and handle with 'is' and 'as'.
     // is
        dynamic value = '111';

        if (value is int) {
          int number = value; 
          print(number);
        } else {
          print('value is not an int');
        }

    // as 
        dynamic val = 'nada';

        try {
          String name = val as String;
          print(name.toUpperCase());
            } catch (e) {
          print('Casting failed: $e');
        }




 // 6. Create a record in Dart 3 returning multiple values from a function.

        ({String name, int age}) getUserInfo() {
          return (name: "ali" , age:20);  // Record
        }

        var user = getUserInfo();
        print("Name: ${user.name} and Age: ${user.age}");



 // 7. Use pattern matching to extract values from a map or list.
        List data = [10, 20, 30];

        switch (data) {
        case [int a, int b, int c]:
            print("a = $a, b = $b, c = $c");
            break;
        default:
      print("No match .");}

}
