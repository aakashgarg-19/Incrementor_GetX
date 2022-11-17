import 'package:flutter/material.dart';
import 'package:getx_demo/controllers/tap_controller.dart';
import 'package:get/get.dart';
import 'package:getx_demo/second_page.dart';

import 'controllers/list_controller.dart';
import 'first_page.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    TapController controller = Get.find();
    ListController listController = Get.find();

    return  Scaffold(
      appBar: AppBar(
        title: const Text('GetX Demo'),
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
                    "X is ${controller.x.toString()}",
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
                    "Y is ${controller.y.value.toString()}",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                ),
              )),
            GestureDetector(
              onTap: () {
                Get.to(()=>SecondPage());
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
                    'Go to Increment Page',
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
                Get.to(() => FirstPage());
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
                    'Go to Decrement Page',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                ),
              ), 
            ),         
            Obx(() => GestureDetector(
                onTap: () {
                  controller.totalSum();
                  listController.addToList(controller.z.value);
                  print(listController.list);
                },
                child: Container(
                  margin: const EdgeInsets.all(20),
                  width: double.maxFinite,
                  height: 80,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: const Color(0xFF89dad0),
                  ),
                  child: Center(
                    child: Text(
                      'Total value is ${controller.z.value}',
                      style: const TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ), 
              ),),
            ],
        ),
      ),
    );
  }
}