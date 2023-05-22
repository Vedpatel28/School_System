import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:student_marksheet_generator_exam/utils/routes_utils.dart';
import 'package:student_marksheet_generator_exam/view/screen/generate_pdf_marksheet.dart';
import 'package:student_marksheet_generator_exam/view/screen/home_page.dart';
import 'package:student_marksheet_generator_exam/view/screen/marcksheet_page.dart';
import 'package:student_marksheet_generator_exam/view/screen/splash_screen.dart';
import 'package:student_marksheet_generator_exam/view/screen/studet_detail_page.dart';

void main() {
  runApp(
    // DevicePreview(
    //   enabled: !kReleaseMode,
    //   builder: (context) =>
      const MyApp(),
    // ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
      ),
      initialRoute: allroutes.splashscreen,
      routes: {
        allroutes.homepage: (context) => const homepage(),
        allroutes.studentdetailspage: (context) => const studentdetailpage(),
        allroutes.studentmarksheetpage: (context) => const Marksheet_add(),
        allroutes.caretmarksheetpage: (context) => const pdfmarcksheet(),
        allroutes.splashscreen: (context) => const splash_page(),
      },
    );
  }
}
