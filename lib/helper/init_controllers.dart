import 'package:getx_demo/controllers/list_controller.dart';
import 'package:getx_demo/controllers/tap_controller.dart';
import 'package:get/get.dart';

Future<void> init() async {
  Get.lazyPut(() => TapController());
  Get.lazyPut(() => ListController());
}