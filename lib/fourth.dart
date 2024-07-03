import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import 'fifth.dart';

class Screen4 extends StatefulWidget {
  const Screen4({super.key});

  @override
  State<Screen4> createState() => _Screen4State();
}

class _Screen4State extends State<Screen4> {
  TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              child: Padding(
                padding: const EdgeInsets.only(left: 60, top: 50),
                child: Stack(
                  children: [
                    Image.asset('assets/d.png'),
                  ],
                ),
              ),
              width: 250.w,
              height: 260.h,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 80, right: 50),
              child: Text(
                'Add your mobile number',
                style: GoogleFonts.poppins(
                  textStyle: TextStyle(
                    color: Colors.black,
                    fontSize: 19.69.sp,
                    fontWeight: FontWeight.w700,
                    letterSpacing: 0.06,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30, right: 15),
              child: Text(
                'We’ll need to confirm it by sending a text.',
                style: GoogleFonts.poppins(
                  textStyle: TextStyle(
                    color: Colors.black,
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w300,
                    height: 0.11,
                    letterSpacing: 0.06,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30, left: 20, right: 20),
              child: TextField(
                  controller: controller,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20.r)),
                      labelText: "Mobile Number",hintText: '+(_ _ _ _)')),
            ),
            TextButton(onPressed: (){Navigator.of(context).push(MaterialPageRoute(builder: (_)=>Screen5()));},
              child: Padding(
                padding: const EdgeInsets.only(top: 30),
                child: Container(
                  width: 280.w,
                  height: 50.h,
                  decoration: ShapeDecoration(
                    color: Color(0xFFFF0083),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.r)),
                  ),
                  child: Center(
                    child: Text(
                      'Proceed',
                      style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                          color: Color(0xFFFFF2F2),
                          fontSize: 18.sp,
                          fontWeight: FontWeight.w600,
                          letterSpacing: 0.06,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
