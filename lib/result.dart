import 'package:flutter/material.dart';
class Result extends StatelessWidget {
  //const Result({super.key});

  final double bmi;
  Result({required this.bmi});
  var bgColor=Colors.indigo.shade200;

  String _getBMICategory(double bmi) {
    if (bmi < 18.5)
      return "Underweight";
    else if (bmi >= 18.5 && bmi <= 24.9)
      return "Normal weight";
    else if (bmi >= 25 && bmi <= 29.9)
      return "Overweight";
    else
      return "Obese";
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: bgColor,
        child: Center(
          child: Container(
            width: 300,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text("Your BMI is ${bmi.toStringAsFixed(4)}",style: TextStyle(fontSize: 30,color: Colors.white),),
                SizedBox(height: 20),
                Text(
                  _getBMICategory(bmi),
                  style: TextStyle(fontSize: 30,color: Colors.white,),
                ),
              ],
            ),
          ),
        ),
      ),


    );
  }
}
