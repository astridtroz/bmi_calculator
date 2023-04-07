import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'icon_content.dart';
import 'package:bmi_calculator/reusableCard.dart';
const bottomcontainerheight= 60.0;
const activeCardColor= Color(0xFF008080);
const bottomcontainercolor=Color(0xFFAA336A);
const inactiveCardColour= Color(0xFF014D4E);

enum GenderType{
  male,
  female,
  none,
}

 class InputPage extends StatefulWidget {
  const InputPage({super.key});

  @override
  _InputPageState createState() => _InputPageState();

}

 class _InputPageState extends State<InputPage> {

     GenderType selectedGender=GenderType.none;


  @override
  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(
        backgroundColor: activeCardColor,
        title: const Text('BMI CALCULATOR'),
      ),
      body:  Column(
        children: [
          Expanded(
            child: Row(
              children:[
                
                ReusableCard(
                    colour:(selectedGender==GenderType.male)?activeCardColor:inactiveCardColour,
                cardChild: const iconContent(i: FontAwesomeIcons.mars, t: 'MALE', ), onPressed: (){
                      setState(() {
                        selectedGender= GenderType.male;
                      });
                },
                ),
                ReusableCard(colour: (selectedGender==GenderType.female)?activeCardColor:inactiveCardColour,
                cardChild: const iconContent(i: FontAwesomeIcons.venus,
                t: 'FEMALE',), onPressed: (){
                  setState(() {
                    selectedGender=GenderType.female;
                  });
                  },),
      ]
            ),
          ),
          Expanded(
            child: Row(
              children: [Container(

                  margin: const EdgeInsets.all(15),
                  decoration: BoxDecoration(
                      color: activeCardColor,
                      borderRadius: BorderRadius.circular(10)
                  ),
                  height: 180,
                  width: 330,
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
            children:const [
            //  ReusableCard(colour: activeCardColor, ),
            //  ReusableCard(colour: activeCardColor,),
    ]
            ),
          ),
          Container(
            color:bottomcontainercolor,
            margin: const EdgeInsets.only(top: 10),
            width: double.infinity,
            height:bottomcontainerheight,
          )
        ],

      )
    );
  }


  

}

