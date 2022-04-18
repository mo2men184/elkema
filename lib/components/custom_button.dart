import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class CustomButton extends StatelessWidget {
  final Color color;
  final String text;
  final bool enabled;
  final Widget child;
  CustomButton({
    @required this.child,
    @required this.color,
    @required this.text,
    this.enabled = true,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40.w,
      width: 40.w,
      decoration: BoxDecoration(
        color: Colors.black.withOpacity(enabled ? 0.92 : 0.75),
        border: Border.all(
          width: 1.5,
          color: Colors.amberAccent.withOpacity(enabled ? 0.4 : 0.1),
        ),
        borderRadius: BorderRadius.circular(30),
      ),
      child: Center(
        child: enabled ? child : Container(),
      ),
    );
  }
}
