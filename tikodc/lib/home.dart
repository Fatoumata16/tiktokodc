import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:tikodc/constante.dart';
import 'package:tikodc/login.dart';
import 'package:tikodc/login2.dart';
import 'package:tikodc/splash.dart';
import 'package:video_player/video_player.dart';
import 'dart:math' as math;

import 'accueuil.dart';

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({super.key});

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  int _selectedIndex = 0;

  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static List<Widget> _widgetOptions = <Widget>[
    homepage(),
    Text(
      'Index 1: Business',
      style: optionStyle,
    ),
    Text(
      'Index 2: School',
      style: optionStyle,
    ),
    Text(
      'Index 3: coucou',
      style: optionStyle,
    ),
    login2(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _widgetOptions[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          const BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'search',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/images/tiktokadd.png',
              height: 40.0,
              width: 40.0,
            ),
            label: 'add',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.comment_outlined),
            label: 'comment',
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            label: 'profil',
          ),
        ],
        currentIndex: _selectedIndex,
        type: BottomNavigationBarType.fixed,
        backgroundColor: constante.c_blackWhite,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        onTap: _onItemTapped,
      ),
    );
  }
}

class homepage extends StatelessWidget {
  // homepage({super.key, required Center child});

  final List<Map> tiktokitems = [
    {
      "video": "assets/videos/video3.mp4",
    },
    {
      "video": "assets/videos/video7.mp4",
    },
    {
      "video": "assets/videos/video10.mp4",
    },
    {
      "video": "assets/videos/video6.mp4",
    },
    {
      "video": "assets/videos/video4.mp4",
    },
    {
      "video": "assets/videos/video7.mp4",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(
          height: MediaQuery.of(context).size.height,
          scrollDirection: Axis.vertical,
          viewportFraction: 1.0),
      items: tiktokitems.map((i) {
        return Scaffold(
          body: Stack(
            children: [video(videourl: i['video']), postcontent()],
          ),
        );
      }).toList(),
    );
  }
}

class video extends StatefulWidget {
  const video({super.key, required this.videourl});
  final String videourl;

  @override
  State<video> createState() => _videoState(this.videourl);
}

class _videoState extends State<video> {
  late VideoPlayerController _controller;
  final String videourl;

  _videoState(this.videourl);
  void initState() {
    super.initState();
    _controller = VideoPlayerController.asset(videourl)
      ..initialize().then((_) {
        _controller.play();
        setState(() {});
      });
  }

  @override
  Widget build(BuildContext context) {
    return VideoPlayer(_controller);
  }
}

class postcontent extends StatelessWidget {
  const postcontent({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 50,
          padding: const EdgeInsets.only(top: 20),
          //color: const Color.fromARGB(0, 33, 149, 243),
          child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            Text(
              'Following',
              style:
                  TextStyle(color: Colors.white54, fontWeight: FontWeight.w600),
            ),
            SizedBox(width: 20),
            Text(
              'For you',
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.w600),
            ),
          ]),
        ),
        Expanded(
            child: Container(
          // color: Colors.red,
          child: Row(children: [
            Expanded(
              child: Container(
                // color: Colors.red.withOpacity(0.5),
                padding: EdgeInsets.all(10),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '@extremesports_94',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(height: 10),
                      // ignore: prefer_const_constructors
                      Text(
                        'Goein full send in Squaw Valley.#snow @snowboarding # extremesports #sendit #winter',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        // ignore: prefer_const_literals_to_create_immutables
                        children: [
                          const Icon(
                            Icons.music_note,
                            color: Colors.white,
                            size: 15,
                          ),
                          SizedBox(width: 5),
                          const Text(
                            ' Original Sound - extremesports',
                            style: TextStyle(color: Colors.white),
                          )
                        ],
                      )
                    ]),
              ),
            ),
            SizedBox(
              width: 80,
              //color: Colors.green,

              child:
                  Column(mainAxisAlignment: MainAxisAlignment.end, children: [
                Container(
                  height: 80,
                  // color: Colors.blue,
                  child: Stack(
                      alignment: AlignmentDirectional.bottomCenter,
                      children: [
                        Container(
                          //  padding: EdgeInsets.all(20),
                          margin: EdgeInsets.only(bottom: 26),
                          child: CircleAvatar(
                            radius: 25,
                            backgroundImage:
                                AssetImage('assets/images/tik-tok-3d.png'),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(bottom: 16),
                          padding: EdgeInsets.all(4),
                          decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Icon(
                            Icons.add,
                            color: Colors.white,
                            size: 15,
                          ),
                        )
                      ]),
                ),
                Container(
                  height: 80,
                  child: (Column(
                    children: [
                      Icon(
                        Icons.favorite,
                        color: Colors.white.withOpacity(0.85),
                        size: 45,
                      ),
                      Text(
                        '25.0K',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                            fontWeight: FontWeight.w600),
                      )
                    ],
                  )),
                  // color: Colors.teal,
                ),
                Container(
                  height: 80,
                  child: (Column(
                    children: [
                      Icon(
                        Icons.comment,
                        color: Colors.white.withOpacity(0.85),
                        size: 45,
                      ),
                      Text(
                        '156',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                            fontWeight: FontWeight.w600),
                      )
                    ],
                  )),
                ),
                Container(
                  height: 80,
                  child: (Column(
                    children: [
                      Icon(
                        Icons.share,
                        color: Colors.white.withOpacity(0.85),
                        size: 45,
                      ),
                      Text(
                        '123',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                            fontWeight: FontWeight.w600),
                      )
                    ],
                  )),
                ),
               AnimatedLogo(),
              ]),
            )
          ]),
        ))
      ],
    );
  }
}

class AnimatedLogo extends StatefulWidget {
  AnimatedLogo({Key? key}) : super(key: key);

  @override
  _AnimatedLogoState createState() => _AnimatedLogoState();
}

class _AnimatedLogoState extends State<AnimatedLogo>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    _controller = AnimationController(
      duration: const Duration(milliseconds: 4000),
      vsync: this,
    );
    _controller.repeat();
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _controller,
      builder: (_, child) {
        return Transform.rotate(
          angle: _controller.value * 2 * math.pi,
          child: child,
        );
      },
      child: Container(
        height: 100,
        width: 100,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          image: DecorationImage(
            image: AssetImage("assets/images/tik-tok-3d.png"),
          ),
        ),
        child: Image.asset('assets/images/tik-tok-3d.png',),
      ),
    );
  }
}
