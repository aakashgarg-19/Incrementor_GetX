import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_demo/controllers/tap_controller.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});
  
  @override
  Widget build(BuildContext context) {
    TapController controller = Get.find();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Decrement Page'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
             Get.back();
          },
        ),
      ),
      body: Container(
        width: double.maxFinite,
        height: double.maxFinite,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GetBuilder<TapController>(builder: (_){
              return Container(
                margin: const EdgeInsets.all(20),
                width: double.maxFinite,
                height: 80,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Color(0xFF89dad0),
                ),
                child: Center(
                  child: Text(
                    "X is ${Get.find<TapController>().x}",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                ),
              );
            }),
            Obx(() => Container(
                margin: const EdgeInsets.all(20),
                width: double.maxFinite,
                height: 80,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Color(0xFF89dad0),
                ),
                child: Center(
                  child: Text(
                    "Y is ${Get.find<TapController>().y.value}",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),),
            GestureDetector(
                onTap: () {
                  controller.decrement();
                },
                child: Container(
                  margin: const EdgeInsets.all(20),
                  width: double.maxFinite,
                  height: 80,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Color(0xFF89dad0),
                  ),
                  child: Center(
                    child: Text(
                      'Tap to decrerment X',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ), 
              ),
            GestureDetector(
                onTap: () {
                  controller.decrementY();
                },
                child: Container(
                  margin: const EdgeInsets.all(20),
                  width: double.maxFinite,
                  height: 80,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Color(0xFF89dad0),
                  ),
                  child: Center(
                    child: Text(
                      'Tap to decrerment Y',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ), 
              ),
          ],
        ),
      ),
    );
  }
}