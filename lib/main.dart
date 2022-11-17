import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_demo/helper/init_dependency.dart';
import 'my_home_page.dart';
// import 'helper/init_controllers.dart' as di;

Future<void> main() async{
  // WidgetsFlutterBinding.ensureInitialized();
  // await di.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialBinding: InitDep(),
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}