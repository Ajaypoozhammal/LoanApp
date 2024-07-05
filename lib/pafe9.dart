import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class Screen9 extends StatefulWidget {
  const Screen9({super.key});

  @override
  State<Screen9> createState() => _Screen9State();
}

class _Screen9State extends State<Screen9> {
  TextEditingController controller = TextEditingController();

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
                              context: context,
                              isScrollControlled: true,
                              builder: (BuildContext Context) {
                                return SizedBox(
                                  width: 600.w,
                                  height: 400.h,
                                  child: DefaultTabController(
                                    length: 2,
                                    child: Padding(
                                      padding: const EdgeInsets.only(
                                          top: 30, left: 10),
                                      child: Column(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(),
                                            child: Row(
                                              children: [
                                                Text(
                                                  'Repay Loan',
                                                  style: GoogleFonts.poppins(
                                                    textStyle: TextStyle(
                                                      color: Colors.black,
                                                      fontSize: 20.sp,
                                                      fontWeight:
                                                          FontWeight.w700,
                                                    ),
                                                  ),
                                                ),
                                                SizedBox(width: 160.w),
                                                TextButton(
                                                  onPressed: () {
                                                    Navigator.of(context).pop();
                                                  },
                                                  child: Icon(
                                                    Icons.close,
                                                    size: 25,
                                                  ),
                                                )
                                              ],
                                            ),
                                          ),
                                          SizedBox(
                                            height: 10.h,
                                          ),
                                          Container(
                                            width: 300.w,
                                            height: 50.h,
                                            decoration: ShapeDecoration(
                                                color: Colors.redAccent,
                                                shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            30))),
                                            child: TabBar(
                                                unselectedLabelColor:
                                                    Colors.black,
                                                indicatorSize:
                                                    TabBarIndicatorSize.tab,
                                                dividerHeight: 0,
                                                indicator: BoxDecoration(
                                                  color: Color(0xffDD323F),
                                                  borderRadius:
                                                      BorderRadius.circular(20),
                                                ),
                                                labelColor: Colors.white,
                                                dividerColor: Colors.yellow,
                                                tabs: [
                                                  Tab(
                                                    child:
                                                        Text("Full Repayment"),
                                                  ),
                                                  Tab(
                                                    child: Text(
                                                        "Partial Repayment"),
                                                  )
                                                ]),
                                          ),
                                          SizedBox(
                                            height: 40.h,
                                          ),
                                          SizedBox(
                                            height: 200.h,
                                            child: TabBarView(
                                              children: [
                                                Container(
                                                  height: 600.h,
                                                  color: Colors.white10,
                                                  child: Column(
                                                    children: [
                                                      Text(
                                                        'Repay your loan today and take another one immediately.',
                                                        textAlign:
                                                            TextAlign.center,
                                                        style:
                                                            GoogleFonts.poppins(
                                                          textStyle: TextStyle(
                                                            color: Color(
                                                                0xFF959595),
                                                            fontSize: 12.sp,
                                                            fontWeight:
                                                                FontWeight.w400,
                                                            letterSpacing: 0.40,
                                                          ),
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                .only(
                                                                right: 180,
                                                                top: 30),
                                                        child: Text(
                                                          'You currently owe',
                                                          style: GoogleFonts
                                                              .poppins(
                                                            textStyle:
                                                                TextStyle(
                                                              color:
                                                                  Colors.black,
                                                              fontSize: 12.sp,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500,
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                .only(
                                                                right: 180,
                                                                top: 7),
                                                        child: Text(
                                                          '\$10,050.00',
                                                          style: GoogleFonts
                                                              .poppins(
                                                            textStyle:
                                                                TextStyle(
                                                              color:
                                                                  Colors.black,
                                                              fontSize: 24.sp,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w600,
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                      SizedBox(
                                                        height: 20.h,
                                                      ),
                                                      Container(
                                                        width: 250.w,
                                                        height: 46.h,
                                                        decoration:
                                                            ShapeDecoration(
                                                          color:
                                                              Color(0xFFFF0083),
                                                          shape: RoundedRectangleBorder(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          20.r)),
                                                        ),
                                                        child: Center(
                                                          child: TextButton(
                                                            onPressed: () {
                                                              showModalBottomSheet(
                                                                isScrollControlled:
                                                                    true,
                                                                context:
                                                                    context,
                                                                builder:
                                                                    (BuildContext) {
                                                                  return SizedBox(
                                                                    width:
                                                                        400.w,
                                                                    height:
                                                                        500.h,
                                                                    child:
                                                                        Column(
                                                                      children: [
                                                                        Padding(
                                                                          padding: const EdgeInsets
                                                                              .only(
                                                                              top: 45),
                                                                          child:
                                                                              Text(
                                                                            'That was way to easy!',
                                                                            style:
                                                                                GoogleFonts.poppins(
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
                                                                          height:
                                                                              10.h,
                                                                        ),
                                                                        Text(
                                                                          'Congratulations!',
                                                                          style:
                                                                              GoogleFonts.poppins(
                                                                            textStyle:
                                                                                TextStyle(
                                                                              color: Color(0xFF1F1F1F),
                                                                              fontSize: 24.sp,
                                                                              fontWeight: FontWeight.w700,
                                                                            ),
                                                                          ),
                                                                        ),
                                                                        SizedBox(
                                                                          height:
                                                                              15.h,
                                                                        ),
                                                                        CircleAvatar(
                                                                          backgroundColor:
                                                                              Color(0xFFC5C5C5),
                                                                          radius:
                                                                              40.r,
                                                                          child:
                                                                              Icon(
                                                                            Icons.done,
                                                                            color:
                                                                                CupertinoColors.activeGreen,
                                                                            size:
                                                                                80,
                                                                          ),
                                                                        ),
                                                                        SizedBox(
                                                                          height:
                                                                              15.h,
                                                                        ),
                                                                        Text(
                                                                          'Transaction Summary',
                                                                          style:
                                                                              GoogleFonts.poppins(
                                                                            textStyle:
                                                                                TextStyle(
                                                                              color: Colors.black,
                                                                              fontSize: 17.sp,
                                                                              fontWeight: FontWeight.w600,
                                                                              letterSpacing: 0.04,
                                                                            ),
                                                                          ),
                                                                        ),
                                                                        SizedBox(
                                                                          height:
                                                                              15.h,
                                                                        ),
                                                                        Text(
                                                                          '\$10,050.00',
                                                                          style:
                                                                              GoogleFonts.poppins(
                                                                            textStyle:
                                                                                TextStyle(
                                                                              color: Colors.black,
                                                                              fontSize: 24.sp,
                                                                              fontWeight: FontWeight.w600,
                                                                            ),
                                                                          ),
                                                                        ),
                                                                        SizedBox(
                                                                          height:
                                                                              16.h,
                                                                        ),
                                                                        Text(
                                                                          'Your Loan has been fully\nPaid',
                                                                          textAlign:
                                                                              TextAlign.center,
                                                                          style:
                                                                              GoogleFonts.poppins(
                                                                            textStyle:
                                                                                TextStyle(
                                                                              color: Color(0xFF1F1F1F),
                                                                              fontSize: 16.sp,
                                                                              fontWeight: FontWeight.w700,
                                                                            ),
                                                                          ),
                                                                        ),
                                                                        SizedBox(
                                                                            height:
                                                                                30.h),
                                                                        Container(
                                                                          width:
                                                                              250.w,
                                                                          height:
                                                                              46.h,
                                                                          decoration:
                                                                              ShapeDecoration(
                                                                            color:
                                                                                Color(0xFFFF0083),
                                                                            shape:
                                                                                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.r)),
                                                                          ),
                                                                          child:
                                                                              Center(
                                                                            child:
                                                                                TextButton(
                                                                              onPressed: () {
                                                                                Navigator.of(context).push((MaterialPageRoute(builder: (_) => Screen9())));
                                                                              },
                                                                              child: Text(
                                                                                'Okey',
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
                                                                },
                                                              );
                                                            },
                                                            child: Text(
                                                              'Continue',
                                                              style: GoogleFonts
                                                                  .poppins(
                                                                textStyle:
                                                                    TextStyle(
                                                                  color: Color(
                                                                      0xFFFFF2F2),
                                                                  fontSize:
                                                                      18.sp,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600,
                                                                  letterSpacing:
                                                                      0.06,
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                Column(
                                                  children: [
                                                    Container(
                                                      color:
                                                          Colors.white10,
                                                      height: 200.h,
                                                      child: Column(
                                                        children: [
                                                          Text(
                                                            'Repay your loan today and take another one immediately.',
                                                            textAlign: TextAlign
                                                                .center,
                                                            style: GoogleFonts
                                                                .poppins(
                                                              textStyle:
                                                                  TextStyle(
                                                                color: Color(
                                                                    0xFF959595),
                                                                fontSize: 12.sp,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w400,
                                                                letterSpacing:
                                                                    0.40,
                                                              ),
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding:
                                                                const EdgeInsets
                                                                    .only(
                                                                    top: 30,
                                                                    left: 20,
                                                                    right: 20),
                                                            child: TextField(
                                                              controller:
                                                                  controller,
                                                              decoration: InputDecoration(
                                                                  border: OutlineInputBorder(
                                                                      borderRadius:
                                                                          BorderRadius.circular(20
                                                                              .r)),
                                                                  labelText:
                                                                      "Enter amount",
                                                                  hintText:
                                                                      '\$'),
                                                            ),
                                                          ),
                                                          SizedBox(
                                                            height: 20.h,
                                                          ),
                                                          Container(
                                                            width: 250.w,
                                                            height: 46.h,
                                                            decoration:
                                                                ShapeDecoration(
                                                              color: Color(
                                                                  0xFFFF0083),
                                                              shape: RoundedRectangleBorder(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              20.r)),
                                                            ),
                                                            child: Center(
                                                              child: TextButton(
                                                                onPressed: () {
                                                                  showModalBottomSheet(
                                                                      isScrollControlled:
                                                                          true,
                                                                      context:
                                                                          context,
                                                                      builder:
                                                                          (BuildContext) {
                                                                        return SizedBox(
                                                                          width:
                                                                              400.w,
                                                                          height:
                                                                              500.h,
                                                                          child:
                                                                          Column(
                                                                            children: [
                                                                              Padding(
                                                                                padding: const EdgeInsets
                                                                                    .only(
                                                                                    top: 45),
                                                                                child:
                                                                                Text(
                                                                                  'That was way to easy!',
                                                                                  style:
                                                                                  GoogleFonts.poppins(
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
                                                                                height:
                                                                                10.h,
                                                                              ),
                                                                              Text(
                                                                                'Congratulations!',
                                                                                style:
                                                                                GoogleFonts.poppins(
                                                                                  textStyle:
                                                                                  TextStyle(
                                                                                    color: Color(0xFF1F1F1F),
                                                                                    fontSize: 24.sp,
                                                                                    fontWeight: FontWeight.w700,
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                              SizedBox(
                                                                                height:
                                                                                15.h,
                                                                              ),
                                                                              CircleAvatar(
                                                                                backgroundColor:
                                                                                Color(0xFFC5C5C5),
                                                                                radius:
                                                                                40.r,
                                                                                child:
                                                                                Icon(
                                                                                  Icons.done,
                                                                                  color:
                                                                                  CupertinoColors.activeGreen,
                                                                                  size:
                                                                                  80,
                                                                                ),
                                                                              ),
                                                                              SizedBox(
                                                                                height:
                                                                                15.h,
                                                                              ),
                                                                              Text(
                                                                                'Transaction Summary',
                                                                                style:
                                                                                GoogleFonts.poppins(
                                                                                  textStyle:
                                                                                  TextStyle(
                                                                                    color: Colors.black,
                                                                                    fontSize: 17.sp,
                                                                                    fontWeight: FontWeight.w600,
                                                                                    letterSpacing: 0.04,
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                              SizedBox(
                                                                                height:
                                                                                15.h,
                                                                              ),
                                                                              Text(
                                                                                '\$10,050.00',
                                                                                style:
                                                                                GoogleFonts.poppins(
                                                                                  textStyle:
                                                                                  TextStyle(
                                                                                    color: Colors.black,
                                                                                    fontSize: 24.sp,
                                                                                    fontWeight: FontWeight.w600,
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                              SizedBox(
                                                                                height:
                                                                                16.h,
                                                                              ),
                                                                              Text(
                                                                                'Your Loan has been fully\nPaid',
                                                                                textAlign:
                                                                                TextAlign.center,
                                                                                style:
                                                                                GoogleFonts.poppins(
                                                                                  textStyle:
                                                                                  TextStyle(
                                                                                    color: Color(0xFF1F1F1F),
                                                                                    fontSize: 16.sp,
                                                                                    fontWeight: FontWeight.w700,
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                              SizedBox(
                                                                                  height:
                                                                                  30.h),
                                                                              Container(
                                                                                width:
                                                                                250.w,
                                                                                height:
                                                                                46.h,
                                                                                decoration:
                                                                                ShapeDecoration(
                                                                                  color:
                                                                                  Color(0xFFFF0083),
                                                                                  shape:
                                                                                  RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.r)),
                                                                                ),
                                                                                child:
                                                                                Center(
                                                                                  child:
                                                                                  TextButton(
                                                                                    onPressed: () {
                                                                                      Navigator.of(context).push((MaterialPageRoute(builder: (_) => Screen9())));
                                                                                    },
                                                                                    child: Text(
                                                                                      'Okey',
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
                                                                      },
                                                                  );
                                                                },
                                                                child: Text(
                                                                  'Continue',
                                                                  style: GoogleFonts
                                                                      .poppins(
                                                                    textStyle:
                                                                        TextStyle(
                                                                      color: Color(
                                                                          0xFFFFF2F2),
                                                                      fontSize:
                                                                          18.sp,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w600,
                                                                      letterSpacing:
                                                                          0.06,
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ],
                                                )
                                              ],
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                );
                              },
                            );
                          },
                          child: CircleAvatar(
                            radius: 20.r,
                            backgroundColor: Color(0xffFF0083),
                            child: Icon(
                              Icons.arrow_forward,
                              size: 30,
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
            Padding(
              padding: const EdgeInsets.only(top: 50),
              child: Container(
                height: 350.h,
                width: 500.w,
                decoration: ShapeDecoration(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(20.r),
                            topLeft: Radius.circular(20.r)))),
                child: Padding(
                  padding: const EdgeInsets.only(top: 30, left: 20),
                  child: Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
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
                          SizedBox(
                            height: 20.h,
                          ),
                          Text('Mini-Statement',
                              style: GoogleFonts.poppins(
                                textStyle: TextStyle(
                                  color: Color(0xFF707070),
                                  fontSize: 15.sp,
                                  fontWeight: FontWeight.w400,
                                ),
                              )),
                          SizedBox(
                            height: 10.h,
                          ),
                          Text('LoanDisbursement',
                              style: GoogleFonts.poppins(
                                textStyle: TextStyle(
                                  color: Colors.black,
                                  fontSize: 15.sp,
                                  fontWeight: FontWeight.w400,
                                ),
                              )),
                          SizedBox(
                            height: 5.h,
                          ),
                          Text('2022-9-12',
                              style: GoogleFonts.poppins(
                                textStyle: TextStyle(
                                  color: Color(0xFF707070),
                                  fontSize: 15.sp,
                                  fontWeight: FontWeight.w400,
                                ),
                              )),
                          SizedBox(
                            height: 10.h,
                          ),
                          Text(
                            'Withdraw to bank',
                            style: GoogleFonts.poppins(
                              textStyle: TextStyle(
                                color: Colors.black,
                                fontSize: 15.sp,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 5.h,
                          ),
                          Text(
                            '2022-9-12',
                            style: GoogleFonts.poppins(
                              textStyle: TextStyle(
                                color: Color(0xFF707070),
                                fontSize: 15.sp,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10.h,
                          ),
                          Text(
                            'Loan Repayment',
                            style: GoogleFonts.poppins(
                              textStyle: TextStyle(
                                color: Colors.black,
                                fontSize: 15.sp,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 5.h,
                          ),
                          Text(
                            '2022-9-12',
                            style: GoogleFonts.poppins(
                              textStyle: TextStyle(
                                color: Color(0xFF707070),
                                fontSize: 15.sp,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10.h,
                          ),
                          Text(
                            'Loan Repayment Fees',
                            style: GoogleFonts.poppins(
                              textStyle: TextStyle(
                                color: Colors.black,
                                fontSize: 15.sp,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 5.h,
                          ),
                          Text(
                            '2022-9-12',
                            style: GoogleFonts.poppins(
                              textStyle: TextStyle(
                                color: Color(0xFF707070),
                                fontSize: 15.sp,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 50.w,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 5),
                            child: Text(
                              'See All',
                              style: GoogleFonts.poppins(
                                textStyle: TextStyle(
                                  color: Colors.red,
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 60.h,
                          ),
                          Text(
                            '\$10,050.00',
                            style: GoogleFonts.poppins(
                              textStyle: TextStyle(
                                color: Color(0xFF53D258),
                                fontSize: 16.sp,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 40.h,
                          ),
                          Text(
                            '-\$10,050.00',
                            style: GoogleFonts.poppins(
                              textStyle: TextStyle(
                                color: Color(0xFFE25C5C),
                                fontSize: 16.sp,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 30.h,
                          ),
                          Text(
                            '\$3,000.00',
                            style: GoogleFonts.poppins(
                              textStyle: TextStyle(
                                color: Color(0xFF53D258),
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 40.h,
                          ),
                          Text(
                            '-\$32.00',
                            style: GoogleFonts.poppins(
                              textStyle: TextStyle(
                                color: Color(0xFFE25C5C),
                                fontSize: 16.sp,
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          )
                        ],
                      ),
                    ],
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
