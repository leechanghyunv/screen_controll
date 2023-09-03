import 'package:blinking_text/blinking_text.dart';
import 'package:flutter/material.dart';
import 'main_screen.dart';

class Loading_Screen extends StatefulWidget {
  const Loading_Screen({super.key});

  @override
  State<Loading_Screen> createState() => _Loading_ScreenState();
}

class _Loading_ScreenState extends State<Loading_Screen> {

  @override
  void initState() {
    super.initState();
    print('object');
  }

  @override
  Widget build(BuildContext context) {
    if(box.read('isFrist') == null){
      return Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('안녕'),
              /// 2번째 빌드부터는 안녕이 절대 나오면 안되는데 나옴
            ],
          ),
        ),
      );
    } else {
      return Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              BlinkText('Loading_Screen',
                style: TextStyle(
                    color: Colors.red),
              ),
            ],
          ),
        ),
      );
    }
  }
}
