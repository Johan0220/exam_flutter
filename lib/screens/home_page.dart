import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
class HomePageScreen extends StatefulWidget {
  const HomePageScreen({super.key});



  @override
  State<HomePageScreen> createState() => _HomePageScreenState();
}

class _HomePageScreenState extends State<HomePageScreen> {

  @override
  Widget build(BuildContext context) {

    return SafeArea(
      child: Container(
        child: Column(
          children: [
            Stack(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 200,
                    decoration: BoxDecoration(
                        color: Colors.deepPurple,
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(50),
                        )
                    ),
                    child: Stack(
                      children: [
                        Padding(
                          padding: EdgeInsets.all(30),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Hi Guy!', style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.bold),),
                              SizedBox(height: 40,),
                              Text('Where are you going next?',style: TextStyle(color: Colors.white,))
                            ],
                          ),
                        ),
                        Align(
                            alignment: Alignment.bottomCenter,
                            child: Padding(
                              padding: const EdgeInsets.only(top: 50),
                              child:  Container(
                                  width: MediaQuery.of(context).size.width - 50,
                                  child: SearchBar(
                                    leading: Icon(Icons.search),
                                    hintText: 'Search your desnation',
                                    // Các thuộc tính khác của SearchBar
                                  )
                                ),
                            )
                        )
                      ],
                    )
                  ),
                ]
            ),
            SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.all(40),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Container(
                              width: 100,
                              height: 80,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.orange.shade100,
                              ),
                              child: Icon(Icons.factory,color: Colors.orange,),
                            ),
                            SizedBox(height: 5,),
                            Text('Hotels')
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                              width: 100,
                              height: 80,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.red.shade100,
                              ),
                              child: Icon(Icons.flight_sharp,color: Colors.red,),
                            ),
                            SizedBox(height: 5,),
                            Text('flights')
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                              width: 100,
                              height: 80,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.greenAccent.shade100,
                              ),
                              child: Icon(Icons.flight_takeoff_rounded,color: Colors.greenAccent,),
                            ),
                            SizedBox(height: 5,),
                            Text('All')
                          ],
                        )
                      ],
                    ),),
                  Stack(
                    children: [
                      Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(padding: EdgeInsets.all(20),
                            child: const Text(
                                  "Popular desnation",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold
                                  ),
                                ),),
                            SizedBox(height: 20,),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 30),
                              child: Container(
                                width: MediaQuery.of(context).size.width,
                                child: Column(
                                  children: [
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        GestureDetector(
                                          onTap: () {
                                          },
                                          child: Padding(
                                            padding: const EdgeInsets.all(5),
                                            child: Container(
                                              width: 160,
                                              height: 150,
                                              decoration: BoxDecoration(
                                                color: Colors.grey.shade300,
                                                borderRadius: BorderRadius.circular(8),
                                              ),
                                              child: Stack(
                                                children: [
                                                  Image.network('https://sovhttdltuyenquang.vn/wp-content/uploads/2023/10/pho-co-hoi-an-tren-cao.jpg',
                                                    width: MediaQuery.of(context).size.width,
                                                    height: MediaQuery.of(context).size.height,)
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                        GestureDetector(
                                          onTap: () {

                                          },
                                          child: Padding(
                                            padding: const EdgeInsets.all(5),
                                            child: Container(
                                              width: 160,
                                              height: 150,
                                              decoration: BoxDecoration(
                                                color: Colors.grey.shade300,
                                                borderRadius: BorderRadius.circular(8),
                                              ),
                                              child: Column(
                                                children: [
                                                  Image.network('https://sovhttdltuyenquang.vn/wp-content/uploads/2023/10/pho-co-hoi-an-tren-cao.jpg',
                                                    width: MediaQuery.of(context).size.width,
                                                    height: 150,)
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),

                              ),
                            ),
                            SizedBox(height: 20,),
                          ]
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        )
      ),
    );
  }
}
