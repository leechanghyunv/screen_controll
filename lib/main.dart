import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import 'package:subwayproject_pagemove/screen/main_screen.dart';
import 'package:subwayproject_pagemove/screen/screen_controller.dart';

void main() async {
  runApp(const MyApp());
  await GetStorage.init();
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Screen_Controller(),
    );
  }
}
