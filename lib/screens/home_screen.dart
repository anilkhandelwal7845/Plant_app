import 'package:flutter/material.dart';
import 'package:plant_app/color/constant.dart';
import 'package:plant_app/screens/text.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Color.fromARGB(255, 245, 239, 239) ,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: kPrimearyColor,
        leading: Icon(Icons.menu),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height / 4,
              // color: Colors.red,
              child: Stack(
                children: [
                  Container(
                    margin: EdgeInsets.only(bottom: 20),
                    height: MediaQuery.of(context).size.height / 4.5,
                    decoration: BoxDecoration(
                        color: kPrimearyColor,
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(40),
                            bottomRight: Radius.circular(40))),
                    child: Row(
                      children: [
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: Text(
                              "Hi Anil!",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 20),
                          child: Icon(
                            Icons.account_tree,
                            size: 40,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    left: 0,
                    right: 0,
                    child: Container(
                      alignment: Alignment.center,
                      padding: EdgeInsets.only(left: 13, right: 15),
                      margin: EdgeInsets.only(left: 30, right: 30),
                      height: 50,
                      width: MediaQuery.of(context).size.width / 1.1,
                      decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                                color: kPrimearyColor.withOpacity(0.23),
                                blurRadius: 50,
                                offset: Offset(0, 10))
                          ],
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20)),
                      child: Row(
                        children: [
                          Expanded(
                            child: TextField(
                              decoration: InputDecoration(
                                hintText: "Search",
                                hintStyle: TextStyle(color: kPrimearyColor),
                                enabledBorder: InputBorder.none,
                                focusedBorder: InputBorder.none,
                              ),
                            ),
                          ),
                          Icon(
                            Icons.search,
                            color: kPrimearyColor,
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Row(
              children: [
                MainText(text: "Recomended"),
                Spacer(),

                //Here Add Btn
              ],
            ),
            Column(
              children: [
                Container(
                  height: 250,
                  width: 160,
                  margin: EdgeInsets.only(top: 25),
                  decoration: BoxDecoration(
                    color: Colors.white ,
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(10.0),
                        bottomRight: Radius.circular(10.0)),
                  ),
                  child: Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(10.0),
                              topLeft: Radius.circular(10.0)),
                        ),
                        height: 200,
                        width: 160,
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 8),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(height: 5,) ,
                                Text(
                                  "SAMANTHA",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      color: Colors.black),
                                ),SizedBox(height: 5,) ,
                                Text(
                                  "INDIAN",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      color: kPrimearyColor),
                                )
                              ],
                            ),
                          ),
                          Spacer(),
                          Padding(
                            padding: const EdgeInsets.only(top: 8, right: 4),
                            child: Text(
                              '\u{20B9}${900}',
                              style: TextStyle(
                                  fontSize: 20, color: kPrimearyColor),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ) ,
          
          Column(
              children: [
                Container(
                  height: 250,
                  width: 160,
                  margin: EdgeInsets.only(top: 25),
                  decoration: BoxDecoration(
                    color: Colors.white ,
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(10.0),
                        bottomRight: Radius.circular(10.0)),
                  ),
                  child: Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(10.0),
                              topLeft: Radius.circular(10.0)),
                        ),
                        height: 200,
                        width: 160,
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 8),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(height: 5,) ,
                                Text(
                                  "SAMANTHA",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      color: Colors.black),
                                ),SizedBox(height: 5,) ,
                                Text(
                                  "INDIAN",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      color: kPrimearyColor),
                                )
                              ],
                            ),
                          ),
                          Spacer(),
                          Padding(
                            padding: const EdgeInsets.only(top: 8, right: 4),
                            child: Text(
                              '\u{20B9}${900}',
                              style: TextStyle(
                                  fontSize: 20, color: kPrimearyColor),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            )
          
          ],
        ),
      ),
    );
  }
}
