import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:tikodc/connexion.dart';
import 'package:tikodc/dateinscription.dart';
import 'dart:async';

import 'package:tikodc/deleyedanimation.dart';
import 'package:tikodc/inscription.dart';
import 'package:tikodc/login2.dart';

import 'connexion2.dart';

class login extends StatelessWidget {
  login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white.withOpacity(0),
          leading: IconButton(
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.black,
              size: 30,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
        body: SingleChildScrollView(
          child: Column(children: [
            delaayedanimated(
                delay: 1000,
                child: Container(
                  height: 280,
                  child: Image.asset('assets/images/tiktokadd.png'),
                )),
            delaayedanimated(
                delay: 1000,
                child: Container(
                  margin: EdgeInsets.symmetric(vertical: 40, horizontal: 30),
                  child: Column(children: [
                    Text(
                      "change starts here",
                      style: TextStyle(
                          color: Colors.red,
                          fontSize: 36,
                          fontWeight: FontWeight.w600),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "save your progress to access your personal training  program",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 25,
                      ),
                    ),
                  ]),
                )),
            delaayedanimated(
                delay: 3500,
                child: Container(
                  margin: EdgeInsets.symmetric(
                    vertical: 14,
                    horizontal: 40,
                  ),
                  child: Column(children: [
                    ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => connexioon(),
                              ));
                        },
                        style: ElevatedButton.styleFrom(
                          shape: StadiumBorder(),
                          backgroundColor: Colors.red,
                          padding: EdgeInsets.all(13),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.mail_outline),
                            SizedBox(
                              width: 10,
                            ),
                            Text('EMAIL',
                                style: TextStyle(
                                    fontSize: 19, fontWeight: FontWeight.w700))
                          ],
                        )),
                    SizedBox(
                      height: 20,
                    ),
                    ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => connexioon(),
                              ));
                        },
                        style: ElevatedButton.styleFrom(
                          shape: StadiumBorder(),
                          primary: Color(0xFF576dff),
                          padding: EdgeInsets.all(13),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Icon(Icons.mail_outline),
                            SizedBox(
                              width: 10,
                            ),
                            Text('FACEBOOK',
                                style: TextStyle(
                                    fontSize: 19, fontWeight: FontWeight.w700))
                          ],
                        )),
                    SizedBox(
                      height: 20,
                    ),
                    ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => connexioon(),
                              ));
                        },
                        style: ElevatedButton.styleFrom(
                          shape: StadiumBorder(),
                          primary: Color.fromARGB(255, 246, 246, 246),
                          padding: const EdgeInsets.all(13),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          // ignore: prefer_const_literals_to_create_immutables
                          children: [
                            const Icon(Icons.mail_outline),
                            const SizedBox(
                              width: 10,
                            ),
                            const Text(
                              'GOOGLE',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 19,
                                  fontWeight: FontWeight.w700),
                            )
                          ],
                        ))
                  ]),
                ))
          ]),
        ));
  }
}
