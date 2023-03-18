import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
import 'package:google_fonts/google_fonts.dart';

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: AppBar(
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(colors: [
              Color.fromARGB(255, 4, 1, 13),
              Color.fromARGB(255, 1, 23, 42)
            ]),
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
            icon: const Icon(Icons.search),
            color: Colors.white,
            onPressed: () {
              // handle search button press
            },
          ),
          IconButton(
            iconSize: 16,
            icon: const Icon(Icons.menu),
            color: Colors.white,
            onPressed: () {
              // handle menu button press
            },
          ),
          IconButton(
            iconSize: 16,
            icon: const Icon(Icons.menu),
            color: Colors.white,
            onPressed: () {
              // handle menu button press
            },
          ),
          SizedBox(width: _marginLeftRight)
        ],
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
          gradient: LinearGradient(colors: [
            Color.fromARGB(255, 4, 1, 13),
            Color.fromARGB(255, 1, 23, 42)
          ]),
        ),
        child: Padding(
          padding: EdgeInsets.only(left: _marginLeftRight),
          child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
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
                      width: MediaQuery.of(context).size.width * 0.35,
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
                                MaterialStateProperty.all<Color>(Colors.white),
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
                              Icon(Icons.keyboard_arrow_down_rounded,
                                  color: Colors.white),
                            ],
                          ),
                          onPressed: () {},
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
                    height: MediaQuery.of(context).size.height * 0.7,
                    width: MediaQuery.of(context).size.width * 0.3,
                    child: Stack(
                      children: [
                        BigBox(
                          posTop: 20,
                        ),
                        BigBox(
                          posTop: 170,
                          posLeft: 300,
                        ),
                        BigBox(
                          posTop: 330,
                          posLeft: 50,
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
    );
  }
}

class BigBox extends StatefulWidget {
  double? posTop;
  double? posLeft;
  double? posRight;

  BigBox({
    super.key,
    this.posTop,
    this.posLeft,
    this.posRight,
  });

  @override
  State<BigBox> createState() => _BigBoxState();
}

class _BigBoxState extends State<BigBox> {
  Color color = Colors.white;
  Color hoverColor = Colors.transparent;
  bool _isHovering = false;
  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: widget.posTop,
      left: widget.posLeft,
      right: widget.posRight,
      child: MouseRegion(
        onEnter: (event) => setState(() => _isHovering = true),
        onExit: (event) => setState(() => _isHovering = false),
        child: AnimatedContainer(
          curve: Curves.easeInOut,
          duration: const Duration(milliseconds: 300),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(
              width: 1,
              color: Colors.white,
            ),
            color: _isHovering ? hoverColor : color,
          ),
          height: _isHovering ? 135 : 125,
          width: _isHovering ? 135 : 125,
        ),
      ),
    );
  }
}
