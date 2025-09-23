void main(){}

class Play{

 String? name ;
 int? code ;
 int _year = 0 ;     // Private  مقدرش اوصلها غير من خلال ال get and set
 Play(this.name , this.code);

 //Getter 
 getYear(){
  return _year;
 }
 // Or
 int get year => _year;
//__________________________
 // Setter
 setYear(int value){
  _year =value;
 }
  // Or
  set year(int value){
    _year = value ;
  }
 
}