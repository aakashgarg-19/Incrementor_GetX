import 'package:get/get.dart';
import 'package:getx_demo/controllers/list_controller.dart';

class TapController extends GetxController {
  int _x = 0;
  final RxInt _y = 0.obs;
  final RxInt _z = 0.obs;
  

  RxInt get y => _y;
  RxInt get z => _z;
  int get x => _x;

  void increment() {
    _x++;
    update(); 
  }
  void decrement() {
    _x--;
    update(); 
  }
  void incrementY() {
    _y.value++;
  }
  void decrementY() {
    _y.value--;
  }
  void totalSum() {
    _z.value = _x + _y.value;
  }
}