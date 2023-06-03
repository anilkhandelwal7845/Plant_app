import 'package:flutter/material.dart';
import 'package:plant_app/color/constant.dart';
import 'package:plant_app/components/icon_btn.dart';

class DetailsScreen extends StatefulWidget {
  const DetailsScreen({super.key});

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.75,
              child: Row(
                children: [
                  Expanded(
                      child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 13),
                    child: Column(
                      children: [
                        Align(
                          alignment: Alignment.topLeft,
                          child: IconButton(
                              padding: EdgeInsets.only(right: 30, top: 20),
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              icon: Icon(
                                Icons.arrow_back_ios,
                                color: kPrimearyColor,
                                size: 30,
                              )),
                        ),
                        Spacer(),
                        IconBtn(
                          iconname: Icons.brightness_high_outlined,
                        ),
                        IconBtn(
                          iconname: Icons.support_agent,
                        ),
                        IconBtn(
                          iconname: Icons.attractions_sharp,
                        ),
                        IconBtn(
                          iconname: Icons.crop_square_sharp,
                        )
                      ],
                    ),
                  )),
                  Container(
                    alignment: Alignment.topRight,
                    height: MediaQuery.of(context).size.height * 0.8,
                    width: MediaQuery.of(context).size.width * 0.75,
                    decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            offset: Offset(0, 0),
                            blurRadius: 90,
                            color: kPrimearyColor.withOpacity(0.3),
                          )
                        ],
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(60),
                            topLeft: Radius.circular(60)),
                        image: DecorationImage(
                            image: NetworkImage(
                                'https://ii1.pepperfry.com/media/catalog/product/s/u/494x544/sunred-polyster-peony-flower-stick-artificial-flowers-without-pot-set-of-2-by-fourwalls-sunred-polys-vmwfob.jpg'),
                            fit: BoxFit.cover)),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15, right: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Kenita Plam",
                        style: TextStyle(
                            fontSize: 30,
                            color: kPrimearyColor,
                            fontWeight: FontWeight.w400),
                      ),
                      Text(
                        '\u{20B9} ${4000}',
                        style: TextStyle(
                            fontSize: 35,
                            color: kPrimearyColor,
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                  Text(
                    "India",
                    style: TextStyle(
                        fontSize: 24,
                        color: kPrimearyColor,
                        fontWeight: FontWeight.w300),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Expanded(
              child: Row(
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width / 2,
                    height: 60,
                    child: ElevatedButton(
                      
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(25)
                            )
                          ),
                          
                          primary: kPrimearyColor,
                        ),
                        onPressed: () {},
                        child: Text(
                          "Buy Now",
                          style: TextStyle(fontSize: 20),
                        )),
                  ) ,
                  Expanded(
            
                    child: TextButton(onPressed: (){}, child: Text("Description" ,style: TextStyle(color: kPrimearyColor ,fontSize: 20),)),
                    ) ,
               
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
