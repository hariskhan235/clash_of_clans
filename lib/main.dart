import 'package:clash_of_clans/Screens/HomeScreen/ImageDetails/image_details.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: (context,child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          theme: ThemeData(

            colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
            useMaterial3: true,
          ),
          home: const MyHomePage(title: 'Flutter Demo Home Page'),
        );
      }
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: true,
        title: Text(
          'Clash of Clans',
          style: TextStyle(
            color: Colors.white,
            fontSize: 21.sp,
            fontFamily: 'Supercell-Magic Regular',
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
          Container(
            width: 1.sw,
            height: 180.h,
            decoration: const BoxDecoration(
              image: DecorationImage(image:
              AssetImage("assets/images/image1.png"),
              fit: BoxFit.cover)
            ),
            child: Stack(
              children: [
                Positioned(
                    left:30.w,
                    top: 30.h,
                    child: Image.asset("assets/images/image2.png")),
              ],
            ),
          ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: EdgeInsets.only(
                bottom: 20.h,
              ),
              child: Stack(
                children: [
              GestureDetector(
                onTap:(){
                  Navigator.of(context).push(MaterialPageRoute(builder:
                  (context)=>const ImageDetails(image:
                  "assets/images/image5.png",
                      title: "Barbarian", color: Color(0xFFFFF4CF), status: 'Melee',)));
                },
                child: Container(
                  width: 140.w,
                  height: 180.h,
                  decoration: BoxDecoration(
                    color: const Color(0xFFFFF4CF),
                    borderRadius: BorderRadius.circular(20.r),
                  ),
                  margin: EdgeInsets.only(
                    top: 16.h,
                    left: 20.w,
                    bottom: 0.h
                  ),
                  padding: EdgeInsets.only(
                    bottom: 10.h,
                  ),
                  child: Stack(
                    children: [
                      Align(
                        alignment:Alignment.bottomCenter,
                        child: Text(
                          'Barbarian',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 12.sp,
                            fontFamily: 'Supercell-Magic Regular',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Image.asset("assets/images/image5.png",
              fit: BoxFit.cover,

           ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                top: 50.h,
              ),
              child: Stack(
                children: [
                  GestureDetector(
                    onTap:(){
                      Navigator.of(context).push(MaterialPageRoute(builder:
                          (context)=>const ImageDetails(image:
                      "assets/images/image4.png",
                        title: "Balloon", color:Color(0xFFFFBDB7), status: 'Ground',)));
                    },
                    child: Container(
                      width: 140.w,
                      height: 180.h,
                      decoration: BoxDecoration(
                        color: const Color(0xFFFFBDB7),
                        borderRadius: BorderRadius.circular(20.r),
                      ),
                      margin: EdgeInsets.only(
                        top: 16.h,
                        right: 20.w,
                      ),
                      padding: EdgeInsets.only(
                        bottom: 10.h,
                      ),
                      child: Stack(
                        children: [
                          Align(
                            alignment:Alignment.bottomCenter,
                            child: Text(
                              'Balloon',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 12.sp,
                                fontFamily: 'Supercell-Magic Regular',
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    right: 10.w,
                    child: Image.asset("assets/images/image4.png",
                      fit: BoxFit.cover,
                      ),
                  ),
                ],
              ),
            ),
          ],
        ),
            
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    bottom: 20.h,
                  ),
                  child: Stack(
                    children: [
                      GestureDetector(
                        onTap:(){
                          Navigator.of(context).push(MaterialPageRoute(builder:
                              (context)=>ImageDetails(image:
                          "assets/images/image3.png",
                            title: "Baby Dragon",  color: Color(0xFFC5FFC4), status: 'Aerial',)));
                        },
                        child: Container(
                          width: 140.w,
                          height: 180.h,
                          decoration: BoxDecoration(
                            color: Color(0xFFC5FFC4),
                            borderRadius: BorderRadius.circular(20.r),
                          ),
                          margin: EdgeInsets.only(
                            top: 16.h,
                            left: 20.w,
                          ),
                          padding: EdgeInsets.only(
                            bottom: 10.h,
                          ),
                          child: Stack(
                            children: [
                              Positioned(
                                bottom:20.h,
                                left: 15.w,
                                right: 0.w,
                                child: Text(
                                  'Baby Dragon',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 12.sp,
                                    fontFamily: 'Supercell-Magic Regular',
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        right: 5.w,
                        child: Image.asset("assets/images/image3.png",
                          fit: BoxFit.cover,

                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    top: 50.h,
                  ),
                  child: Stack(
                    children: [
                      GestureDetector(
                        onTap:(){
                          Navigator.of(context).push(MaterialPageRoute(builder:
                              (context)=>ImageDetails(image:
                          "assets/images/image6.png",
                            title: "Dragon", color: Color(0xFFC9CBFF), status: 'Aerial',)));
                        },
                        child: Container(
                          width: 140.w,
                          height: 180.h,
                          decoration: BoxDecoration(
                            color: Color(0xFFC9CBFF),
                            borderRadius: BorderRadius.circular(20.r),
                          ),
                          margin: EdgeInsets.only(
                            top: 16.h,
                            right: 20.w,
                          ),
                          padding: EdgeInsets.only(
                            bottom: 10.h,
                          ),
                          child: Stack(
                            children: [
                              Align(
                                alignment:Alignment.bottomCenter,
                                child: Text(
                                  'Dragon',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 12.sp,
                                    fontFamily: 'Supercell-Magic Regular',
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        top: 0.h,
                        left: 20.w,
                        child: Image.asset("assets/images/image6.png",
                          fit: BoxFit.cover,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 30.h,
            )
          ],
        ),
      ),
    );
  }
}
class ClashOfClan{
  final String image;
  final String title;

  ClashOfClan(this.image, this.title);
}

final titles = [
  ClashOfClan("assets/images/image3.png", "title"),
  ClashOfClan("assets/images/image4.png", "title"),
  ClashOfClan("assets/images/image5.png", "title"),
  ClashOfClan("assets/images/image6.png", "title"),
];