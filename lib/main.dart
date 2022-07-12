import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
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
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(backgroundColor: Colors.white,
      body: Column(
        children: [
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                Icon(Icons.arrow_back_ios,
                    color: Colors.black,
                size: 18),
                Text('Now playing',
                style: TextStyle(fontFamily: 'UbuntuMono', fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.w500,
                  fontSize: 15,
                  height: 10,
                  letterSpacing: 0.04,
                  color: Colors.black),
                  textAlign: TextAlign.center,
                ),
                Icon(
                  Icons.share_sharp,
                  color: Colors.black,
                  size:18,
                ),
              ],
            ),
          ),
          Container(
            height: 200, width: 201,
            //the Rectangle 7 image was downloaded and copied into the
            // image assets folder then I added image through image asset
            child: Image.asset("assets/images/Rectangle 7.png",
            height: 10, width: 10,
            ),
          ),
          Container(
            padding: const EdgeInsets.only(top: 30, left: 40),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Column(
                  children: const [
                    Text("Rev Ryan Fray",
                    textAlign: TextAlign.left,
                    style: TextStyle(fontFamily: 'UbuntuMono',
                      fontSize: 20,
                      fontWeight: FontWeight.w400,
                      fontStyle: FontStyle.normal,
                    ),
                    ),

                  ],
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.only(top: 5, left: 40),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: const [
                Text("Misconceptions",
                  textAlign: TextAlign.right,
                  style: TextStyle(fontFamily: 'UbuntuMono',
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                      height: 1,
                      letterSpacing: 0.04,
                      color: Colors.black
                  ),
                ),
              ],
            ),
          ),

          Container(
            //padding: EdgeInsets.all(10),
            alignment: Alignment.centerLeft,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: const [
                Icon(Icons.favorite_sharp, color: Colors.red,),
              ],
            ),
          ),

          Container(
            padding: EdgeInsets.only(left:30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Column(
                  children: const [
                    Text('1hr 39min',
                      style: TextStyle(fontSize: 12,
                        fontFamily: 'Avenir',
                        fontWeight: FontWeight.w500,
                        fontStyle: FontStyle.normal,
                        color: Colors.redAccent,
                        letterSpacing: 0.04,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
    ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
