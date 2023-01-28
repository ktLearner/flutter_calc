class Animal {
  String? name;
  int? nlegs;
  double? weight;
  // Animal();
  Animal({required this.name});
  void speak() {
    print("hello my name is $name ");
  }
}

/*
special type of class can be abstract class which does not executes any
thing but u can use other class which will implemrnt rhe fuctions which actually
print or perform any activity
*/
class Dog extends Animal {
  Dog({required String petname}) : super(name: petname);

  @override
  void speak() {
    print("bark" * 3);
  }

  int GetNoOfLegs() => nlegs!;
}

void nuts(int nut,int? kri) {
  print(1);
  print(kri);
  // print(kt);
}

//object
main() {
  {
    Animal animal1 = Animal(name: "alpha");
    animal1.speak();
    Animal animal2 = Animal(name: "alpha");
    animal2.speak();

    Dog dog = Dog(petname: "tomy");
    dog.speak();

    Animal dogAnimal = dog;
    nuts(1,2);
  }
}
