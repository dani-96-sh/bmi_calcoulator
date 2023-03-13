import 'package:bmi_calcoulator/constant/constant.dart';
import 'package:flutter/material.dart';

class ShapeLeft extends StatelessWidget {
  final double width;
  const ShapeLeft({super.key, this.width = 0});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Text(
          'Negative index',
          style: TextStyle(
              fontWeight: FontWeight.w600, fontSize: 17, color: redline),
        ),
        SizedBox(
          width: 10,
        ),
        Container(
          width: width,
          height: 30,
          decoration: BoxDecoration(
            color: redline,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(10),
            ),
          ),
        ),
      ],
    );
  }
}
