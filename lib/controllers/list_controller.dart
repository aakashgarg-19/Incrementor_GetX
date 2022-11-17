import 'package:get/get.dart';

class ListController extends GetxController {
  final RxList<int> list = <int>[].obs;
  final RxInt count = 0.obs;

  void addToList(int value) {
    list.add(value);
    count.value = list.length;
  }

  void removeFromList(int index) {
    list.removeAt(index);
    count.value = list.length;
  }
}