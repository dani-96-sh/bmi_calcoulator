import 'package:bmi_calcoulator/widgets/shape_left.dart';
import 'package:bmi_calcoulator/widgets/shape_right.dart';
import 'package:flutter/material.dart';

class HomeScreens extends StatefulWidget {
  const HomeScreens({super.key});
  @override
  State<HomeScreens> createState() => _HomeScreensState();
}

final weightcontroller = TextEditingController();
final heightcontroller = TextEditingController();

double ResultBMI = 0;
var ResultText = '';

double widthbad = 10;
double widthGood = 10;

class _HomeScreensState extends State<HomeScreens> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'dana'),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          resizeToAvoidBottomInset: false,
          appBar: AppBar(
            centerTitle: true,
            backgroundColor: Colors.amber,
            elevation: 0,
            title: Text(
              'What\'s Your BMI?',
              style: TextStyle(color: Colors.black, fontSize: 20),
            ),
          ),
          body: SafeArea(
            child: Column(
              children: [
                SizedBox(
                  height: 40,
                ),
                Row(
                  children: [
                    Expanded(
                      child: TextField(
                        controller: weightcontroller,
                        textAlign: TextAlign.center,
                        keyboardType: TextInputType.number,
                        style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.w500,
                            color: Colors.pink),
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Weight',
                            hintStyle:
                                TextStyle(color: Colors.pink.withOpacity(0.5))),
                      ),
                    ),
                    Expanded(
                      child: TextField(
                        controller: heightcontroller,
                        textAlign: TextAlign.center,
                        keyboardType: TextInputType.number,
                        style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.w500,
                            color: Colors.pink),
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Height',
                            hintStyle:
                                TextStyle(color: Colors.pink.withOpacity(0.5))),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                InkWell(
                  onTap: () {
                    final weight = double.parse(weightcontroller.text);
                    final height = double.parse(heightcontroller.text);

                    setState(() {
                      ResultBMI = weight / (height * height);
                      if (ResultBMI < 18.5) {
                        widthbad = 40;
                        widthGood = 40;
                        ResultText = 'Underweight';
                      } else if (18.5 <= ResultBMI && 25 >= ResultBMI) {
                        widthbad = 30;
                        widthGood = 250;
                        ResultText = 'HealthyWeight';
                      } else if (25 <= ResultBMI && 30 >= ResultBMI) {
                        widthbad = 250;
                        widthGood = 30;
                        ResultText = 'OverWeight';
                      } else if (30 <= ResultBMI) {
                        widthbad = 300;
                        widthGood = 30;
                        ResultText = ' Obesity';
                      } else {
                        ResultText = 'None';
                      }
                    });
                  },
                  child: Text(
                    'Calculate',
                    style: TextStyle(fontSize: 32, color: Colors.orange),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Text(
                  '${ResultBMI.toStringAsFixed(2)}',
                  style: TextStyle(fontSize: 32, color: Colors.orange),
                ),
                SizedBox(
                  height: 30,
                ),
                Text(
                  '$ResultText',
                  style: TextStyle(
                      fontSize: 32, color: Color.fromARGB(255, 0, 46, 131)),
                ),
                SizedBox(
                  height: 20,
                ),
                ShapeLeft(
                  width: widthbad,
                ),
                SizedBox(
                  height: 30,
                ),
                ShapeRight(
                  width: widthGood,
                )
              ],
            ),
          )),
    );
  }
}
