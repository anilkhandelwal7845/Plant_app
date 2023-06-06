import 'package:flutter/material.dart';

class FeaturedCard extends StatelessWidget {
  final String image;
  const FeaturedCard({super.key , required this.image});

  @override
  Widget build(BuildContext context) {
    return   Container(
              height: 190,
              width: MediaQuery.of(context).size.width*
              0.80,
              margin: const EdgeInsets.only(top: 20 ,bottom: 20 , left: 0),
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(20) ,
              image: DecorationImage(image: NetworkImage(image))),
              
            );
  }
}