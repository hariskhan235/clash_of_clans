import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:percent_indicator/percent_indicator.dart';

class ImageDetails extends StatefulWidget {
  final String image;
  final String title;
  final Color color;
  final String status;
  const ImageDetails({Key? key, required this.image, required this.title, required this.color,
  required this.status}) : super(key: key);

  @override
  State<ImageDetails> createState() => _ImageDetailsState();
}

class _ImageDetailsState extends State<ImageDetails> {
  final double progressValue = 0.7;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        iconTheme: const IconThemeData(
          color: Colors.white
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 1.sw,
              child: Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  Container(
                    height: 350.h,
                    width: double.infinity,
                margin: EdgeInsets.only(
                  bottom: 60.h,
                ),
                decoration: ShapeDecoration(
                  color: widget.color,
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20),
                    ),
                  )),

                  ),
                  Positioned(
                    top: 0,
                    bottom: 0.h,
                    right: 120.w,
                    child: Image.asset(
                      widget.image,
                      fit: BoxFit.contain,
                      height: 300.h,
                    ),
                  ),
                  



                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(

                  left: 100.w,bottom: 20.h),
              child: Row(
                children: [
                  Text(
                    widget.title,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18.sp,
                      fontFamily: 'Supercell-Magic Regular',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  SizedBox(
                    width: 20.w,
                  ),
                  CircularPercentIndicator(
                    radius: 30.r,
                    lineWidth: 5.w,
                    percent: 0.8,
                    center:  Text("80",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 12.sp,
                        fontFamily: 'Supercell-Magic Regular',
                        fontWeight: FontWeight.w400,
                      ),),
                    progressColor: Colors.green,
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 50.w
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      Row(
                        children: [
                          Image.asset("assets/images/level1.png"),
                          SizedBox(
                            width: 10.w,
                          ),
                          Text(
                            'Level 1',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 14.sp,
                              fontFamily: 'Supercell-Magic Regular',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 40.w,
                      ),
                      Row(
                        children: [
                          Image.asset("assets/images/melle.png"),
                          SizedBox(
                            width: 10.w,
                          ),
                          Text(
                           widget.status,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 14.sp,
                              fontFamily: 'Supercell-Magic Regular',
                              fontWeight: FontWeight.w400,
                            ),
                          )
                        ],
                      ),
                    ],
                  ),

                ],
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            Padding(
              padding: EdgeInsets.only(
                  left: 50.w
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      Row(
                        children: [
                          Image.asset("assets/images/dps.png"),
                          SizedBox(
                            width: 10.w,
                          ),
                          Text(
                            'DPS',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 14.sp,
                              fontFamily: 'Supercell-Magic Regular',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 60.w,
                      ),
                      Container(
                        width: 150.0, // Set the total width of your progress bar
                        height: 10.h, // Set the height of your progress bar
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0), // Optional: add rounded corners
                          gradient: const LinearGradient(
                            colors: [
                              Color(0xffFDCF2C), // Set the fill color of the progress bar
                              Colors.grey, // Set the remaining portion color
                            ],
                            stops: [0.2, 0.4],
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            ///elixir
            Padding(
              padding: EdgeInsets.only(
                  left: 50.w
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      Row(
                        children: [
                          Image.asset("assets/images/elixir.png"),
                          SizedBox(
                            width: 10.w,
                          ),
                          Text(
                            'Elixir',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 14.sp,
                              fontFamily: 'Supercell-Magic Regular',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 52.w,
                      ),
                      Container(
                        width: 150.0, // Set the total width of your progress bar
                        height: 10.h, // Set the height of your progress bar
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0), // Optional: add rounded corners
                          gradient: const LinearGradient(
                            colors: [
                             Color(0xFFD454C6),// Set the fill color of the progress bar
                              Colors.grey, // Set the remaining portion color
                            ],
                            stops: [0.2, 0.4],
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight,
                          ),
                        ),
                      ),
                    ],
                  ),

                ],
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            ///Health
            Padding(
              padding: EdgeInsets.only(
                  left: 50.w
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      Row(
                        children: [
                          Image.asset("assets/images/health.png"),
                          SizedBox(
                            width: 10.w,
                          ),
                          Text(
                            'Health',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 14.sp,
                              fontFamily: 'Supercell-Magic Regular',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 37.w,
                      ),
                      Container(
                        width: 150.0, // Set the total width of your progress bar
                        height: 10.h, // Set the height of your progress bar
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0), // Optional: add rounded corners
                          gradient: const LinearGradient(
                            colors: [
                              Color(0xFFD23C42),// Set the fill color of the progress bar
                              Colors.grey, // Set the remaining portion color
                            ],
                            stops: [0.2, 0.4],
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight,
                          ),
                        ),
                      )
                    ],
                  ),

                ],
              ),
            )

          ],
        ),
      )
    );
  }
}
