import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:student_marksheet_generator_exam/utils/back_button.dart';

class pdfmarcksheet extends StatefulWidget {
  const pdfmarcksheet({Key? key}) : super(key: key);

  @override
  State<pdfmarcksheet> createState() => _pdfmarcksheetState();
}

class _pdfmarcksheetState extends State<pdfmarcksheet> {
  @override
  Widget build(BuildContext context) {
    Size s = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        leading: const backbutton(),
        title: Text(
          "Marksheet",
          style: GoogleFonts.schoolbell(
            textStyle: TextStyle(
              fontSize: s.height * 0.03,
              color: Colors.black,
            ),
          ),
        ),
        centerTitle: true,
      ),
    );
  }
}
