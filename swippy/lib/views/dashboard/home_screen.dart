import 'package:flutter/material.dart';
import 'package:swippy/views/viewsUtil/gradient.dart';
import 'package:swippy/resources/util/asset_util.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        //Background Gradient
        SwippyGradient.dashboardGradientFull(),

        //top section
        Padding(
          padding: const EdgeInsets.only(top: 64, left: 32, right: 32),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //Header
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  //Profile
                  SizedBox(
                    width: 50,
                    height: 50,
                    child: DecoratedBox(
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                      ),
                      child: ClipOval(
                        child: Image.asset(AssetUtil.profileImg),
                      ),
                    ),
                  ),

                  //Menu
                  SizedBox(
                    width: 20,
                    height: 20,
                    child: DecoratedBox(
                      decoration: const BoxDecoration(
                        shape: BoxShape.rectangle,
                      ),
                      child: Image.asset(AssetUtil.menu),
                    ),
                  )
                ],
              ),

              //Body section
              const Padding(
                padding: EdgeInsets.only(
                  top: 16,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Location",
                      style: TextStyle(
                          fontSize: 20,
                          fontFamily: 'Poppins',
                          fontStyle: FontStyle.normal,
                          color: Color(0xff979797)),
                    ),
                    Text(
                      "London, UK",
                      style: TextStyle(
                          fontSize: 32,
                          fontFamily: 'CircularStd',
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.bold,
                          color: Color(0xff333333)),
                    ),
                  ],
                ),
              ),

              //StoryImpl
              const Row(
                children: [],
              )
            ],
          ),
        ),
      ],
    ));
  }
}
