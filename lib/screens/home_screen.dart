import 'package:flutter/material.dart';
import 'package:plant_app/color/constant.dart';
import 'package:plant_app/components/btn.dart';
import 'package:plant_app/components/card.dart';
import 'package:plant_app/screens/details_screen.dart';
import 'package:plant_app/components/featuredcard.dart';
import 'package:plant_app/components/text.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 245, 239, 239),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: kPrimearyColor,
        leading: const Icon(Icons.menu),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height / 4,
              child: Stack(
                children: [
                  Container(
                    margin: const EdgeInsets.only(bottom: 20),
                    height: MediaQuery.of(context).size.height / 4.5,
                    decoration: const BoxDecoration(
                        color: kPrimearyColor,
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(40),
                            bottomRight: Radius.circular(40))),
                    child: const Row(
                      children: [
                        Expanded(
                          child: Padding(
                            padding: EdgeInsets.only(left: 20),
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
                          padding: EdgeInsets.only(right: 20),
                          child: CircleAvatar(
                            maxRadius: 25,
                            minRadius: 25,

                            backgroundImage: NetworkImage(
                              'https://floweraura-blog-img.s3.ap-south-1.amazonaws.com/Bedroom+Plants/plantix.jpg',
                            ),

                            //               child: Image.network( 'https://floweraura-blog-img.s3.ap-south-1.amazonaws.com/Bedroom+Plants/plantix.jpg' ,

                            //   fit: BoxFit.cover,
                            // ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    left: 0,
                    right: 0,
                    child: Container(
                      alignment: Alignment.center,
                      padding: const EdgeInsets.only(left: 13, right: 15),
                      margin: const EdgeInsets.only(left: 30, right: 30),
                      height: 50,
                      width: MediaQuery.of(context).size.width / 1.1,
                      decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                                color: kPrimearyColor.withOpacity(0.23),
                                blurRadius: 50,
                                offset: const Offset(0, 10))
                          ],
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20)),
                      child: const Row(
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
            const Row(
              children: [
                MainText(text: "Recomended"),
                Spacer(),
                Btn(),

                //Here Add Btn
              ],
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  PlantCard(
                    country: "India",
                    image:
                        'https://www.plantshop.me/media/product/Kentia_Palm_-a-_plantshopme.jpg',
                    title: "Kentia Palm",
                    price: 1300,
                    press: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => DetailsScreen()));
                    },
                  ),
                  PlantCard(
                    country: "India",
                    image:
                        'https://cdn.shopify.com/s/files/1/0479/9089/8856/products/V.G.FicusPlantN.Stick6FEET.jpg?v=1618553049',
                    title: "FEJKA",
                    price: 760,
                    press: () {},
                  ),
                  PlantCard(
                    country: "India",
                    image:
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQwoCcjV5qwFIHUW23VLXcTHzf9ZVFTVGwOj7mXA1xwUA&usqp=CAU&ec=48665699',
                    title: "Synthetic Green",
                    price: 600,
                    press: () {},
                  ),
                  PlantCard(
                    country: "India",
                    image:
                        'https://target.scene7.com/is/image/Target/GUEST_cf6a8c1d-a2cb-4a8a-aef6-ca3f3b9118fc',
                    title: "Polyester Della Multicolor",
                    price: 770,
                    press: () {},
                  ),
                  PlantCard(
                    country: "India",
                    image:
                        'https://ii2.pepperfry.com/media/catalog/product/g/r/494x544/green-fabric-real-touch-artificial-fiddle-leaf-fig-plant-without-pot-by-fourwalls-green-fabric-real--ud63n9.jpg',
                    title: "Bonsai Tree",
                    price: 900,
                    press: () {},
                  ),
                  PlantCard(
                    country: "India",
                    image:
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTNFoBKW1hJTFFUoCWpH1JKqEVmcj8gCytGhro_NZzoTuYlfBGJEiESux-0YT02dtJqVpDXLbbS7Nk&usqp=CAU&ec=48665699',
                    title: "Fiddle Leaf",
                    price: 900,
                    press: () {},
                  ),
                  PlantCard(
                    country: "India",
                    image:
                        'https://images.costco-static.com/ImageDelivery/imageService?profileId=12026540&imageId=1363170-847__1&recipeName=350',
                    title: "Kentia Palm",
                    price: 900,
                    press: () {},
                  ),
                  PlantCard(
                    country: "India",
                    image:
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQi6KBzlMfuH8drn0PwiGKd8VmmgMsQYQUZocEFGFfqNh3TUaHbk0rX3jRZQbTps_hjUzL0ilzgkZ8&usqp=CAU&ec=48665699',
                    title: "Sansevieria Snake",
                    price: 900,
                    press: () {},
                  ),
                ],
              ),
            ),
            const Row(
              children: [
                MainText(text: "Featured Plants"),
                Spacer(),
                Btn(),

                //Here Add Btn
              ],
            ),
            const SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  FeaturedCard(
                      image:
                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRCM9CxdlhB1zvF6a49RM5BTlIJ68OKhWRReotUTmqP9beijUlmAnEyycBnpxUb1ef6ZgBlo65XK9Y&usqp=CAU&ec=48665699'),
                  FeaturedCard(
                      image:
                          'https://hips.hearstapps.com/hmg-prod/images/indoor-plants-in-pots-1675181865.jpeg?crop=1.00xw:0.752xh;0,0.123xh&resize=1200:*'),
                  FeaturedCard(
                      image:
                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRkk8hXYMdvMS1DzJrRtjODhyIU1C329U7AXC1gxinWkcZlKOuFx8tpuaMt4slOXlBK64VkDDwi4Nc&usqp=CAU&ec=48665699'),
                  FeaturedCard(
                      image:
                          'https://jayscotts.com/wp-content/uploads/2021/10/spacejoy-IH7wPsjwomc-unsplash-edited-scaled-2.jpg')
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
