import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<StatefulWidget> createState() => HomeState();
}

class HomeState extends State<Home> {
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
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.all(Radius.circular(20))),
            margin: const EdgeInsets.only(left: 20, top: 120, right: 20),
            child: Row(
              children: [
                ClipRRect(
                  borderRadius: const BorderRadius.all(Radius.circular(20)),
                  child: Image.asset("images/wallet.png",
                      height: 230,
                      width: 250,
                      fit: BoxFit.cover),
                ),
                const SizedBox(
                  width: 30,
                ),
                const Column(
                  children: [
                    Text("data",style: TextStyle(color: Colors.white))
                  ],
                )
              ],
            ),
          )
        ]),
      ],
    )));
  }
}
