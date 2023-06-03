import 'package:flutter/material.dart';
import 'package:plant_app/color/constant.dart';

class PlantCard extends StatelessWidget {
  final String image, title, country;
  final int price;
  final Function press;
  const PlantCard(
      {super.key,
      required this.country,
      required this.image,
      required this.title,
      required this.price,
      required this.press});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        left: 10,
        right: 5,
        top: 20,
      ),
      height: MediaQuery.of(context).size.height /3,
      width: MediaQuery.of(context).size.width / 3,

      // color: Colors.red,
      child: Column(
        children: [
          Image.network(
            image,
            fit: BoxFit.cover,
          ),
          GestureDetector(
            onTap: () => press,
            child: Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(13),
                      bottomRight: Radius.circular(13)),
                  color: Colors.grey,
                  boxShadow: [
                    BoxShadow(
                        offset: Offset(0, 0),
                        blurRadius: 20,
                        color: kPrimearyColor.withOpacity(0.23)),
                  ]),
              child: Row(
                children: [
                  RichText(
                    text: TextSpan(children: [
                      TextSpan(
                          text: "$title\n".toUpperCase(),
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                              color: kPrimearyColor.withOpacity(0.7))),
                      TextSpan(
                          text: country.toUpperCase(),
                          style: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.w400,
                              color: kPrimearyColor.withOpacity(0.7)))
                    ]),
                  ),
                  Spacer(),
                  Padding(
                    padding: const EdgeInsets.only(top: 5),
                    child: Text(
                      '\u{20B9}$price',
                      style: TextStyle(
                          color: kPrimearyColor, fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
