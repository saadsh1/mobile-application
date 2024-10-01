 void main() {
  List<String> myList = [];
  myList.add('Apple');
  myList.add('Banana');
  myList.add('Cherry');

  print('My List: $myList');

  for (var item in myList) {
    print('Item: $item');
  }


void main() {
  List<String> fruits = ['Apple', 'Banana', 'Cherry'];

 
  print(fruits.elementAt(0)); 
  print(fruits.elementAt(1)); 


void main() {
  List<String> fruits = ['Apple', 'Banana'];
  fruits.add('Cherry');
  print(fruits); 
} 

void main() {
  List<String> fruits = ['Apple', 'Banana', 'Cherry', 'Orange'];

  fruits.removeAt(1);
  print(fruits); 

void main() {
  List<String> fruits = ['Apple', 'Banana', 'Cherry'];

  print(fruits.length);
} 


Map<String, String> fruits = {
  'apple': 'red',
  'banana': 'yellow',
  'cherry': 'red',
}; 

void main() {
  Map<String, int> ageMap = {
    'Alice': 25,
    'Bob': 30,
    'Charlie': 22,
  };

  print(ageMap); 
} 

void main() {
  Map<String, int> ageMap = {
    'Alice': 25,
    'Bob': 30,
    'Charlie': 22,
  };

  int? aliceAge = ageMap['Alice'];
  print(aliceAge); 
} 

void main() {
 
  Map<String, int> myMap = {'apples': 5, 'oranges': 10};


  myMap['bananas'] = 3;

  print(myMap); 
} 

void main() {
  
  Map<String, int> myMap = {'apples': 5, 'oranges': 10, 'bananas': 3};


  print(myMap.length); 
} 

void main() {
  int a = 15;
  int b = 7;
  
  int sum = a + b;

  print('The sum of a and b is: $sum'); // Output: The sum of a and b is: 22
} 

void main() {
  double x = 10.5;
  double y = 3.2;

  double product = x * y;

  print('The product of x and y is: $product'); 
} 

void main() {
  int num = -8;

  int absoluteValue = num.abs();

  print('The absolute value of num is: $absoluteValue'); 
}

void main() {
  double decimalNum = 7.3;

  int ceilingValue = decimalNum.ceil();
  int floorValue = decimalNum.floor();

  print('The ceiling value of decimalNum is: $ceilingValue');
  print('The floor value of decimalNum is: $floorValue');
} 

void main() {
  int a = 15;
  int b = 7;

  if (a > b) {
    print('a is greater than b'); 
  } else {
    print('a is not greater than b');
  }
}  














