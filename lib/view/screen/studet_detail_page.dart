import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:student_marksheet_generator_exam/utils/back_button.dart';
import 'package:student_marksheet_generator_exam/utils/routes_utils.dart';
import 'package:student_marksheet_generator_exam/view/componect/snackbar_com.dart';
import 'package:student_marksheet_generator_exam/view/modals/global_varibal.dart';
import 'package:student_marksheet_generator_exam/view/modals/modals.dart';

class studentdetailpage extends StatefulWidget {
  const studentdetailpage({Key? key}) : super(key: key);

  @override
  State<studentdetailpage> createState() => _studentdetailpageState();
}

class _studentdetailpageState extends State<studentdetailpage> {
  GlobalKey<FormState> formkey2 = GlobalKey<FormState>();

  marcks markcall = marcks(
    Biologymo: allGlobalvar.Biology,
    Mathsmo: allGlobalvar.Maths,
    Englishmo: allGlobalvar.English,
    Physicsmo: allGlobalvar.Physics,
    Chemistrymo: allGlobalvar.Chemistry,
  );

  @override
  Widget build(BuildContext context) {
    Size s = MediaQuery
        .of(context)
        .size;
    return Scaffold(
      appBar: AppBar(
        leading: const backbutton(),
        title: Text(
          "Student Detail",
          style: GoogleFonts.balooBhaina2(
            textStyle: TextStyle(
              fontSize: s.height * 0.03,
              color: Colors.black,
            ),
          ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Form(
            key: formkey2,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Name",
                  style: GoogleFonts.balooBhaina2(
                    textStyle: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: s.height * 0.03,
                      letterSpacing: 1,
                    ),
                  ),
                ),
                TextFormField(
                  initialValue: allGlobalvar.name,
                  textInputAction: TextInputAction.next,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Enter Name";
                    } else {
                      return null;
                    }
                  },
                  onSaved: (newValue) {
                    allGlobalvar.name == newValue;
                  },
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Enter Student name',
                  ),
                ),
                SizedBox(height: s.height * 0.02),
                Text(
                  "Student Id",
                  style: GoogleFonts.balooBhaina2(
                    textStyle: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: s.height * 0.03,
                      letterSpacing: 1,
                    ),
                  ),
                ),
                TextFormField(
                  initialValue: allGlobalvar.id,
                  textInputAction: TextInputAction.next,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Enter ID";
                    } else {
                      return null;
                    }
                  },
                  onSaved: (newValue) {
                    allGlobalvar.id == newValue;
                  },
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Enter Student Roll No.',
                  ),
                ),
                SizedBox(height: s.height * 0.02),
                Text(
                  "Standard",
                  style: GoogleFonts.balooBhaina2(
                    textStyle: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: s.height * 0.03,
                      letterSpacing: 1,
                    ),
                  ),
                ),
                TextFormField(
                  initialValue: allGlobalvar.standard,
                  textInputAction: TextInputAction.next,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Enter Standard";
                    } else {
                      return null;
                    }
                  },
                  onSaved: (newValue) {
                    allGlobalvar.standard == newValue;
                  },
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Enter Student Standard',
                  ),
                ),
                SizedBox(height: s.height * 0.02),
                Text(
                  "Class",
                  style: GoogleFonts.balooBhaina2(
                    textStyle: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: s.height * 0.03,
                      letterSpacing: 1,
                    ),
                  ),
                ),
                TextFormField(
                  initialValue: allGlobalvar.classof,
                  textInputAction: TextInputAction.next,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Enter Class";
                    } else {
                      return null;
                    }
                  },
                  decoration: const InputDecoration(
                    hintText: 'Enter Class',
                    border: OutlineInputBorder(),
                  ),
                  onSaved: (newValue) {
                    allGlobalvar.classof == newValue;
                  },
                  onFieldSubmitted: (value) {
                    if (formkey2.currentState!.validate()) {
                      formkey2.currentState!.save();
                      allGlobalvar.alldetail.add(
                        detail(
                          name: allGlobalvar.name,
                          id: allGlobalvar.id,
                          standard: allGlobalvar.standard,
                          classof: allGlobalvar.classof,
                        ),
                      );
                      allGlobalvar.totalmarcks = (
                      allGlobalvar.English! +
                          allGlobalvar.Maths! +
                          allGlobalvar.Biology! +
                          allGlobalvar.Physics! +
                          allGlobalvar.Chemistry! ) as int?;
                      Navigator.of(context).pop();
                      ScaffoldMessenger.of(context).showSnackBar(
                        errorsnackBar(
                          text: "Successfully validated !!",
                          color: Colors.green,
                        ),
                      );
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(
                        errorsnackBar(
                          text: "Failled to validate !!",
                          color: Colors.red,
                        ),
                      );
                    }
                  },
                ),
                // Text("${allGlobalvar.totalmarcks}"),
                // Text(
                //   '${allGlobalvar.Physics! + allGlobalvar.Maths! + allGlobalvar.Chemistry! + allGlobalvar.Biology! + allGlobalvar.English!}',
                //   style: const TextStyle(
                //     fontSize: 14,
                //     fontWeight: FontWeight.bold,
                //   ),
                // ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: CurvedNavigationBar(
        buttonBackgroundColor: Colors.transparent,
        backgroundColor: Colors.transparent,
        animationCurve: Curves.linear,
        color: Colors.black26,
        height: 60,
        index: 1,
        items: [
          GestureDetector(
              onTap: () {
                Navigator.of(context).pushNamed(allroutes.homepage);
              },
              child: const Icon(
                Icons.home_rounded,
                size: 30,
                color: Colors.black,
              )),
          GestureDetector(
              onTap: () {
                Navigator.of(context).pushNamed(allroutes.studentdetailspage);
              },
              child: const Icon(
                Icons.account_circle_outlined,
                size: 30,
                color: Colors.black,
              )),
          GestureDetector(
              onTap: () {
                Navigator.of(context).pushNamed(allroutes.studentmarksheetpage);
              },
              child: const Icon(
                Icons.addchart_rounded,
                size: 30,
                color: Colors.black,
              )),
          GestureDetector(
              onTap: () {
                Navigator.of(context).pushNamed(allroutes.caretmarksheetpage);
              },
              child: const Icon(
                Icons.picture_as_pdf_outlined,
                size: 30,
                color: Colors.black,
              )),
        ],
      ),
    );
  }
}
