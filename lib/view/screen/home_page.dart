import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:student_marksheet_generator_exam/utils/routes_utils.dart';

class homepage extends StatefulWidget {
  const homepage({Key? key}) : super(key: key);

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  @override
  Widget build(BuildContext context) {
    Size s = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Student App",
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
        child: Container(
          height: s.height * 0.9,
          width: s.width,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(
              Radius.circular(12),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Student Details Row
                Row(
                  children: [
                    CircleAvatar(
                      radius: s.height * 0.04,
                      foregroundImage: const NetworkImage(
                        "https://w7.pngwing.com/pngs/127/535/png-transparent-computer-icons-identity-document-student-information-passport-miscellaneous-text-people.png",
                      ),
                    ),
                    SizedBox(width: s.width * 0.03),
                    Text(
                      "Student Details",
                      style: GoogleFonts.schoolbell(
                        textStyle: TextStyle(
                          fontSize: s.height * 0.03,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    const Spacer(),
                    IconButton(
                      onPressed: () {
                        Navigator.of(context).pushNamed(allroutes.studentdetailspage);
                      },
                      icon: const Icon(Icons.navigate_next_rounded, size: 30),
                    ),
                  ],
                ),
                SizedBox(height: s.height * 0.02),
                // Student Marksheet Row
                Row(
                  children: [
                    CircleAvatar(
                      radius: s.height * 0.04,
                      foregroundImage: const NetworkImage(
                        "https://img.freepik.com/free-vector/flat-woman-checking-giant-check-list-background_23-2148084349.jpg?w=740&t=st=1684549625~exp=1684550225~hmac=28a918b788890cde482a93a38c876e50fccd6ba42863a737adc9565951dcad70",
                      ),
                    ),
                    SizedBox(width: s.width * 0.03),
                    Text(
                      "Student Marksheet",
                      style: GoogleFonts.schoolbell(
                        textStyle: TextStyle(
                          fontSize: s.height * 0.03,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    const Spacer(),
                    IconButton(
                      onPressed: () {
                        Navigator.of(context).pushNamed(allroutes.studentmarksheetpage);
                      },
                      icon: const Icon(Icons.navigate_next_rounded, size: 30),
                    ),
                  ],
                ),
                SizedBox(height: s.height * 0.02),
                // Student Generate Marksheet Pdf Row
                Row(
                  children: [
                    CircleAvatar(
                      radius: s.height * 0.04,
                      foregroundImage: const NetworkImage(
                        "https://www.elegantthemes.com/blog/wp-content/uploads/2016/09/wordpress-pdf-icon.png",
                      ),
                    ),
                    SizedBox(width: s.width * 0.03),
                    Text(
                      "Generate Marksheet",
                      style: GoogleFonts.schoolbell(
                        textStyle: TextStyle(
                          fontSize: s.height * 0.03,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    const Spacer(),
                    IconButton(
                      onPressed: () {
                        Navigator.of(context).pushNamed(allroutes.caretmarksheetpage);
                      },
                      icon: const Icon(Icons.navigate_next_rounded, size: 30),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
