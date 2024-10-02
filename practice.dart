
/*void main(){
  Set<int> emptySet = {}
  print(emptySet);
}
void main(){
  Set<int> mySet = {10,20,,30}
  print(mySet);
}
void main() {
  Set<int> mySet = {10,20,30};
print(mySet.remove(20));
print(mySet);
}

void main() {
  Set<int> mySet = {10,15,30};
print(mySet.contains(15));
print(mySet);
}

void main() {
  Set<int> mySet = {10,20,30};
print(mySet.remove(20));
print(mySet);
}

void main(){
  Set<int> otherSet = {10,20,,30}
  print(otherSet);
}

void main(){
  Set<int> mySet = {10,20,30}
  Set<int> otherSet = {20,30,40}
  Set<int> unionSet = mySet.union(otherSet)
  print(unionSet)
}

void main(){
  Set<int> mySet = {10,20,30}
  Set<int> otherSet = {20,30,40}
  Set<int> unionSet = mySet.intersection(otherSet)
  print(unionSet)
}

void main(){
  Set<int> mySet = {10,20,30};
  Set<int> otherSet = {20,30,40};
  Set<int> unionSet = mySet.difference(otherSet);
  print(unionSet);
}*/

void main(){
  Set<int> mySet = {10,20,30};
  print(mySet);
  mySet.forEach((element)=>10,);
}

void main(){
  Set<String> employeeSet = {'saad','usama', 'najaf'};
  List<String> employee_tst = employeeSet.toList();
  var employeemap = employeeSet.map((value){return '$value';});
  print(employee_tst);
  print(employeeSet);
  print(employeemap);
}
