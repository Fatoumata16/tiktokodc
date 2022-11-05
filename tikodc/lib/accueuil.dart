import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:video_player/video_player.dart';

class acc extends StatelessWidget {
  //const acc({super.key});

 final List<Map> tiktokitems = [
    {
      "video": "assets/videos/video3.mp4",
    },
    {
      "video": "assets/videos/WhatsApp Video 2022-11-02 at 11.19.57.mp4",
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
          height: double.infinity,
          scrollDirection: Axis.vertical,
          viewportFraction: 1.0),
      items: tiktokitems.map((i) {
        return Builder(
          builder: (BuildContext context) {
            return Container(
              color: Color(0xFF141518).withOpacity(0.85),
              child: Stack(
                children: [video(videourl: i['video']), const postcontent()],
              ),
            );
          },
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
        // _controller.play();
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
          //color: Colors.blue,
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
                  TextStyle(color: Colors.white54, fontWeight: FontWeight.w600),
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
                        '@extremesports_95',
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
                        CircleAvatar(
                          radius: 25,
                          backgroundImage:
                              AssetImage('assets/images/tik-tok-3d.png'),
                        ),
                        Container(
                          padding: EdgeInsets.all(2),
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
                        Icons.favorite,
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
                        Icons.favorite,
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
                Container(
                  height: 80,
                  color: Colors.purple,
                )
              ]),
            )
          ]),
        ))
      ],
    );
  }
}

class animatedlogo extends StatefulWidget {
  const animatedlogo({super.key});

  @override
  State<animatedlogo> createState() => _animatedlogoState();
}

class _animatedlogoState extends State<animatedlogo> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
