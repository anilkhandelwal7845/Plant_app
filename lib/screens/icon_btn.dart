import 'package:flutter/material.dart';
import 'package:plant_app/color/constant.dart';

class IconBtn extends StatelessWidget {
  final IconData iconname;

  const IconBtn({super.key , required this.iconname});

  @override
  Widget build(BuildContext context) {
    return    Container(
      margin: EdgeInsets.symmetric(vertical: MediaQuery.of(context).size.height*0.05) ,
                          
                          padding: EdgeInsets.all(5),
                          child: Icon(iconname,size: 40,color: kPrimearyColor,),
                          height: 60,
                          width: 60,
                          decoration: BoxDecoration(
                            color: Colors.white ,
                            borderRadius: BorderRadius.circular(20) ,
                            boxShadow: [
                              BoxShadow(
                               // color: Colors.white,
                                color: kPrimearyColor.withOpacity(0.4) ,
                                offset: Offset(-15 , -15) ,
                                blurRadius: 20
                              )
                            ]
                          ),
                        );
  }
}