import 'package:bankloan/third.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Screen2 extends StatefulWidget {
  const Screen2({super.key});

  @override
  State<Screen2> createState() => _HomeState();
}

class _HomeState extends State<Screen2> {
  List<String> img = ["assets/a.png", "assets/b.png", "assets/c.png"];
  List<String> txt = ["Send Money", "Pay Bills", "Pay Merchants"];
  List<String> type = [
    "Send money to all networks and banks\n            right from your Pay Fast\n                        account.",
    "Pay Bills such as Electricity, Water bill, TV\n                     subscriptions etc.\n                 Buy airtime & Bundles.",
    "Even with insufficient balance, Pay by\n    Phone at Merchants with Pay Fast\n                         Accounts."
  ];

  int curentIndex = 0;
final CarouselController _controller =CarouselController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SafeArea(
          child: Column(
            children: [
              CarouselSlider.builder(carouselController: _controller
                ,
                itemCount: img.length,
                itemBuilder:
                    (BuildContext context, int itemIndex, int pageViewIndex) =>
                        Container(
                  child: Column(
                    children: [
                      SizedBox(
                          width: 300.w,
                          height: 300.h,
                          child: Image.asset(img[itemIndex])),
                      Padding(
                        padding: const EdgeInsets.only(left: 25),
                        child: Text(
                          txt[itemIndex],
                          style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                                color: Colors.black,
                                fontSize: 18.sp,
                                fontWeight: FontWeight.w700),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 30,top: 15),
                        child: Text(type[itemIndex],
                          style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                              color: Colors.black,
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w300,
                              letterSpacing: 0.06,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                options: CarouselOptions(
                  height: 500,
                  aspectRatio: 16 / 9,
                  viewportFraction: 1,
                  initialPage: 0,
                  enableInfiniteScroll: false,
                  reverse: false,
                  autoPlay:false,
                  autoPlayInterval: Duration(seconds: 3),onPageChanged: (index, reason){
                    setState(() {
                      curentIndex=index;
                    });
                },
                  autoPlayAnimationDuration: Duration(milliseconds: 800),
                  autoPlayCurve: Curves.fastOutSlowIn,
                  enlargeCenterPage: true,
                  enlargeFactor: 0.3,
                  scrollDirection: Axis.horizontal,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30),
                child: AnimatedSmoothIndicator(
                  activeIndex: curentIndex,
                  count: img.length,
                  effect: WormEffect(),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30),
                child: GestureDetector(onTap: (){
                  if(curentIndex==2){Navigator.of(context).push(MaterialPageRoute(builder: (_)=>Screen3()));

                  }else{
                    _controller.nextPage();
                  }

                },
                  child: Container(
                    width: 250.w,
                    height: 46.h,
                    decoration: ShapeDecoration(
                      color: Color(0xFFFF0083),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.r)),
                    ),
                    child: Center(
                      child: Text(
                        'Next',
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
      ),
    );
  }
}
