import 'package:bmi_calcoulator/screens/home_screens.dart';

import 'package:flutter/material.dart';

void main() {
  runApp(Bmi_calcoulator());
}

class Bmi_calcoulator extends StatefulWidget {
  const Bmi_calcoulator({super.key});

  @override
  State<Bmi_calcoulator> createState() => _Bmi_calcoulatorState();
}

class _Bmi_calcoulatorState extends State<Bmi_calcoulator> {
  @override
  Widget build(BuildContext context) {
    return HomeScreens();
  }
}
