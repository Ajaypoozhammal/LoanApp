import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class Screen9 extends StatefulWidget {
  const Screen9({super.key});

  @override
  State<Screen9> createState() => _Screen9State();
}

class _Screen9State extends State<Screen9> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFF0083),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 5, top: 40),
              child: Row(
                children: [
                  Icon(
                    Icons.view_list,
                    color: Colors.white,
                    size: 30.sp,
                  ),
                  SizedBox(width: 280),
                  Icon(
                    Icons.notifications_none_sharp,
                    color: Colors.white,
                    size: 30.sp,
                  )
                ],
              ),
            ),
            Text(
              'Welcome',
              style: GoogleFonts.poppins(
                textStyle: TextStyle(
                  color: Colors.white,
                  fontSize: 18.sp,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            Text(
              'Good afternoon,',
              style: GoogleFonts.poppins(
                textStyle: TextStyle(
                  color: Colors.white,
                  fontSize: 18.sp,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            Text(
              'Jacquie!',
              style: GoogleFonts.poppins(
                textStyle: TextStyle(
                  color: Colors.white,
                  fontSize: 28.sp,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Stack(
                children: [
                  Container(
                    width: 327.w,
                    height: 158.h,
                    decoration: ShapeDecoration(
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 278, bottom: 110),
                      child: SizedBox(
                        width: 70.w,
                        child: ClipRRect(
                          borderRadius:
                              BorderRadius.only(topRight: Radius.circular(10)),
                          child: SizedBox(
                            height: 20.h,
                            child: Image.asset(
                              "assets/f.png",
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 126, right: 50),
                    child: SizedBox(
                      width: 70.w,
                      child: ClipRRect(
                        borderRadius:
                            BorderRadius.only(bottomLeft: Radius.circular(10)),
                        child: Image.asset(
                          "assets/e.png",
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 35, top: 5),
                    child: Text(
                      'Loan Balance',
                      style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                          color: Colors.black,
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 295, top: 3),
                    child: Text(
                      '50%',
                      style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                          color: Colors.white,
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 30, left: 25),
                    child: Row(
                      children: [
                        Text(
                          '\$3,000.00',
                          style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                              color: Colors.black,
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 5.w,
                        ),
                        Text(
                          'of \$10,050.00',
                          style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                              color: Colors.black,
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 20.w,
                        ),
                        Text(
                          '39 days left',
                          style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                              color: Colors.black,
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 80, left: 25),
                    child: new LinearPercentIndicator(
                      width: 290.w,
                      lineHeight: 3.h,
                      percent: .50,
                      backgroundColor: Colors.grey,
                      progressColor: Colors.black,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 100, left: 150),
                    child: Row(
                      children: [
                        Text(
                          'Replay Loan',
                          style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                              color: Colors.black,
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 5.w,
                        ),
                        TextButton(
                          onPressed: () {
                            showModalBottomSheet(
                              isScrollControlled: true,
                              context: context,
                              builder: (BuildContext Context) {
                                return SizedBox(
                                  height: 500.h,
                                  width: 600.w,
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 50),
                                    child: Row(
                                      children: [
                                        Text(
                                          'Transactions',
                                          style: GoogleFonts.poppins(
                                            textStyle: TextStyle(
                                              color: Colors.black,
                                              fontSize: 16.sp,
                                              fontWeight: FontWeight.w700,
                                            ),
                                          ),
                                        ),
                                        SizedBox(width: 130.w,),
                                        Text(
                                          'See All',
                                          style: GoogleFonts.poppins(
                                            textStyle: TextStyle(
                                              color: Colors.red,
                                              fontSize: 14.sp,
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                );
                              },
                            );
                          },
                          child: CircleAvatar(
                            radius: 15.r,
                            backgroundColor: Color(0xffFF0083),
                            child: Icon(
                              Icons.arrow_forward,
                              size: 33,
                              color: Colors.white,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
