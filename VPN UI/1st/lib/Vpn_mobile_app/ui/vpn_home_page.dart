import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class VpnHomePage extends StatefulWidget {
  @override
  _VpnHomePageState createState() => _VpnHomePageState();
}

class _VpnHomePageState extends State<VpnHomePage> {
  Timer? connectionTimer;
  String timeText = "";
  int timeCounter = 00;
  bool isConnected = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade900,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              flex: 2,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Row(
                  children: [
                    Expanded(
                      child: Center(
                        child: Text(
                          "Chameleon VPN",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.teal.shade400,
                              fontSize: 27),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Row(
                children: [
                  // Expanded(
                  //     child: Column(
                  //   mainAxisAlignment: MainAxisAlignment.center,
                  //   children: [
                  //     Text(
                  //       "Status",
                  //       style: TextStyle(
                  //           fontWeight: FontWeight.bold, color: Colors.white30),
                  //     ),
                  //     Text(
                  //       "Connected",
                  //       style: TextStyle(
                  //           fontWeight: FontWeight.bold,
                  //           color: Colors.teal,
                  //           fontSize: 18),
                  //     )
                  //   ],
                  // )),
                  Expanded(
                      child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Your IP",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.white30),
                      ),
                      Text(
                        "192.224.154.214",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.teal,
                            fontSize: 18),
                      )
                    ],
                  )),
                ],
              ),
            ),

            Expanded(
              flex: 8,
              child: Center(
                child: Container(
                  height: 240,
                  width: 240,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.teal, width: 2),
                      shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(
                            color: Colors.teal.withOpacity(.2),
                            spreadRadius: 15,
                            blurRadius: 15)
                      ]),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: InkWell(
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.teal.shade800,
                          shape: BoxShape.circle,
                        ),
                        child: Center(
                          child: Icon(
                            Icons.power_settings_new,
                            color: Colors.white,
                            size: 84,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),

            Expanded(
              flex: 2,
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "Connection time",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.white30),
                    ),
                    Text("24:33",
                        // "$timeText",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 24,
                            color: Colors.white60)),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Center(
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 24, vertical: 8),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.white30,
                      style: BorderStyle.solid,
                      // width: 0.5,
                    ),
                    color: Colors.grey.shade900,
                    borderRadius: BorderRadius.circular(16),
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  child: Row(
                    children: [
                      // Image.asset('assets/images/turpng.png'),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("🇹🇷", style: TextStyle(fontSize: 24)),
                      ),
                      SizedBox(width: 16),
                      Text(
                        "Turkey",
                        style: TextStyle(
                            fontSize: 21,
                            fontWeight: FontWeight.bold,
                            color: Colors.white30),
                      ),
                      Spacer(),
                      // IconButton(
                      // onPressed: () {}, icon: Icon(Icons.arrow_forward_ios))
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Upload",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.grey),
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.arrow_upward,
                            color: Colors.pink,
                          ),
                          Text(
                            "124 Mb/s",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white30),
                          )
                        ],
                      )
                    ],
                  ),
                  SizedBox(width: 24),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Download",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.grey),
                      ),
                      Row(
                        children: [
                          Icon(Icons.arrow_downward, color: Colors.blue),
                          Text("154 Mb/s",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white30))
                        ],
                      )
                    ],
                  )
                ],
              ),
            ),
            //TODO: Implement Button
            /*
            Expanded(
              flex: 2,
              child: Container(
                  margin: EdgeInsets.symmetric(vertical: 12, horizontal: 16),
                  decoration: BoxDecoration(
                    color: Colors.pinkAccent[200],
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Center(
                    child: Text(
                      "Get premium",
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  )),
            ),
            */
          ],
        ),
      ),
    );
  }
}
