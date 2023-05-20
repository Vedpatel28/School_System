import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:student_marksheet_generator_exam/utils/back_button.dart';
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
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Container(
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
                        width: s.width * 0.5,
                        child: TextFormField(
                          initialValue: (allGlobalvar.Maths == null) ? null : allGlobalvar.Maths.toString(),
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
                        width: s.width * 0.5,
                        child: TextFormField(
                          initialValue: (allGlobalvar.English == null) ? null : allGlobalvar.English.toString(),
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
                        width: s.width * 0.5,
                        child: TextFormField(
                          initialValue: (allGlobalvar.Biology == null) ? null : allGlobalvar.Biology.toString(),
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
                        width: s.width * 0.5,
                        child: TextFormField(
                          initialValue: (allGlobalvar.Physics == null) ? null : allGlobalvar.Physics.toString(),
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
                      Container(
                        width: s.width * 0.5,
                        child: TextFormField(
                          initialValue: (allGlobalvar.Chemistry == null) ? null : allGlobalvar.Chemistry.toString(),
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
                            allGlobalvar.Chemistry == newValue;
                          },
                          decoration: const InputDecoration(
                            border: OutlineInputBorder(),
                            hintText: 'Enter Macks',
                          ),
                          onFieldSubmitted: (value) {
                            if (formkey.currentState!.validate()) {
                              formkey.currentState!.save();
                              allGlobalvar.allmarcks.add(
                                marcks(
                                  Biologymo: allGlobalvar.Biology!,
                                  Mathsmo: allGlobalvar.Maths,
                                  Englishmo: allGlobalvar.English,
                                  Physicsmo: allGlobalvar.Physics,
                                  Chemistrymo: allGlobalvar.Chemistry,
                                ),
                              );
                              allGlobalvar.totalmarcks =
                                  allGlobalvar.Chemistry! + allGlobalvar.Maths! + allGlobalvar.English! + allGlobalvar.Physics!;
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
                      ),
                    ],
                  ),
                  const Spacer(),
                  // Total Marks
                  // Row(
                  //   children: [
                  //     GestureDetector(
                  //       onTap: () {
                  //         setState(() {});
                  //       },
                  //       child: Text(
                  //         "Total Marks : ",
                  //         style: GoogleFonts.schoolbell(
                  //           textStyle: TextStyle(
                  //             fontSize: s.height * 0.03,
                  //             fontWeight: FontWeight.bold,
                  //           ),
                  //         ),
                  //       ),
                  //     ),
                  //     const Spacer(),
                  //     Text(
                  //       '${allGlobalvar.totalmarcks}',
                  //       style: GoogleFonts.schoolbell(
                  //         textStyle: TextStyle(
                  //           fontSize: s.height * 0.04,
                  //           fontWeight: FontWeight.bold,
                  //         ),
                  //       ),
                  //     ),
                  //   ],
                  // ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
