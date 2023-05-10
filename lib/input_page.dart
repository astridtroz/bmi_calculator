import 'package:bmi_calculator/result_page.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'icon_content.dart';
import 'package:bmi_calculator/reusableCard.dart';
import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/result_page.dart';

enum GenderType{
  male,
  female,
  none,
}

 class InputPage extends StatefulWidget {
  const InputPage({super.key});

  @override
  InputPageState createState() => InputPageState();

}

 class InputPageState extends State<InputPage> {
      int height=180;
      int weight=60;
      int age=18;
     GenderType selectedGender=GenderType.none;


  @override
  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(
        backgroundColor: kactiveCardColor,
        title: const Text('BMI CALCULATOR'),
      ),
      body:  Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Row(
              children:[

                GestureDetector(
                  onTap: (){
                    setState(() {
                      selectedGender= GenderType.male;
                    });
                  },
                  child: ReusableCard(
                      colour:(selectedGender==GenderType.male)?kactiveCardColor:kinactiveCardColour,
                  cardChild: const iconContent(i: FontAwesomeIcons.mars, t: 'MALE', ),
                  ),
                ),
                GestureDetector(
                  onTap: (){
                    setState(() {
                      selectedGender= GenderType.female;
                    });
                  },
                  child: ReusableCard(colour: (selectedGender==GenderType.female)?kactiveCardColor:kinactiveCardColour,
                  cardChild: const iconContent(i: FontAwesomeIcons.venus,
                  t: 'FEMALE',)),
                ),
      ]
            ),
          ),
          Expanded(
            child: ReusableCard(
              colour: kactiveCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.center,

                children: [const Text('HEIGHT',
                style: klabelTextStyle),
                Row(

                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.baseline,
                  textBaseline: TextBaseline.alphabetic,
                  children:  [
                    Text(height.toString(),
                    style: kboldTextStyle),
                    const Text('cm',
                    ),
                  ],
                ),
                  SliderTheme(

                    data: SliderTheme.of(context).copyWith(

                      thumbShape: const RoundSliderThumbShape(enabledThumbRadius: 15),
                      overlayShape: const RoundSliderOverlayShape( overlayRadius: 20,

                      ),


                    ),

                    child: Slider(value: height.toDouble(),
                        min: 120.0,
                        max:220.0,
                        activeColor: const Color(0xFFFFFFFF),
                        inactiveColor: const Color(0xFF8D8E98),
                        thumbColor: const Color(0xFFFFFFFF),

                        onChanged: (double newValue){
                          setState(() {
                            height= newValue.round();
                          });
                        }),
                  )
                ],
              ),
            )
          ),



          Expanded(
            child: Row(
            children: [
              ReusableCard(colour: kactiveCardColor, cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('WEIGHT',
                  style: klabelTextStyle,),
                  Text(weight.toString(),
                  style: kboldTextStyle,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children:[
                     RoundIconButton(icon: FontAwesomeIcons.minus, onPressed:(){
                       setState(() {
                         weight--;
                       });
                     },
                     ),
                      SizedBox(width: 10,),
                     RoundIconButton(icon: FontAwesomeIcons.plus, onPressed:(){
                   setState(() {
                   weight++;});
                 },),
                    ]
                  ),
                ],
              ),
              ),
              ReusableCard(colour: kactiveCardColor, cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('HEIGHT',
                  style: klabelTextStyle,),
                  Text(age.toString(),
                  style: kboldTextStyle,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                    RoundIconButton(icon: FontAwesomeIcons.minus, onPressed:() {setState(() {
                      age--;
                    });}
                      ),
                    SizedBox(
                      width: 10 ,
                    ),
                    RoundIconButton(icon: FontAwesomeIcons.plus, onPressed: () {setState(() {
                    age++;
                    });})
                  ],)
                ],
              )),
    ]
            ),
          ),
          GestureDetector(
            onTap: (){
             Navigator.push(context, MaterialPageRoute(builder: (context)=> ResultsPage())
              );
            },
            child: Container(
              padding: EdgeInsets.only(bottom: 20),
              child: Center(
                child: Text('CALCULATE',
                style: klargeButtonStyle,),
              ),
              color:kbottomcontainercolor,
              margin: const EdgeInsets.only(top: 10),
              width: double.infinity,
              height:kbottomcontainerheight,
            ),
          )
        ],

      )
    );
  }
}

class RoundIconButton extends StatelessWidget {

   RoundIconButton({required this.icon, required this.onPressed});

   final IconData icon;
   final void Function()? onPressed;


  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      constraints: BoxConstraints.tightFor(
        width: 56,
        height: 56,

      ),

      shape: CircleBorder(),
      fillColor:Colors.white54,
      elevation: 20 ,
      onPressed: onPressed,
      child: Icon(icon),
    );
  }
}

