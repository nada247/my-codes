void main (){
  /// طريقه لعمل كلاس او داله تتعامل مع انواع مختلفه من الداتا 
  
  Data dataOne =Data<int>(100);
  print(dataOne);

  Data dataTwo =Data<String>("Hello");
  print(dataTwo);

  Data dataThree =Data<double>(50.5);
  print(dataThree);

  Data dataFour =Data<bool>(true);
  print(dataFour);


  ///____________________
  print("value is :${data(12)} ");

  ///_______________________
  print("The Value : ${dataType<int, String, bool>(10 ,"nada" , true )}");
}


class Data<T>{
  T data;
  Data(this.data){
    print("value : $data");
  }
}

/// or
T data <T> (T value){
  return value;
}


X dataType<X,Y,Z>( X value , Y key , Z xx ){
  return value;                  // ال value تبع ال x
}
