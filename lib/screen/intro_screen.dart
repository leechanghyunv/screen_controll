
import 'package:blinking_text/blinking_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:subwayproject_pagemove/screen/main_screen.dart';

class Intro_Screen extends StatefulWidget {
  const Intro_Screen({super.key});

  @override
  State<Intro_Screen> createState() => _Intro_ScreenState();
}

class _Intro_ScreenState extends State<Intro_Screen> {


@override
  void initState() {
    super.initState();
    box.write('A',false);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Intro_Screen'),
            TextButton(
                onPressed: (){
                  box.write('isFrist', false);
                  Navigator.push(
                    context, PageTransition(
                      child: Main_Screen(),
                      type: PageTransitionType.fade
                  ),
                  );
            }, child: BlinkText('Move to Main_Screen',
              style: TextStyle(color: Colors.green),
            )),
          ],
        ),
      ),
    );
  }
}
