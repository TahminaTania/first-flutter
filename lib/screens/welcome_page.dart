import 'package:flutter/material.dart';
// import 'package:ui_practice/screens/back_page.dart';
import 'package:ui_practice/screens/qr_image.dart';
// import 'package:ui_practice/screens/right_container.dart';

class WelcomePage extends StatefulWidget {
  // const WelcomePage({Key? key}) : super(key: key);
  String name, id, department, company, phone, address, position, controller;
  WelcomePage(
      {Key? key,
      required this.name,
      required this.id,
      required this.address,
      required this.company,
      required this.department,
      required this.phone,
      required this.position,
      required this.controller})
      : super(key: key);
  @override
  _WelcomePageState createState() => _WelcomePageState(
        name: name,
        id: id,
        department: department,
        company: company,
        phone: phone,
        address: address,
        position: position,
        controller: controller,
      );
}

class _WelcomePageState extends State<WelcomePage> {
  String name, id, department, company, phone, address, position, controller;
  _WelcomePageState(
      {required this.name,
      required this.id,
      required this.address,
      required this.company,
      required this.department,
      required this.phone,
      required this.position,
      required this.controller});
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    TextEditingController controller = TextEditingController();
    return Container(
      decoration: const BoxDecoration(
          color: Color.fromARGB(249, 255, 255, 255),
          image: DecorationImage(
            image: AssetImage('images/bg.jpg'),
            fit: BoxFit.cover,
            opacity: 0.1,
          )),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
              flex: 1,
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Image.asset("images/logo.jpeg"),
                    SizedBox(height: 10),
                    Container(
                      color: Colors.blue,
                      height: screenHeight - 100,
                      padding: EdgeInsets.fromLTRB(5, 5, 0, 0),
                      child: Center(
                        child: Text(
                          "${company}",
                          style: TextStyle(
                              fontSize: screenHeight / 27,
                              height: 1,
                              color: Colors.white,
                              fontWeight: FontWeight.w900,
                              letterSpacing: 0,
                              decoration: TextDecoration.none),
                        ),
                      ),
                    ),
                  ])),
          Expanded(
              flex: 9,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                child: Container(
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
                        child: Text("${name}",
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w700,
                                height: 1,
                                color: Colors.black,
                                decoration: TextDecoration.none))),
                    SizedBox(
                        child: Text("${position}",
                            style: TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.w700,
                                height: 1,
                                color: Colors.black,
                                decoration: TextDecoration.none))),
                    SizedBox(
                        child: Text("${department}",
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                height: 2,
                                color: Colors.black,
                                decoration: TextDecoration.none))),
                    SizedBox(
                        child: Text("${id}",
                            style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.w900,
                              height: 2,
                              color: Colors.black,
                              decoration: TextDecoration.none,
                            ))),
                    SizedBox(
                        child: Text("This Crad isthe Property of",
                            style: TextStyle(
                                fontSize: 8,
                                height: 2,
                                color: Colors.black,
                                decoration: TextDecoration.none))),
                    SizedBox(
                        child: Text("${company}",
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                height: 2,
                                color: Colors.black,
                                decoration: TextDecoration.none))),
                    SizedBox(
                        child: Text("Address this os address field: ${address}",
                            style: TextStyle(
                                fontSize: 10,
                                height: 1,
                                color: Colors.black,
                                decoration: TextDecoration.none))),
                    SizedBox(
                        child: Text("PhoneNumber: ${phone}",
                            style: TextStyle(
                                fontSize: 10,
                                height: 3,
                                color: Colors.black,
                                decoration: TextDecoration.none))),
                    SizedBox(
                        child: Container(
                      color: Colors.amber,
                      alignment: Alignment.bottomLeft,
                      child: ElevatedButton(
                          onPressed: () async {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: ((context) {
                                  return QRImage(controller);
                                }),
                              ),
                            );
                            // Navigator.of(context).push(MaterialPageRoute(
                            //     builder: (context) => BackPage()));
                          },
                          style: ElevatedButton.styleFrom(
                            primary: Colors.white, // Background color
                          ),
                          child: Icon(
                            Icons.next_plan,
                            color: Colors.blue,
                          )),
                    )),
                  ]),
                ),
              ))
        ],
      ),
    );
  }
}
