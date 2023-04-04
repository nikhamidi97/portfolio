import 'dart:html';

import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
import 'package:google_fonts/google_fonts.dart';
import 'custom_icon.dart';
import 'package:web_smooth_scroll/web_smooth_scroll.dart';
import 'logo.dart';

void main() async {
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hamidi Hamat | Backend Dev',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        textTheme: GoogleFonts.rubikTextTheme(
          Theme.of(context).textTheme,
        ),
        primarySwatch: Colors.grey,
      ),
      home: const MyHomePage(
        title: 'hamidihamat',
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final double _marginLeftRight = 200.0;
  Color gradientColor1 = const Color.fromARGB(255, 4, 1, 13);
  Color gradientColor2 = const Color.fromARGB(255, 1, 23, 42);

  void _handleColorChange(newColor1, newColor2) {
    setState(() {
      gradientColor1 = newColor1;
      gradientColor2 = newColor2;
    });
  }

  // Controllers
  late ScrollController _scrollController;
  double _scrollPosition = 0.0;
  String _scrollDirection = 'down';
  double _currentScrollPosition = 0.0;

  @override
  void initState() {
    // initialize scroll controllers
    _scrollController = ScrollController();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    void downloadResume() {
      AnchorElement anchorElement =
          AnchorElement(href: 'assets/HAMIDI_BACKEND_DEVELOPER.pdf')
            ..download = 'HAMIDI_BACKEND_DEVELOPER.pdf'
            ..click();
    }

    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: AppBar(
        flexibleSpace: AnimatedContainer(
          duration: const Duration(milliseconds: 500),
          decoration: BoxDecoration(
            gradient: LinearGradient(colors: [gradientColor1, gradientColor2]),
          ),
        ),
        toolbarHeight: 100,
        title: Padding(
          padding: EdgeInsets.only(left: _marginLeftRight),
          child: Text(
            widget.title,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.w400,
              fontFamily: 'sans-serif',
            ),
          ),
        ),
        backgroundColor: Colors.transparent, // make the app bar transparent
        elevation: 0,
        actions: [
          // create 2 text nav buttons
          TextButton(
            onPressed: () {
              // handle button press
            },
            child: const Text(
              'Work',
              style: TextStyle(
                fontSize: 16,
                fontFamily: "sans-serif",
                color: Colors.white,
              ),
            ),
          ),
          TextButton(
            onPressed: () {
              // handle button press
            },
            child: const Text(
              'Contact',
              style: TextStyle(
                fontSize: 16,
                fontFamily: "sans-serif",
                color: Colors.white,
              ),
            ),
          ),

          const VerticalDivider(
            color: Colors.white,
            width: 20,
            thickness: 1,
            indent: 40,
            endIndent: 40,
          ),
          IconButton(
            iconSize: 16,
            icon: const Icon(SocialMediaIcon.githubCircled),
            color: Colors.white,
            onPressed: () {
              // handle search button press
            },
          ),
          IconButton(
            iconSize: 16,
            icon: const Icon(SocialMediaIcon.linkedin),
            color: Colors.white,
            onPressed: () {
              // handle menu button press
            },
          ),

          SizedBox(width: _marginLeftRight)
        ],
      ),
      body: NotificationListener(
        onNotification: (notificationInfo) {
          if (notificationInfo is ScrollEndNotification) {
            setState(() {
              if (_scrollController.position.pixels > _currentScrollPosition) {
                _scrollDirection = 'down';
              } else {
                _scrollDirection = 'up';
              }
              _currentScrollPosition = _scrollController.position.pixels;
            });
            if (_scrollDirection == 'down') {
              if (_scrollController.position.pixels < 1080) {
                _handleColorChange(Color.fromARGB(255, 44, 132, 241),
                    Color.fromARGB(255, 37, 150, 255));
                if (_scrollPosition != -100) _scrollPosition -= 50.0;
              } else if (_scrollController.position.pixels > 1080 &&
                  _scrollController.position.pixels < 2160) {
                _handleColorChange(Color.fromARGB(255, 44, 3, 166),
                    Color.fromARGB(255, 0, 0, 0));
                _scrollPosition += 50.0;
              }
            } else {
              if (_scrollController.position.pixels == 0) {
                _handleColorChange(Color.fromARGB(255, 4, 1, 13),
                    Color.fromARGB(255, 1, 23, 42));
                _scrollPosition += 50.0;
              } else if (_scrollController.position.pixels > 800) {
                _handleColorChange(Color.fromARGB(255, 44, 132, 241),
                    Color.fromARGB(255, 37, 150, 255));
                if (_scrollPosition != -100) _scrollPosition -= 50.0;
              }
              print(_scrollController.position.pixels);
            }

            /// your code
          }
          return true;
        },
        child: WebSmoothScroll(
          scrollOffset: 900, // additional offset to users scroll input
          animationDuration:
              2000, // duration of animation of scroll in milliseconds
          curve: Curves.easeInOutCirc,
          controller: _scrollController,
          child: SingleChildScrollView(
              physics: const NeverScrollableScrollPhysics(),
              controller: _scrollController,
              child: Column(
                children: [
                  AnimatedContainer(
                    duration: const Duration(milliseconds: 500),
                    height: MediaQuery.of(context).size.height,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                          colors: [gradientColor1, gradientColor2]),
                    ),
                    child: Padding(
                      padding: EdgeInsets.only(left: _marginLeftRight),
                      child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.5,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const SizedBox(height: 100),
                                  const Text(
                                    'I Build Scalable APIs',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 80,
                                      fontWeight: FontWeight.w400,
                                      fontFamily: 'sans-serif',
                                    ),
                                  ),
                                  const Text(
                                    '& Web-Applications',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 80,
                                      fontWeight: FontWeight.w400,
                                      fontFamily: 'sans-serif',
                                    ),
                                  ),
                                  const SizedBox(height: 20),
                                  Flexible(
                                    child: SizedBox(
                                      width: MediaQuery.of(context).size.width *
                                          0.35,
                                      child: const Text(
                                        '23 year old (backend leaning) full stack web developer from Kuala Lumpur, Malaysia. Most of my current experience is building customer-facing SaaS, websites and transforming business operations.',
                                        style: TextStyle(
                                          height: 1.5,
                                          color: Colors.white,
                                          fontSize: 15,
                                          fontWeight: FontWeight.w400,
                                          fontFamily: 'sans-serif',
                                        ),
                                        softWrap: true,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(height: 50),
                                  Row(
                                    children: [
                                      SizedBox(
                                        height: 50,
                                        width: 100,
                                        child: TextButton(
                                          style: ButtonStyle(
                                            backgroundColor:
                                                MaterialStateProperty.all<
                                                    Color>(Colors.white),
                                          ),
                                          onPressed: () {
                                            // handle button press
                                          },
                                          child: const Text(
                                            'My Work',
                                            style: TextStyle(
                                              fontSize: 16,
                                              fontFamily: "sans-serif",
                                              color: Colors.black,
                                            ),
                                          ),
                                        ),
                                      ),
                                      const SizedBox(width: 20),
                                      SizedBox(
                                        child: OutlinedButton(
                                          child: Row(
                                            children: const [
                                              Text(
                                                'Download Resume',
                                                style: TextStyle(
                                                  fontSize: 16,
                                                  fontFamily: "sans-serif",
                                                  color: Colors.white,
                                                ),
                                              ),
                                              SizedBox(width: 10),
                                              Icon(
                                                  Icons
                                                      .keyboard_arrow_down_rounded,
                                                  color: Colors.white),
                                            ],
                                          ),
                                          onPressed: () => downloadResume(),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.3,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const SizedBox(height: 100),
                                  SizedBox(
                                    height: MediaQuery.of(context).size.height *
                                        0.7,
                                    width:
                                        MediaQuery.of(context).size.width * 0.3,
                                    child: Stack(
                                      children: [
                                        BigBox(
                                          posTop: 20,
                                          onChanged: _handleColorChange,
                                          color1: const Color.fromARGB(
                                              255, 12, 102, 144),
                                          color2:
                                              Color.fromARGB(255, 107, 3, 88),
                                          logo: [pythonStroke, pythonColor],
                                        ),
                                        BigBox(
                                          posTop: 170,
                                          posLeft: 300,
                                          onChanged: _handleColorChange,
                                          color1: Colors.green,
                                          color2: Colors.blue,
                                          logo: [jsStroke, jsColor],
                                        ),
                                        BigBox(
                                          posTop: 330,
                                          posLeft: 50,
                                          onChanged: _handleColorChange,
                                          color1: const Color.fromARGB(
                                              255, 4, 9, 64),
                                          color2: Colors.blue,
                                          logo: [dartStroke, dartColor],
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ]),
                    ),
                  ),
                  AnimatedContainer(
                    duration: const Duration(milliseconds: 500),
                    height: MediaQuery.of(context).size.height,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                          colors: [gradientColor1, gradientColor2]),
                    ),
                    child: AnimatedPadding(
                      duration: const Duration(milliseconds: 300),
                      padding: EdgeInsets.symmetric(
                          horizontal: _marginLeftRight + _scrollPosition),
                      child: Container(
                        height: MediaQuery.of(context).size.height,
                        width: MediaQuery.of(context).size.width,
                        decoration: const BoxDecoration(
                          color: Colors.white,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            const Text(
                              'My Work',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 80,
                                fontWeight: FontWeight.w400,
                                fontFamily: 'sans-serif',
                              ),
                            ),
                            const SizedBox(height: 20),
                            SizedBox(
                              height: 50,
                              width: 100,
                              child: TextButton(
                                style: ButtonStyle(
                                  backgroundColor:
                                      MaterialStateProperty.all<Color>(
                                          Colors.white),
                                ),
                                onPressed: () {
                                  // handle button press
                                },
                                child: const Text(
                                  'My Work',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontFamily: "sans-serif",
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  AnimatedContainer(
                    duration: const Duration(milliseconds: 500),
                    height: MediaQuery.of(context).size.height,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                          colors: [gradientColor1, gradientColor2]),
                    ),
                    child: Container(
                      height: MediaQuery.of(context).size.height,
                      width: MediaQuery.of(context).size.width,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Text(
                            'My Work',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 80,
                              fontWeight: FontWeight.w400,
                              fontFamily: 'sans-serif',
                            ),
                          ),
                          const SizedBox(height: 20),
                          SizedBox(
                            height: 50,
                            width: 100,
                            child: TextButton(
                              style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.all<Color>(
                                        Colors.white),
                              ),
                              onPressed: () {
                                // handle button press
                              },
                              child: const Text(
                                'My Work',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontFamily: "sans-serif",
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              )),
        ),
      ),
    );
  }
}

// ignore: must_be_immutable
class BigBox extends StatefulWidget {
  double? posTop;
  double? posLeft;
  double? posRight;
  Function onChanged;
  Color color1;
  Color color2;
  List<Widget> logo = [];

  BigBox({
    super.key,
    this.posTop,
    this.posLeft,
    this.posRight,
    required this.onChanged,
    required this.color1,
    required this.color2,
    required this.logo,
  });

  @override
  State<BigBox> createState() => _BigBoxState();
}

class _BigBoxState extends State<BigBox> {
  bool _isHovering = false;
  Color gradientColor1 = const Color.fromARGB(255, 4, 1, 13);
  Color gradientColor2 = const Color.fromARGB(255, 1, 23, 42);
  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: widget.posTop,
      left: widget.posLeft,
      right: widget.posRight,
      child: MouseRegion(
        onEnter: (event) => setState(() {
          _isHovering = true;
          widget.onChanged(widget.color1, widget.color2);
        }),
        onExit: (event) => setState(() {
          _isHovering = false;
          widget.onChanged(gradientColor1, gradientColor2);
        }),
        child: AnimatedContainer(
            curve: Curves.easeInOut,
            duration: const Duration(milliseconds: 300),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              // gradient: LinearGradient(
              //   begin: Alignment.topLeft,
              //   end: Alignment.bottomRight,
              //   colors: [
              //     const Color.fromARGB(255, 255, 98, 150),
              //     Color.fromARGB(255, 90, 150, 253),
              //   ],
              //   stops: _isHovering ? [0.0, 1.0] : [0.0, 0.7],
              //   tileMode: TileMode.clamp,
              // ),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.2),
                  blurRadius: 4,
                  offset: const Offset(0, 4),
                ),
              ],
              border: Border.all(
                width: 1,
                color: Colors.white,
              ),
            ),
            height: _isHovering ? 135 : 125,
            width: _isHovering ? 135 : 125,
            child: Padding(
                padding: const EdgeInsets.all(15),
                child: _isHovering ? widget.logo[1] : widget.logo[0])),
      ),
    );
  }
}
