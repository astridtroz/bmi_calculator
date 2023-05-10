import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/reusableCard.dart';
import 'package:flutter/material.dart';

class ResultsPage extends StatelessWidget {
  const ResultsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(
       title: Text('BMI CALCULATOR'),
     ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
         children :  [
           Text('YOUR RESULT',
             style: TextStyle(
               fontWeight: FontWeight.bold,
               fontSize: 30,
             ),),
           Container(
             decoration: BoxDecoration(
               color: Colors.blueGrey,
               borderRadius: BorderRadius.all(Radius.circular(15)),
             ),
             margin: EdgeInsets.all(20),

             height: 400,
             width: double.infinity,
             child: Column(
               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text('Normal',
                style: TextStyle(
                  color: Colors.lightGreenAccent,
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),),
               Text('BMI',
               style: TextStyle(
                 fontWeight: FontWeight.bold,
                 fontSize: 50,
               ),),
                Text('data'),

              ]
             ),

           ),
           Container(
             height: 60,
             width: double.infinity,
             color: Colors.pink.shade300,
             child: Center(
               child: Text('RECALCULATE',
               style: klargeButtonStyle,),
             ),
           )
         ]
      ),
    );
  }
}
