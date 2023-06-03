import 'package:flutter/material.dart';
import 'package:plant_app/color/constant.dart';
import 'package:plant_app/screens/details_screen.dart';

class PlantCard extends StatelessWidget {
  final String image, title, country;
  final int price;
 
  
  const PlantCard(
      {super.key,
      required this.country,
      required this.image,
      required this.title,
      required this.price,
      
      });

  @override
  Widget build(BuildContext context) {
    return InkWell(
       onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>DetailsScreen()));
            } ,
      child: Container(
        margin: EdgeInsets.only(
          left: 10,
          right: 5,
          top: 20,
        ),
        height: 300,
        width: MediaQuery.of(context).size.width * 0.35,
        child: Column(
          children: [
    
            Container(
              height: 220,
               width: MediaQuery.of(context).size.width * 0.35,
            
              child: Image.network(
              image,
              fit: BoxFit.cover,
            ), 
            ) ,
    
           
            GestureDetector(
              child: Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(13),
                        bottomRight: Radius.circular(13)),
                    color: Colors.white,
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
                      padding: const EdgeInsets.only(top: 15 ,left: 2 ,right: 1),
                      child: Text(
                        '\u{20B9}$price',
                        style: TextStyle(
                          fontSize: 15,
                            color: kPrimearyColor, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
