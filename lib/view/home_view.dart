import 'package:elkhema/components/custom_button.dart';
import 'package:elkhema/view/about_view.dart';
import 'package:elkhema/view/menu_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_swiper_plus/flutter_swiper_plus.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';
import 'package:sizer/sizer.dart';
import 'dart:math' as math;

class HomeView extends StatelessWidget {
  final List<String> _images = [
    'assets/images/banner.jpg',
    'assets/images/location.jpg',
    'assets/images/logo.jpg',
    'assets/images/location2.jpg',
  ];

  final bool signedIn = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'الْخَيْمَــة',
          style: TextStyle(
            color: Colors.white,
            fontSize: 18.sp,
            fontWeight: FontWeight.w500,
          ),
        ),
        leading: Icon(
          Icons.star_rounded,
          color: signedIn ? Colors.amberAccent : Colors.black,
        ),
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/bg.jpg'),
              fit: BoxFit.cover,
              opacity: 0.6,
            ),
          ),
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: Container(
                    child: Swiper(
                      layout: SwiperLayout.TINDER,
                      customLayoutOption:
                          CustomLayoutOption(startIndex: -1, stateCount: 3)
                              .addRotate(
                                  [-45.0 / 180, 0.0, 45.0 / 180]).addTranslate([
                        Offset(-370.0, -40.0),
                        Offset(0.0, 0.0),
                        Offset(370.0, -40.0)
                      ]),
                      viewportFraction: 0.5,
                      scale: 0.6,
                      itemWidth: 100.w,
                      itemHeight: 30.h,
                      autoplay: false,
                      autoplayDelay: 400,
                      autoplayDisableOnInteraction: true,
                      containerHeight: 30.h,
                      containerWidth: 100.w,
                      itemBuilder: (context, index) {
                        return Container(
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage(_images[index]),
                                fit: BoxFit.cover,
                              ),
                              borderRadius: BorderRadius.circular(30),
                              border: Border.all(
                                color: Colors.black.withOpacity(0.35),
                                width: 3,
                              )),
                          child: Center(
                            child: Text(
                              "$index",
                              style: TextStyle(
                                color: Colors.transparent,
                              ),
                            ),
                          ),
                        );
                      },
                      itemCount: 4,
                    ),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.black.withOpacity(0.2),
                      borderRadius: BorderRadius.circular(40),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              SizedBox(
                                height: 10.w,
                              ),
                              Expanded(
                                  child: GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: ((context) => MenuView()),
                                    ),
                                  );
                                },
                                child: CustomButton(
                                  color: Colors.red,
                                  text: '1',
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      Icon(
                                        LineAwesomeIcons.utensils,
                                        size: 45.sp,
                                        color: Colors.amberAccent,
                                      ),
                                      Text(
                                        'المنيو',
                                        style: TextStyle(
                                          color: Colors.amberAccent,
                                          fontSize: 15.sp,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              )),
                              SizedBox(
                                height: 10.w,
                              ),
                              Expanded(
                                child: CustomButton(
                                  color: Colors.blue,
                                  text: '2',
                                  enabled: signedIn,
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      Transform(
                                        alignment: Alignment.center,
                                        transform: Matrix4.rotationY(math.pi),
                                        child: Icon(
                                          LineAwesomeIcons.alternate_sign_out,
                                          size: 45.sp,
                                          color: Colors.amberAccent,
                                        ),
                                      ),
                                      Text(
                                        'خروج',
                                        style: TextStyle(
                                          color: Colors.amberAccent,
                                          fontSize: 15.sp,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 10.w,
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              SizedBox(
                                height: 10.w,
                              ),
                              Expanded(
                                child: CustomButton(
                                  color: Colors.green,
                                  text: '3',
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      Icon(
                                        LineAwesomeIcons
                                            .calendar_with_day_focus,
                                        size: 45.sp,
                                        color: Colors.amberAccent,
                                      ),
                                      Text(
                                        'حجز',
                                        style: TextStyle(
                                          color: Colors.amberAccent,
                                          fontSize: 15.sp,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 10.w,
                              ),
                              Expanded(
                                child: GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => AboutView(),
                                      ),
                                    );
                                  },
                                  child: CustomButton(
                                    color: Colors.yellow,
                                    text: '4',
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: [
                                        Icon(
                                          LineAwesomeIcons.campground,
                                          size: 45.sp,
                                          color: Colors.amberAccent,
                                        ),
                                        Text(
                                          'عن الْخَيْمَــة',
                                          style: TextStyle(
                                            color: Colors.amberAccent,
                                            fontSize: 15.sp,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 10.w,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Text(
                  'Made with  💖  by MO\'',
                  style: TextStyle(
                    color: Colors.amberAccent,
                    fontSize: 8.sp,
                  ),
                ),
                Text(
                  'instagram.com/dev.mo2',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 7.sp,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
