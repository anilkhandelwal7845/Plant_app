import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:plant_app/color/constant.dart';

class Btn extends StatelessWidget {
  final Function press;
  const Btn({super.key, required this.press});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 90,
      margin: EdgeInsets.only(top: 32, right: 10),
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            backgroundColor: kPrimearyColor, // background (button) color
            // foreground (text) color
          ),
          onPressed: () => press,
          child: Text("More")),
    );
  }
}
