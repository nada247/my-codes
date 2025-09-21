void main(){}

class Play{

 String? name ;
 int? code ;
 int? _year;     // Private  مقدرش اوصلها غير من خلال ال get and set
 Play(this.name , this.code);

 //Getter 
 getYear(){
  return _year;
 }

 // Setter
 setYear(int value){
  _year =value;
 }
}