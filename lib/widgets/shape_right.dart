import 'package:bmi_calcoulator/constant/constant.dart';
import 'package:flutter/material.dart';

class ShapeRight extends StatelessWidget {
  final double width;
  const ShapeRight({super.key, this.width = 0});

  @override
  Widget build(BuildContext context) {
    return getbodies();
  }

  Widget getbodies() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          width: width,
          height: 30,
          decoration: BoxDecoration(
            color: greenline,
            borderRadius: BorderRadius.only(bottomRight: Radius.circular(10)),
          ),
        ),
        SizedBox(
          width: 10,
        ),
        Text(
          'Positive index',
          style: TextStyle(
              fontWeight: FontWeight.w600, fontSize: 17, color: greenline),
        )
      ],
    );
  }
}
