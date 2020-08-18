import 'dart:async';

main() {
  print('Main program starts');
  getdata();
  print('main program end');

}
void getdata() async{
  int getiing = await hi();
  print(getiing);
}

Future<int> hi(){
  Future<int> nello= Future.delayed(Duration(seconds: 3),(){
    return 3;
  });
  return nello;
}