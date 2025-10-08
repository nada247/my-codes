//10. Create a generic class accepting any data type.

class Data<T>{
  T data;
  Data(this.data){
    print("value : $data");
  }
}

 // or
T data <T> (T value){
  return value;
}

void main(){
    print("value is :${data(12)} ");
      print("value is :${data("Hello !")} ");
}