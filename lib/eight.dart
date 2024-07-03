import 'package:bankloan/pafe9.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class Screen8 extends StatefulWidget {
  const Screen8({super.key});

  @override
  State<Screen8> createState() => _Screen8State();
}

class _Screen8State extends State<Screen8> {
  bool ischecked = false;
  RangeValues values = RangeValues(0, 100);

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
            Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Container(
                    width: 327.w,
                    height: 158.h,
                    decoration: ShapeDecoration(
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 278, bottom: 2),
                  child: SizedBox(
                    width: 70.w,
                    child: ClipRRect(
                        borderRadius:
                            BorderRadius.only(topRight: Radius.circular(10)),
                        child: Image.asset(
                          "assets/f.png",
                        )),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 126, left: 20),
                  child: SizedBox(
                    width: 70.w,
                    child: ClipRRect(
                        borderRadius:
                            BorderRadius.only(bottomLeft: Radius.circular(10)),
                        child: Image.asset(
                          "assets/e.png",
                        )),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 35, top: 20),
                  child: Text(
                    'Loan Limit',
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
                    '100%',
                    style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                        color: Colors.white,
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 50, left: 35),
                  child: Row(
                    children: [
                      Text(
                        '\$10,000.00',
                        style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                            color: Colors.black,
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                      SizedBox(width: 60.w),
                      Text(
                        'Request for \$5,500.00',
                        style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                            color: Colors.black,
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 100, left: 25),
                  child: new LinearPercentIndicator(
                    width: 310.w,
                    lineHeight: 3.h,
                    percent: .1,
                    backgroundColor: Colors.grey,
                    progressColor: Colors.black,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 90, left: 60),
                  child: CircleAvatar(
                    radius: 10.r,
                    backgroundColor: Colors.black,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 110, left: 170),
                  child: Row(
                    children: [
                      Text(
                        'Request for Loan',
                        style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                            color: Colors.black,
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      SizedBox(width: 10),
                      TextButton(
                        onPressed: () {
                          showModalBottomSheet<void>(
                            isScrollControlled: true,
                            context: context,
                            builder: (BuildContext context) {
                              return StatefulBuilder(builder:
                                  (BuildContext context,
                                      void Function(void Function()) setState) {
                                return SizedBox(
                                  height: 500.h,
                                  width: 600.w,
                                  child: Column(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(top: 45),
                                        child: Text(
                                          'How long do you want the loan for?',
                                          style: GoogleFonts.poppins(
                                            textStyle: TextStyle(
                                              color: Colors.black,
                                              fontSize: 17.sp,
                                              fontWeight: FontWeight.w600,
                                              letterSpacing: 0.04,
                                            ),
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 2.h,
                                      ),
                                      Text(
                                        '2 Months',
                                        style: GoogleFonts.poppins(
                                          textStyle: TextStyle(
                                            color: Color(0xFF1F1F1F),
                                            fontSize: 24.sp,
                                            fontWeight: FontWeight.w700,
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 20.h,
                                      ),
                                      SizedBox(
                                        width: 400.w,
                                        height: 40.h,
                                        child: RangeSlider(
                                          min: 0,
                                          max: 100,
                                          values: values,
                                          labels: RangeLabels(
                                              values.start.round().toString(),
                                              values.end.round().toString()),
                                          divisions: 100,
                                          activeColor: Colors.red,
                                          onChanged: (newValue) {
                                            if (values.start != newValue.start)
                                              return;
                                            setState(
                                              () {
                                                values = newValue;
                                              },
                                            );
                                          },
                                        ),
                                      ),
                                      SizedBox(
                                        height: 20.h,
                                      ),
                                      Container(
                                        width: 335.w,
                                        height: 100.h,
                                        decoration: ShapeDecoration(
                                          color: Colors.white,
                                          shape: RoundedRectangleBorder(
                                            side:
                                                BorderSide(color: Colors.black),
                                            borderRadius:
                                                BorderRadius.circular(20),
                                          ),
                                          shadows: [
                                            BoxShadow(
                                              color: Colors.grey,
                                              offset: const Offset(
                                                5.0,
                                                5.0,
                                              ),
                                              blurRadius: 10.0,
                                              spreadRadius: 2.0,
                                            ),
                                          ],
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.only(
                                              left: 30, bottom: 30),
                                          child: Column(
                                            children: [
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 1, top: 5),
                                                child: Row(
                                                  children: [
                                                    Text(
                                                      'Monthly \nPayment',
                                                      style:
                                                          GoogleFonts.poppins(
                                                        textStyle: TextStyle(
                                                          color: Colors.black,
                                                          fontSize: 10.sp,
                                                          fontWeight:
                                                              FontWeight.w400,
                                                        ),
                                                      ),
                                                    ),
                                                    SizedBox(
                                                      width: 50.w,
                                                    ),
                                                    Text(
                                                      'No of\nPayments',
                                                      style:
                                                          GoogleFonts.poppins(
                                                        textStyle: TextStyle(
                                                          color: Colors.black,
                                                          fontSize: 10.sp,
                                                          fontWeight:
                                                              FontWeight.w400,
                                                        ),
                                                      ),
                                                    ),
                                                    SizedBox(
                                                      width: 50.h,
                                                    ),
                                                    Text(
                                                      'Total Payback',
                                                      style:
                                                          GoogleFonts.poppins(
                                                        textStyle: TextStyle(
                                                          color: Colors.black,
                                                          fontSize: 10.sp,
                                                          fontWeight:
                                                              FontWeight.w400,
                                                        ),
                                                      ),
                                                    )
                                                  ],
                                                ),
                                              ),
                                              SizedBox(
                                                height: 5.h,
                                                width: 10.w,
                                              ),
                                              Row(
                                                children: [
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            left: 5),
                                                    child: Text(
                                                      'NIL',
                                                      style:
                                                          GoogleFonts.poppins(
                                                        textStyle: TextStyle(
                                                          color:
                                                              Color(0xFFC4C4C4),
                                                          fontSize: 20.sp,
                                                          fontWeight:
                                                              FontWeight.w300,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    width: 60.w,
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            left: 10),
                                                    child: Text(
                                                      'NIL',
                                                      style:
                                                          GoogleFonts.poppins(
                                                        textStyle: TextStyle(
                                                          fontSize: 20.sp,
                                                          color:
                                                              Color(0xFFC4C4C4),
                                                          fontWeight:
                                                              FontWeight.w300,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    width: 80.h,
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            left: 30),
                                                    child: Text(
                                                      'NIL',
                                                      style:
                                                          GoogleFonts.poppins(
                                                        textStyle: TextStyle(
                                                          fontSize: 20.sp,
                                                          color:
                                                              Color(0xFFC4C4C4),
                                                          fontWeight:
                                                              FontWeight.w300,
                                                        ),
                                                      ),
                                                    ),
                                                  )
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 20.h,
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(left: 5),
                                        child: Row(
                                          children: [
                                            Checkbox(
                                              value: ischecked,
                                              onChanged: (value) {
                                                setState(
                                                  () {
                                                    ischecked = !ischecked;
                                                  },
                                                );
                                              },
                                            ),
                                            Text(
                                              "I agree to the",
                                              style: GoogleFonts.poppins(
                                                textStyle: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 13.sp,
                                                  fontWeight: FontWeight.w300,
                                                ),
                                              ),
                                            ),
                                            Text(
                                              "Terms & Conditions",
                                              style: GoogleFonts.poppins(
                                                textStyle: TextStyle(
                                                  color: Color(0xFFFF0083),
                                                  fontSize: 13.sp,
                                                  fontWeight: FontWeight.w300,
                                                ),
                                              ),
                                            ),
                                            Text(
                                              "and",
                                              style: GoogleFonts.poppins(
                                                textStyle: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 13.sp,
                                                  fontWeight: FontWeight.w300,
                                                ),
                                              ),
                                            ),
                                            Text(
                                              "policy",
                                              style: GoogleFonts.poppins(
                                                textStyle: TextStyle(
                                                  color: Color(0xFFFF0083),
                                                  fontSize: 13.sp,
                                                  fontWeight: FontWeight.w300,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      SizedBox(
                                        height: 20.h,
                                      ),
                                      Container(
                                        width: 280.w,
                                        height: 50.h,
                                        decoration: ShapeDecoration(
                                          color: Color(0xFFFF0083),
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(20.r)),
                                        ),
                                        child: Center(
                                          child: TextButton(
                                            onPressed: () {
                                              showModalBottomSheet(
                                                isScrollControlled: true,
                                                context: context,
                                                builder:
                                                    (BuildContext context) {
                                                  return SizedBox(
                                                    height: 600.h,
                                                    width: 600.w,
                                                    child: Column(
                                                      children: [
                                                        Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                  .only(
                                                                  top: 45),
                                                          child: Text(
                                                            'That was way to easy!',
                                                            style: GoogleFonts
                                                                .poppins(
                                                              textStyle:
                                                                  TextStyle(
                                                                color: Colors
                                                                    .black,
                                                                fontSize: 17.sp,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w600,
                                                                letterSpacing:
                                                                    0.04,
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                        SizedBox(
                                                          height: 10.h,
                                                        ),
                                                        Text(
                                                          'Congratulations!',
                                                          style: GoogleFonts
                                                              .poppins(
                                                            textStyle:
                                                                TextStyle(
                                                              color: Color(
                                                                  0xFF1F1F1F),
                                                              fontSize: 24.sp,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w700,
                                                            ),
                                                          ),
                                                        ),
                                                        SizedBox(
                                                          height: 15.h,
                                                        ),
                                                        CircleAvatar(
                                                          backgroundColor:
                                                              Color(0xFFC5C5C5),
                                                          radius: 40.r,
                                                          child: Icon(
                                                            Icons.done,
                                                            color:
                                                                CupertinoColors
                                                                    .activeGreen,
                                                            size: 80,
                                                          ),
                                                        ),
                                                        SizedBox(
                                                          height: 15.h,
                                                        ),
                                                        Text(
                                                          'Transaction Summary',
                                                          style: GoogleFonts
                                                              .poppins(
                                                            textStyle:
                                                                TextStyle(
                                                              color:
                                                                  Colors.black,
                                                              fontSize: 17.sp,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w600,
                                                              letterSpacing:
                                                                  0.04,
                                                            ),
                                                          ),
                                                        ),
                                                        SizedBox(
                                                          height: 15.h,
                                                        ),
                                                        Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                  .only(
                                                                  left: 30),
                                                          child: Row(
                                                            children: [
                                                              Column(
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .start,
                                                                children: [
                                                                  Text(
                                                                    'Next Repayment Date:',
                                                                    style: GoogleFonts
                                                                        .poppins(
                                                                      textStyle:
                                                                          TextStyle(
                                                                        color: Color(
                                                                            0xFF7F8790),
                                                                        fontSize:
                                                                            14.sp,
                                                                        fontWeight:
                                                                            FontWeight.w300,
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  SizedBox(
                                                                    height: 10.h,
                                                                  ),
                                                                  Text(
                                                                    'Interest Rate:',
                                                                    style: GoogleFonts
                                                                        .poppins(
                                                                      textStyle:
                                                                          TextStyle(
                                                                        color: Color(
                                                                            0xFF7F8790),
                                                                        fontSize:
                                                                            14.sp,
                                                                        fontWeight:
                                                                            FontWeight.w300,
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  SizedBox(
                                                                    height: 10.h,
                                                                  ),
                                                                  Text(
                                                                    'Monthly Repayment:',
                                                                    style: GoogleFonts
                                                                        .poppins(
                                                                      textStyle:
                                                                          TextStyle(
                                                                        color: Color(
                                                                            0xFF7F8790),
                                                                        fontSize:
                                                                            14.sp,
                                                                        fontWeight:
                                                                            FontWeight.w300,
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  SizedBox(
                                                                    height: 10.h,
                                                                  ),
                                                                  Text(
                                                                    'No of Payments:',
                                                                    style: GoogleFonts
                                                                        .poppins(
                                                                      textStyle:
                                                                          TextStyle(
                                                                        color: Color(
                                                                            0xFF7F8790),
                                                                        fontSize:
                                                                            14.sp,
                                                                        fontWeight:
                                                                            FontWeight.w300,
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  SizedBox(
                                                                    height: 10.h,
                                                                  ),
                                                                  Text(
                                                                    'Reason',
                                                                    style: GoogleFonts
                                                                        .poppins(
                                                                      textStyle:
                                                                          TextStyle(
                                                                        color: Color(
                                                                            0xFF7F8790),
                                                                        fontSize:
                                                                            14.sp,
                                                                        fontWeight:
                                                                            FontWeight.w300,
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  SizedBox(
                                                                    height: 10.h,
                                                                  ),
                                                                  Text(
                                                                    'Total Payback Amount:',
                                                                    style: GoogleFonts
                                                                        .poppins(
                                                                      textStyle:
                                                                          TextStyle(
                                                                        color: Color(
                                                                            0xFF7F8790),
                                                                        fontSize:
                                                                            14.sp,
                                                                        fontWeight:
                                                                            FontWeight.w300,
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  SizedBox(
                                                                    height: 10.h,
                                                                  ),
                                                                ],
                                                              ),
                                                              SizedBox(
                                                                width: 50.w,
                                                              ),
                                                              Column(
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .end,
                                                                children: [
                                                                  Text(
                                                                    '02/04/2023',
                                                                    style: GoogleFonts
                                                                        .poppins(
                                                                      textStyle:
                                                                          TextStyle(
                                                                        color: Color(
                                                                            0xFF080808),
                                                                        fontSize:
                                                                            14.sp,
                                                                        fontWeight:
                                                                            FontWeight.w300,
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  SizedBox(
                                                                    height: 10.h,
                                                                  ),
                                                                  Text(
                                                                    '10 %',
                                                                    style: GoogleFonts
                                                                        .poppins(
                                                                      textStyle:
                                                                          TextStyle(
                                                                        color: Color(
                                                                            0xFF080808),
                                                                        fontSize:
                                                                            14.sp,
                                                                        fontWeight:
                                                                            FontWeight.w300,
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  SizedBox(
                                                                    height: 10.h,
                                                                  ),
                                                                  Text(
                                                                    '\$5,000.00',
                                                                    style: GoogleFonts
                                                                        .poppins(
                                                                      textStyle:
                                                                          TextStyle(
                                                                        color: Color(
                                                                            0xFF080808),
                                                                        fontSize:
                                                                            14.sp,
                                                                        fontFamily:
                                                                            'Poppins',
                                                                        fontWeight:
                                                                            FontWeight.w300,
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  SizedBox(
                                                                    height: 10.h,
                                                                  ),
                                                                  Text(
                                                                    '2',
                                                                    textAlign:
                                                                        TextAlign
                                                                            .right,
                                                                    style:
                                                                        TextStyle(
                                                                      color: Color(
                                                                          0xFF080808),
                                                                      fontSize:
                                                                          14.sp,
                                                                      fontFamily:
                                                                          'Poppins',
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w300,
                                                                    ),
                                                                  ),
                                                                  SizedBox(
                                                                    height: 10.h,
                                                                  ),
                                                                  Text(
                                                                    'Emergency Bills',
                                                                    style: GoogleFonts
                                                                        .poppins(
                                                                      textStyle:
                                                                          TextStyle(
                                                                        color: Color(
                                                                            0xFF080808),
                                                                        fontSize:
                                                                            14.sp,
                                                                        fontWeight:
                                                                            FontWeight.w300,
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  SizedBox(
                                                                    height: 10.h,
                                                                  ),
                                                                  Text(
                                                                    '  \$ 10,050.00',
                                                                    style: GoogleFonts
                                                                        .poppins(
                                                                      textStyle:
                                                                          TextStyle(
                                                                        color: Color(
                                                                            0xFF080808),
                                                                        fontSize:
                                                                            14.sp,
                                                                        fontWeight:
                                                                            FontWeight.w300,
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                                                                             ],
                                                          ),
                                                        ),
                                                        Text(
                                                          '---------------------------------------------',
                                                          style: GoogleFonts
                                                              .poppins(
                                                            textStyle:
                                                            TextStyle(
                                                              color: Color(
                                                                  0xFF7F8790),
                                                              fontSize:
                                                              14.sp,
                                                              fontWeight:
                                                              FontWeight.w300,
                                                            ),
                                                          ),
                                                        ),
                                                        SizedBox(height: 10.h,),
                                                        TextButton(onPressed:(){Navigator.of(context).push(MaterialPageRoute(builder: (_)=>Screen9()));},
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
                                                                'Accept',
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
                                                        SizedBox(height: 10.h,),
                                                        Container(
                                                          width: 280.w,
                                                          height: 50.h,
                                                          decoration: ShapeDecoration(
                                                            color: Colors.black,
                                                            shape: RoundedRectangleBorder(
                                                                borderRadius: BorderRadius.circular(20.r)),
                                                          ),
                                                          child: Center(
                                                            child: Text(
                                                              'Decline',
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
                                                      ],
                                                    ),
                                                  );
                                                },
                                              );
                                            },
                                            child: Text(
                                              'Apply Now',
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
                                    ],
                                  ),
                                );
                              });
                            },
                          );
                        },
                        child: CircleAvatar(
                          radius: 20.r,
                          backgroundColor: Color(0xffFF0083),
                          child: Icon(
                            Icons.arrow_forward,
                            size: 33,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20.h,
            ),
            Container(
              width: 360.w,
              height: 367.h,
              decoration: ShapeDecoration(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(26),
                    topRight: Radius.circular(26),
                  ),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.only(top: 30),
                child: Column(
                  children: [
                    Text(
                      'How do you want to use your limit?',
                      style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                          color: Colors.black,
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 50),
                      child: Container(
                        width: 315.h,
                        height: 69.r,
                        decoration: ShapeDecoration(
                          color: Colors.white,
                          shape: RoundedRectangleBorder(
                            side: BorderSide(color: Colors.white70),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          shadows: [
                            BoxShadow(
                              color: Colors.grey,
                              offset: const Offset(
                                5.0,
                                5.0,
                              ),
                              blurRadius: 10.0,
                              spreadRadius: 2.0,
                            ),
                          ],
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 15),
                          child: Row(
                            children: [
                              Container(
                                height: 50.h,
                                width: 60.w,
                                decoration: ShapeDecoration(
                                  color: Colors.black,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(16),
                                  ),
                                ),
                                child: Image.asset("assets/g.png",
                                    width: 5.w, height: 4.h),
                              ),
                              SizedBox(
                                width: 15,
                              ),
                              Text(
                                'Emergency Bills',
                                style: GoogleFonts.poppins(
                                  textStyle: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 50.w,
                              ),
                              CircleAvatar(
                                radius: 14.r,
                                backgroundColor: Colors.grey,
                                child: CircleAvatar(
                                  radius: 13.r,
                                  backgroundColor: Colors.white,
                                  child: Icon(
                                    Icons.arrow_forward_ios,
                                    size: 20,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 15.h,
                    ),
                    Container(
                      width: 315.h,
                      height: 69.r,
                      decoration: ShapeDecoration(
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                          side: BorderSide(color: Colors.white24),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        shadows: [
                          BoxShadow(
                            color: Colors.grey,
                            offset: const Offset(
                              5.0,
                              5.0,
                            ),
                            blurRadius: 10.0.r,
                            spreadRadius: 2.0.r,
                          ),
                        ],
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 15),
                        child: Row(
                          children: [
                            Container(
                              height: 50.h,
                              width: 60.w,
                              decoration: ShapeDecoration(
                                color: Colors.black,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(16)),
                              ),
                              child: Image.asset("assets/g.png",
                                  width: 5.w, height: 4.h),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              "Food and Shoping",
                              style: GoogleFonts.poppins(
                                textStyle: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16.sp,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 40.w,
                            ),
                            CircleAvatar(
                              radius: 14.r,
                              backgroundColor: Colors.grey,
                              child: CircleAvatar(
                                radius: 13.r,
                                backgroundColor: Colors.white,
                                child: Icon(
                                  Icons.arrow_forward_ios,
                                  size: 20,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 15.h,
                    ),
                    Container(
                      width: 315.h,
                      height: 69.r,
                      decoration: ShapeDecoration(
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                          side: BorderSide(color: Colors.white24),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        shadows: [
                          BoxShadow(
                            color: Colors.grey,
                            offset: const Offset(
                              5.0,
                              5.0,
                            ),
                            blurRadius: 10.0,
                            spreadRadius: 2.0,
                          ),
                        ],
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 15),
                        child: Row(
                          children: [
                            Container(
                              height: 50.h,
                              width: 60.w,
                              decoration: ShapeDecoration(
                                  color: Colors.black,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(16))),
                              child: SizedBox(
                                width: 10.w,
                                height: 11.h,
                                child: SizedBox(
                                  width: 10.w,
                                  height: 11.h,
                                  child: Image.asset(
                                    "assets/g.png",
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 15.w,
                            ),
                            Text(
                              "Others",
                              style: GoogleFonts.poppins(
                                textStyle: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16.sp,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 125.w,
                            ),
                            CircleAvatar(
                              radius: 14.r,
                              backgroundColor: Colors.grey,
                              child: CircleAvatar(
                                radius: 13.r,
                                backgroundColor: Colors.white,
                                child: Icon(
                                  Icons.arrow_forward_ios,
                                  size: 20,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
// style: GoogleFonts.poppins(
// textStyle:
