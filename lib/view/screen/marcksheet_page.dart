import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:student_marksheet_generator_exam/utils/back_button.dart';
import 'package:student_marksheet_generator_exam/utils/routes_utils.dart';
import 'package:student_marksheet_generator_exam/view/componect/snackbar_com.dart';
import 'package:student_marksheet_generator_exam/view/modals/global_varibal.dart';
import 'package:student_marksheet_generator_exam/view/modals/modals.dart';

class Marksheet_add extends StatefulWidget {
  const Marksheet_add({Key? key}) : super(key: key);

  @override
  State<Marksheet_add> createState() => _Marksheet_addState();
}

class _Marksheet_addState extends State<Marksheet_add> {
  GlobalKey<FormState> formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    Size s = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        leading: const backbutton(),
        title: Text(
          "MarkSheet",
          style: GoogleFonts.schoolbell(
            textStyle: TextStyle(
              fontSize: s.height * 0.03,
              color: Colors.black,
            ),
          ),
        ),
        centerTitle: true,
        actions: [
          GestureDetector(
            onTap: () {
              if (formkey.currentState!.validate()) {
                formkey.currentState!.save();
                allGlobalvar.allmarcks.add(
                  marcks(
                    Biologymo: allGlobalvar.Biology!,
                    Mathsmo: allGlobalvar.Maths!,
                    Englishmo: allGlobalvar.English!,
                    Physicsmo: allGlobalvar.Physics!,
                    Chemistrymo: allGlobalvar.Chemistry!,
                  ),
                );
                ScaffoldMessenger.of(context).showSnackBar(
                  errorsnackBar(
                    text: "Successfully validated !!",
                    color: Colors.green,
                  ),
                );
              } else {
                ScaffoldMessenger.of(context).showSnackBar(
                  errorsnackBar(
                    text: "Sum thing Error !!",
                    color: Colors.redAccent,
                  ),
                );
              }
              Navigator.of(context).pop();
            },
            child: Icon(
              Icons.check_rounded,
              size: s.height * 0.035,
            ),
          ),
          Icon(
            Icons.add,
            size: s.height * 0.02,
            color: Colors.transparent,
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: SizedBox(
            height: s.height * 0.8,
            width: s.width,
            child: Form(
              key: formkey,
              autovalidateMode: AutovalidateMode.onUserInteraction,
              child: Column(
                children: [
                  // Maths : Mark
                  Row(
                    children: [
                      Text(
                        "Maths :",
                        style: GoogleFonts.schoolbell(
                          textStyle: TextStyle(
                            fontSize: s.height * 0.03,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      const Spacer(),
                      SizedBox(
                        width: s.width * 0.4,
                        child: TextFormField(
                          maxLength: 2,
                          keyboardType: TextInputType.number,
                          initialValue: (allGlobalvar.Maths == null)
                              ? null
                              : allGlobalvar.Maths.toString(),
                          textInputAction: TextInputAction.next,
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "Enter Mark Properly";
                            } else if (value.length < 2) {
                              return "Enter Value under 100";
                            } else {
                              return null;
                            }
                          },
                          onSaved: (newValue) {
                            allGlobalvar.Maths == newValue;
                          },
                          decoration: const InputDecoration(
                            border: OutlineInputBorder(),
                            hintText: 'Enter Macks',
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: s.height * 0.02),
                  // English : Mark
                  Row(
                    children: [
                      Text(
                        "English :",
                        style: GoogleFonts.schoolbell(
                          textStyle: TextStyle(
                            fontSize: s.height * 0.03,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      const Spacer(),
                      SizedBox(
                        width: s.width * 0.4,
                        child: TextFormField(
                          maxLength: 2,
                          keyboardType: TextInputType.number,
                          initialValue: (allGlobalvar.English == null)
                              ? null
                              : allGlobalvar.English.toString(),
                          textInputAction: TextInputAction.next,
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "Enter Mark Properly";
                            } else if (value.length < 2) {
                              return "Enter Value under 100";
                            } else {
                              return null;
                            }
                          },
                          onSaved: (newValue) {
                            allGlobalvar.English == newValue;
                          },
                          decoration: const InputDecoration(
                            border: OutlineInputBorder(),
                            hintText: 'Enter Macks',
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: s.height * 0.02),
                  // Biology : Mark
                  Row(
                    children: [
                      Text(
                        "Biology :",
                        style: GoogleFonts.schoolbell(
                          textStyle: TextStyle(
                            fontSize: s.height * 0.03,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      const Spacer(),
                      SizedBox(
                        width: s.width * 0.4,
                        child: TextFormField(
                          maxLength: 2,
                          keyboardType: TextInputType.number,
                          initialValue: (allGlobalvar.Biology == null)
                              ? null
                              : allGlobalvar.Biology.toString(),
                          textInputAction: TextInputAction.next,
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "Enter Mark Properly";
                            } else if (value.length < 2) {
                              return "Enter Value under 100";
                            } else {
                              return null;
                            }
                          },
                          onSaved: (newValue) {
                            allGlobalvar.Biology == newValue;
                          },
                          decoration: const InputDecoration(
                            border: OutlineInputBorder(),
                            hintText: 'Enter Macks',
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: s.height * 0.02),
                  // Physics : Mark
                  Row(
                    children: [
                      Text(
                        "Physics :",
                        style: GoogleFonts.schoolbell(
                          textStyle: TextStyle(
                            fontSize: s.height * 0.03,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      const Spacer(),
                      SizedBox(
                        width: s.width * 0.4,
                        child: TextFormField(
                          maxLength: 2,
                          keyboardType: TextInputType.number,
                          initialValue: (allGlobalvar.Physics == null)
                              ? null
                              : allGlobalvar.Physics.toString(),
                          textInputAction: TextInputAction.next,
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "Enter Mark Properly";
                            } else if (value.length < 2) {
                              return "Enter Value under 100";
                            } else {
                              return null;
                            }
                          },
                          onSaved: (newValue) {
                            allGlobalvar.Physics == newValue;
                          },
                          decoration: const InputDecoration(
                            border: OutlineInputBorder(),
                            hintText: 'Enter Macks',
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: s.height * 0.02),
                  // Chemistry : Mark
                  Row(
                    children: [
                      Text(
                        "Chemistry :",
                        style: GoogleFonts.schoolbell(
                          textStyle: TextStyle(
                            fontSize: s.height * 0.03,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      const Spacer(),
                      SizedBox(
                        width: s.width * 0.4,
                        child: TextFormField(
                          maxLength: 2,
                          keyboardType: TextInputType.number,
                          initialValue: (allGlobalvar.Chemistry == null)
                              ? null
                              : allGlobalvar.Chemistry.toString(),
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "Enter Mark Properly";
                            } else if (value.length < 2) {
                              return "Enter Value under 100";
                            } else {
                              return null;
                            }
                          },
                          onSaved: (newValue) {
                            allGlobalvar.Chemistry == newValue;
                          },
                          decoration: const InputDecoration(
                            border: OutlineInputBorder(),
                            hintText: 'Enter Macks',
                          ),
                        ),
                      ),
                    ],
                  ),
                  const Spacer(),
                ],
              ),
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
        index: 2,
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
