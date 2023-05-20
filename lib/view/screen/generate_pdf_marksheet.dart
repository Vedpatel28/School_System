import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:printing/printing.dart';
import 'package:student_marksheet_generator_exam/utils/back_button.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:student_marksheet_generator_exam/view/modals/global_varibal.dart';
import 'package:student_marksheet_generator_exam/view/modals/modals.dart';

class pdfmarcksheet extends StatefulWidget {
  const pdfmarcksheet({Key? key}) : super(key: key);

  @override
  State<pdfmarcksheet> createState() => _pdfmarcksheetState();
}

class _pdfmarcksheetState extends State<pdfmarcksheet> {
  pw.Document pdf = pw.Document();
  marcks markcall = marcks(
    Mathsmo: allGlobalvar.Maths,
    Englishmo: allGlobalvar.English,
    Biologymo: allGlobalvar.Biology,
    Physicsmo: allGlobalvar.Physics,
    Chemistrymo: allGlobalvar.Chemistry,
  );

  generatePdf() async {
    // Size s = MediaQuery.of(context).size ;
    pdf.addPage(
      pw.Page(
        margin: pw.EdgeInsets.zero,
        build: (pw.Context context) => pw.Container(
          height: 120,
          width: 100,
          alignment: pw.Alignment.center,
          decoration: const pw.BoxDecoration(
            color: PdfColors.white,
          ),
          child: pw.Row(
            children: [
              pw.Text(
                "Total Marks : ",
                style: pw.TextStyle(
                  fontSize: 14,
                  fontWeight: pw.FontWeight.bold,
                ),
              ),
              pw.Spacer(),
              pw.Text(
                '${markcall.sum()}',
                style: pw.TextStyle(
                  fontSize: 14,
                  fontWeight: pw.FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    generatePdf();
  }

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
      body: PdfPreview(
        build: (format) => pdf.save(),
      ),
      // bottomNavigationBar: CurvedNavigationBar(
      //   buttonBackgroundColor: Colors.transparent,
      //   backgroundColor: Colors.transparent,
      //   animationCurve: Curves.linear,
      //   color: Colors.black26,
      //   height: 60,
      //   index: 3,
      //   items: [
      //     GestureDetector(
      //         onTap: () {
      //           Navigator.of(context).pushNamed(allroutes.homepage);
      //         },
      //         child: const Icon(
      //           Icons.home_rounded,
      //           size: 30,
      //           color: Colors.black,
      //         )),
      //     GestureDetector(
      //         onTap: () {
      //           Navigator.of(context).pushNamed(allroutes.studentdetailspage);
      //         },
      //         child: const Icon(
      //           Icons.account_circle_outlined,
      //           size: 30,
      //           color: Colors.black,
      //         )),
      //     GestureDetector(
      //         onTap: () {
      //           Navigator.of(context).pushNamed(allroutes.studentmarksheetpage);
      //         },
      //         child: const Icon(
      //           Icons.addchart_rounded,
      //           size: 30,
      //           color: Colors.black,
      //         )),
      //     GestureDetector(
      //         onTap: () {
      //           Navigator.of(context).pushNamed(allroutes.caretmarksheetpage);
      //         },
      //         child: const Icon(
      //           Icons.picture_as_pdf_outlined,
      //           size: 30,
      //           color: Colors.black,
      //         )),
      //   ],
      // ),
    );
  }
}
