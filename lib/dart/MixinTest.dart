abstract class Base {
  a(){
    print("Base a()!");
  }

  b(){
    print("Base b()!");
  }

  c(){
    print("Base c()!");
  }
}

class A extends Base{
  a(){
    print("A a()!");
  }

  b(){
    super.b();
    print("A b()!");
  }

}

class A2 extends Base{
  a(){
    print("A2 a()!");
    super.a();
  }

}

class B extends Base{
  a(){
    print("B a()!");
    super.a();
  }

  b(){
    super.b();
    print("B b()!");
  }

  c(){
    print("B c()!");
    super.c();
  }
}

//mixin because it extends a class other than Object.
//https://medium.com/@amandeepkochhar/flutter-dart-the-class-cant-be-used-as-a-mixin-because-it-extends-a-class-other-than-object-a53eb5f214b0
class M extends B with A, A2{

}