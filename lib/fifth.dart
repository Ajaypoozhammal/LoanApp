import 'package:bankloan/sixth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class Screen5 extends StatefulWidget {
  const Screen5({super.key});

  @override
  State<Screen5> createState() => _Screen5State();
}
class _Screen5State extends State<Screen5> {
  get verificationCode => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 120),
              child: Text(
                'Verify',
                style: GoogleFonts.poppins(
                  textStyle: TextStyle(
                    color: Color(0xFF1F1F1F),
                    fontSize: 29.sp,
                    fontWeight: FontWeight.w700,
                    letterSpacing: 0.06,
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only( top: 30),
            child: Text(
              'Please enter the 6 digit one time \n  code to activate your account!',
              style: GoogleFonts.poppins(
                textStyle: TextStyle(
                  color: Colors.black,
                  fontSize: 15.sp,
                  fontWeight: FontWeight.w300,
                  letterSpacing: 0.06,
                ),
              ),
            ),
          ),

            Padding(
              padding: const EdgeInsets.only(top: 60),
              child: OtpTextField(fieldHeight: 45.w,fieldWidth: 40.w,
              numberOfFields: 5,
              borderColor: Color(0xFF512DA8),
              //set to true to show as box or false to show as dash
              showFieldAsBox: true,
              //runs when a code is typed in
              onCodeChanged: (String code) {
                //handle validation or checks here
              },
              //runs when every textfield is filled
              onSubmit: (String verificationCode){
                showDialog(
                    context: context,
                    builder: (context){
                      return AlertDialog(
                        title: Text("Verification Code"),
                        content: Text('Code entered is $verificationCode'),
                      );
                    }
                );
              }, // end onSubmit
                        ),
            ),
          Padding(
            padding: const EdgeInsets.only(top: 30),
            child: Text(
              'Didn’t receive a Code?',
              style: GoogleFonts.poppins(
                textStyle: TextStyle(
                  color: Colors.black,
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w400,
                  letterSpacing: 0.06,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 30),
            child: Text(
              'Resend Code!',
              style: GoogleFonts.poppins(
                textStyle: TextStyle(
                  color: Color(0xFF1F1F1F),
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w700,
                  decoration: TextDecoration.underline,
                  letterSpacing: 0.06,
                ),
              ),
            ),
          ),
          TextButton(onPressed: (){Navigator.of(context).push(MaterialPageRoute(builder: (_)=>Screen6()));},
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
                    'Verify',
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
    );
  }
}
