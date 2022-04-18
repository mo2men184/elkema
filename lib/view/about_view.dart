import 'package:flutter/material.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';
import 'package:sizer/sizer.dart';
import 'dart:math' as math;

class AboutView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'عن الْخَيْمَــة',
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
      body: SafeArea(
        child: Container(
          child: Column(
            children: [
              Expanded(
                flex: 2,
                child: Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/images/logo.jpg'),
                        fit: BoxFit.cover),
                  ),
                ),
              ),
              SizedBox(
                height: 2.h,
              ),
              Expanded(
                flex: 5,
                child: Container(
                  padding: EdgeInsets.all(5),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'أول خيمة رمضانية بديرب نجم',
                        style: TextStyle(
                          color: Colors.redAccent,
                          fontSize: 20.sp,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 3.h,
                      ),
                      Text(
                        '''
افراد وعائلات يعني هتلم صحابك وحبايبك 
و هتتسحر عندنا وخدمة علي أعلي مستوي
وعاملين اماكن تتصور فيها
وامكانية حجز المكان لأعياد الميلاد والمناسبات
وامكانية حجز المكان لعزومات رمضان
ومسلسلات رمضان والماتشات
هتشوفوهم عندنا مع اروق مشروب والقاعدة العربي
''',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15.sp,
                        ),
                        textAlign: TextAlign.center,
                        textDirection: TextDirection.rtl,
                      ),
                      SizedBox(
                        height: 5.h,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            LineAwesomeIcons.facebook,
                            color: Colors.blue,
                            size: 20.sp,
                          ),
                          Icon(
                            LineAwesomeIcons.instagram,
                            color: Colors.pinkAccent.shade700,
                            size: 20.sp,
                          ),
                          Text(
                            ' |  @elkhema.deyarbnegm',
                            style:
                                TextStyle(color: Colors.white, fontSize: 15.sp),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 3.h,
                      ),
                      Text(
                        '📍اخر شارع كافيه لاتشري ومطعم عالطاسه امام المعهد الديني بنين وهايبر A2Z اوصل هناك هتلاقينا',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 12.sp,
                        ),
                        textDirection: TextDirection.rtl,
                        textAlign: TextAlign.center,
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
    );
  }
}
