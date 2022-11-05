import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'deleyedanimation.dart';

class login4 extends StatelessWidget {
  const login4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white.withOpacity(0),
        leading: IconButton(
          icon: const Icon(
            Icons.close,
            color: Colors.black,
            size: 30,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: SingleChildScrollView(
          child: Column(
        children: [
          Container(
            margin: EdgeInsets.symmetric(vertical: 40, horizontal: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                delaayedanimated(
                    delay: 1500,
                    child: Center(
                      child: Text(
                        "Connect email address",
                        style: TextStyle(
                          color: Colors.red,
                          fontSize: 25,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    )),
                SizedBox(
                  height: 22,
                ),
                delaayedanimated(
                    delay: 2500,
                    child: Text(
                      "it 's recommanded to connect your mail address for us to better protect your information",
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    )),
              ],
            ),
          ),
          delaayedanimated(
              delay: 5500,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: StadiumBorder(),
                  primary: Color.fromARGB(255, 235, 94, 7),
                  padding: EdgeInsets.symmetric(
                    horizontal: 125,
                    vertical: 13,
                  ),
                ),
                child: Text(
                  'confirm',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                onPressed: () {
                 
                },
              )),
          SizedBox(
            height: 90,
          ),
          Align(
            alignment: Alignment.centerRight,
            child: Padding(
              padding: EdgeInsets.only(right: 35),
              child: TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: delaayedanimated(
                    delay: 6500,
                    child: Text(
                      'SKIP',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.w600),
                    )),
              ),
            ),
          )
        ],
      )),
    );
    ;
  }
}
