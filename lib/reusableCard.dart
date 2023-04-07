import 'package:flutter/material.dart';
class ReusableCard extends StatelessWidget {


  const ReusableCard({super.key,  required this.colour, required this.cardChild , required this.onPressed});
  final Color colour;
  final Widget cardChild;
  final Function onPressed;

  @override
  Widget build(BuildContext context) {

    return GestureDetector(
      onTap: onPressed(),
      child: Container(
        margin: const EdgeInsets.all(15),
        decoration: BoxDecoration(
            color: colour,
            borderRadius: BorderRadius.circular(10)
        ),
        height: 180,
        width: 150,
        child: cardChild,

      ),
    );

  }
}