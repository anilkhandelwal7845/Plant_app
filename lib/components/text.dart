import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:plant_app/color/constant.dart';

class MainText extends StatelessWidget {
  final String text;
  const MainText({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          margin: const EdgeInsets.only(
            top: 30,
          ),
          height: 24,
          child: Stack(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Text(
                  text,
                  style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
              Positioned(
                top: 0,
                bottom: 0,
                left: 1,
                right: 0,
                child: Container(
                  margin: const EdgeInsets.only(left: 15, top: 20),
                  height: 2,
                  decoration: BoxDecoration(color: kPrimearyColor.withOpacity(0.2)),
                ),
              )
            ],
          ),
        ),
     
     
      ],
    );
  }
}
