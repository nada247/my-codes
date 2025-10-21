class Stack<T> {
  List<T> items = [];

  // Push - إضافة عنصر
  void push(T item) {
    items.add(item);
  }

  // Pop - إزالة العنصر الأخير
  T? pop() {
    if (isEmpty()) {
      print("Stack is empty");
      return null;
    }
    else{
    return items.removeLast();
    }
  }

  // Peek - عرض العنصر الأعلى بدون حذفه
  T? peek() {
    if (isEmpty()) {
      print("Stack is empty");
      return null;
    }
    else{
    return items.last;
    }
  }
  // Check if stack is empty.
  bool isEmpty() => items.isEmpty;   // arrow

  // حجم الستاك
  int size() => items.length;       // arrow

  // طباعة محتوى الستاك
  void printStack() {
    print("Stack: $items");

  }}


void main() {
Stack<int> myStack = Stack<int>();

  myStack.push(10);
  myStack.push(20);
  myStack.push(30);
  myStack.printStack(); // Stack: [10, 20, 30]

  print("Top:${myStack.peek()}"); // Top: 30

  print("Popped: ${myStack.pop()}"); // Popped: 30
  myStack.printStack(); // Stack: [10, 20]
  
}