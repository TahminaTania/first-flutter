import 'package:flutter/material.dart';

class RightContainer extends StatelessWidget {
  const RightContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    return Container(
      height: screenHeight,
      width: 300,
      color: Colors.white,
      child: Column(children: [
        SizedBox(
            width: screenHeight / 3,
            height: screenHeight / 2,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset('images/profile.png'),
            )),
        SizedBox(
            child: Text("This Name Field",
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w700,
                    height: 1,
                    color: Colors.black,
                    decoration: TextDecoration.none))),
        SizedBox(
            child: Text("Position Field",
                style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w700,
                    height: 1,
                    color: Colors.black,
                    decoration: TextDecoration.none))),
        SizedBox(
            child: Text("Department",
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    height: 2,
                    color: Colors.black,
                    decoration: TextDecoration.none))),
        SizedBox(
            child: Text("51671863816",
                style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w900,
                    height: 2,
                    color: Colors.black,
                    decoration: TextDecoration.none))),
        SizedBox(
            child: Text("This Crad isthe Property of",
                style: TextStyle(
                    fontSize: 8,
                    height: 2,
                    color: Colors.black,
                    decoration: TextDecoration.none))),
        SizedBox(
            child: Text("Company NAme Field",
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    height: 2,
                    color: Colors.black,
                    decoration: TextDecoration.none))),
        SizedBox(
            child: Text(
                "Address this os address field Address this os address field Address this os address field",
                style: TextStyle(
                    fontSize: 10,
                    height: 1,
                    color: Colors.black,
                    decoration: TextDecoration.none))),
        SizedBox(
            child: Text("PhoneNumber: 09876546734567",
                style: TextStyle(
                    fontSize: 10,
                    height: 3,
                    color: Colors.black,
                    decoration: TextDecoration.none))),
        SizedBox(
            child: Padding(
          padding: const EdgeInsets.fromLTRB(180, 0, 0, 0),
          child: Text("---------------",
              style: TextStyle(
                  fontSize: 7,
                  height: 6,
                  color: Colors.black,
                  decoration: TextDecoration.none)),
        )),
      ]),
    );
  }
}
