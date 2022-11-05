import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'home.dart';

class bonjour extends StatefulWidget {
  const bonjour({super.key});

  @override
  State<bonjour> createState() => _bonjourState();
}

class _bonjourState extends State<bonjour> {
  @override
  void initState() {
    // ignore: todo
    // TODO: implement initState
    super.initState();

    Future.delayed(const Duration(seconds: 2)).then((value) {
      Navigator.of(context).pushReplacement(
          CupertinoPageRoute(builder: (context) => const MyStatefulWidget()));
    });
  }

  @override
  Widget build(BuildContext context) {
    var mediaquery = MediaQuery.of(context).size.height;
    var medialongueur = MediaQuery.of(context).size.width;
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 60, horizontal: 20),
      child: Column(
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          Container(height: mediaquery * 0.02),
          const Text(
            "videos pour passer une bonne journee",
            style: TextStyle(fontSize: 45, fontWeight: FontWeight.bold),
            textAlign: TextAlign.left,
          ),
          SizedBox(
            height: mediaquery * 0.37,
          ),
           // ignore: prefer_const_constructors
           Padding(
             padding: const EdgeInsets.all(1.0),
             child: Image(
             alignment: Alignment.bottomLeft,
             image: const AssetImage("assets/images/tik-tok-3d.png"),
             height: 90,
             width: 100,
          ),
           )
          
          // ignore: prefer_const_constructors
          
        ],
      ),
    );
  }
}
