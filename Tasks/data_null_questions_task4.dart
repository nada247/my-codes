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
        int a ;   // non nuiiable
        int? b;   // null
        a=b ?? 10 ;   // لو a!=b   اعطلهم قيمه 10
        print(a);


 // 4. Create a typedef for a function taking two numbers returning double.
        


 // 5. Try a wrong cast and handle with 'is' and 'as'.
 // 6. Create a record in Dart 3 returning multiple values from a function.
 // 7. Use pattern matching to extract values from a map or list.
 // 8. Create an enum with days and return a string based on the day.
 // 9. Write an extension on String adding isEmail().
 // 10. Create a generic class accepting any data type.
}