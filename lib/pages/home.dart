import 'dart:ui';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'circular_container.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<StatefulWidget> createState() => HomeState();
}

class HomeState extends State<Home> {
  int index = 0;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            child: Column(
      children: [
        Stack(children: [
          Container(
            height: 200,
            padding: const EdgeInsets.only(left: 20, top: 30),
            decoration: const BoxDecoration(
              color: Color(0xFF2a2b31),
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20)),
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(60),
                  child: Image.asset("images/boy.jpg",
                      height: 50, width: 50, fit: BoxFit.cover),
                ),
                const SizedBox(width: 20),
                const Padding(
                  padding: EdgeInsets.only(top: 10),
                  child: Text(
                    "Pranay Teja Reddy",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                )
              ],
            ),
          ),
          Container(
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(20)),
              margin: const EdgeInsets.only(left: 20, top: 120, right: 20),
              width: MediaQuery.of(context).size.width,
              // height: 200,
              child: Column(
                children: [
                  CarouselSlider(
                      items: [
                        ClipRRect(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(20)),
                          child: Image.asset("images/food.jpg",
                              width: MediaQuery.of(context).size.width,
                              fit: BoxFit.cover),
                        ),
                        ClipRRect(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(20)),
                          child: Image.asset("images/food4.jpg",
                              width: MediaQuery.of(context).size.width,
                              fit: BoxFit.cover),
                        ),
                        ClipRRect(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(20)),
                          child: Image.asset("images/food5.jpg",
                              width: MediaQuery.of(context).size.width,
                              fit: BoxFit.cover),
                        ),
                      ],
                      options: CarouselOptions(
                        viewportFraction: 1,
                        onPageChanged: (index, reason) => {
                          print(this.index),
                          setState(() {
                            this.index = index;
                          })
                        },
                      )),
                  const SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      for (int i = 0; i < 3; i++)
                        if (index == i)
                          CircularContainer(color: Colors.green)
                        else
                          CircularContainer(color: Colors.grey)
                    ],
                  )
                ],
              ))
        ]),
      ],
    )));
  }
}
