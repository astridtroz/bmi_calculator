import 'package:flutter/material.dart';
class iconContent extends StatelessWidget {
  const iconContent({ required this.i, required this.t});
  final IconData i;
  final String t;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(25.0),
      child: Column(

        children: [
          Icon(i,
            size: 80,),
          SizedBox(
            height: 15,
          ),
          Text(t,
            style: TextStyle(
                fontSize: 18,
                color: Color(0xFFfaf9fa)
            ),
          )
        ],
      ),
    );
  }
}

