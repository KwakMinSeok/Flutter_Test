//bug
void main(){
Student stud1= Student(age: 18,name:"kwak");
stud1.printdata();
}
class Student{
String name;
int age;

Student({this.name,this.age});

printdata(){
  print("$name, $age");
}

}