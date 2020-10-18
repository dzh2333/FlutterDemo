class _ExtendA{

  void methodA(){
    print("this is ExtendA methodA");
  }

  void methodB(){
    print("this is ExtendA methodA");
  }
}

class ExtendB extends _ExtendA{

  @override
  void methodA() {
    print("this is ExtendB methodA");
  }

}