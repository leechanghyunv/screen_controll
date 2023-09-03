
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get_storage/get_storage.dart';
import 'package:subwayproject_pagemove/screen/intro_screen.dart';
import 'package:subwayproject_pagemove/screen/loading_screen.dart';

import 'main_screen.dart';

final box = GetStorage();

class Screen_Controller extends StatefulWidget {
  const Screen_Controller({super.key});

  @override
  State<Screen_Controller> createState() => _Screen_ControllerState();
}

class _Screen_ControllerState extends State<Screen_Controller> {

  Future<String> fetchData() async {
    await Future.delayed(Duration(milliseconds: 2150));
    return "Data loaded successfully";
  }
  late Future<String> _futureData;

  @override
  void initState() {
    super.initState();
    _futureData = fetchData();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: _futureData,
        builder: (BuildContext context, AsyncSnapshot<String> snapshot){
          if(snapshot.connectionState == ConnectionState.waiting){
            return Loading_Screen();
          } else {
            if(box.read('A') ?? true){
              print('A ${box.read('A')}');
              // 첫 번째 빌드에서 Intro_Screen()을 반환
              return Intro_Screen();
            } else {
              print('A ${box.read('A')}');
              box.write('isFrist', false);
              // 이후 빌드에서는 항상 Main_Screen()을 반환
              return Main_Screen();
            }
          }
        });


  }
}
