import 'package:get/get.dart';
import '../controllers/tap_controller.dart';
import '../controllers/list_controller.dart';


class InitDep extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<TapController>(() => TapController());
    Get.lazyPut<ListController>(() => ListController());
  }
}