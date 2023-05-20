import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:student_marksheet_generator_exam/utils/routes_utils.dart';

class splash_page extends StatefulWidget {
  const splash_page({Key? key}) : super(key: key);

  @override
  State<splash_page> createState() => _splash_page();
}

class _splash_page extends State<splash_page> {
  double scal = 1;
  double trax = 1;
  double tray = 1;

  FlutterLogoStyle aniestyle = FlutterLogoStyle.markOnly;

  void changeScreen() {
    Timer.periodic(
      const Duration(seconds: 8),
      (timer) {
        setState(() {
          aniestyle = FlutterLogoStyle.horizontal;
        });
        Navigator.of(context).pushNamed(allroutes.homepage);
        timer.cancel();
      },
    );
  }

  @override
  void initState() {
    super.initState();
    changeScreen();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Stack(
          children: [
            // const Spacer(flex: 1),
            Center(
              child: SpinKitWaveSpinner(
                size: 350,
                color: Colors.indigo.withOpacity(0.5),
                waveColor: Colors.indigoAccent.withOpacity(0.2),
                trackColor: Colors.blue.withOpacity(0.3),
              ),
            ),
            Row(
              children: [
                const SizedBox(width: 55),
                Column(
                  children: [
                    const SizedBox(height: 272),
                    Container(
                      height: 300,
                      width: 300,
                      alignment: Alignment.center,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          image: NetworkImage("https://icon-library.com/images/school-app-icon/school-app-icon-3.jpg"),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    const SizedBox(height: 70),
                    SpinKitFadingCube(
                      size: 80,
                      color: Colors.indigo.withOpacity(0.3),
                    ),
                  ],
                ),
              ],
            ),
            // const Spacer(),
          ],
        ),
      ),
    );
  }
}
