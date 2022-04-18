import 'package:flutter/material.dart';
import 'package:flutter_swiper_plus/flutter_swiper_plus.dart';
import 'package:sizer/sizer.dart';
import 'dart:math' as math;

class MenuView extends StatelessWidget {
  final List<String> _images = [
    'assets/images/menu1.png',
    'assets/images/menu2.png',
    'assets/images/menu3.png',
    'assets/images/menu4.png',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'المنيو',
          style: TextStyle(
            color: Colors.white,
            fontSize: 18.sp,
            fontWeight: FontWeight.w500,
          ),
        ),
        leading: Container(),
        actions: [
          GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Transform(
              alignment: Alignment.center,
              transform: Matrix4.rotationY(math.pi),
              child: Icon(Icons.arrow_back_ios_new_outlined),
            ),
          )
        ],
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),

      // -----------

      body: SafeArea(
        child: Container(
          child: Swiper(
            layout: SwiperLayout.TINDER,
            customLayoutOption:
                CustomLayoutOption(startIndex: -1, stateCount: 3)
                    .addRotate([-45.0 / 180, 0.0, 45.0 / 180]).addTranslate([
              Offset(-370.0, -40.0),
              Offset(0.0, 0.0),
              Offset(370.0, -40.0)
            ]),
            viewportFraction: 0.5,
            scale: 0.6,
            itemWidth: 100.w,
            itemHeight: 90.h,
            autoplay: false,
            autoplayDelay: 400,
            autoplayDisableOnInteraction: true,
            containerHeight: 100.h,
            containerWidth: 90.w,
            scrollDirection: Axis.vertical,
            itemBuilder: (context, index) {
              return Container(
                decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(_images[index]),
                      fit: BoxFit.fill,
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
    );
  }
}
