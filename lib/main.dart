import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';


void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
//      home: Demo(),
        initialRoute: '/',
        routes: {
          '/': (context) => Demo(),
          '/first': (context) => FirstScreen(),
          '/second': (context) => SecondScreen(),
          '/third': (context) => ThirdScreen(),
        });
  }
}


class Demo extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<Demo> {



  @override


  Widget build(BuildContext context) {
    Widget image_carousel = new Container(
        height: 345.0,
        child: CarouselSlider(
          options: CarouselOptions(
            height: 240,
            autoPlay: true,
            autoPlayInterval: Duration(seconds: 2),
          ),

          items: [
            {
              "url": 'https://kdukim0125.cafe24.com/event/001.png',
              "routeName": "/first"
            },
            {
              "url": 'https://kdukim0125.cafe24.com/event/002.png',
              "routeName": "/second"
            },
            {
              "url": 'https://kdukim0125.cafe24.com/event/006.png',
              "routeName": "/third"
            },

          ].map((i) {
            return Builder(
              builder: (BuildContext context) {
                return Container(
                    width: MediaQuery.of(context).size.width,
                    margin: EdgeInsets.symmetric(horizontal: 5.0),
                    decoration: BoxDecoration(color: Colors.amber),
                    child: GestureDetector(
                        child: Image.network(i["url"]!, fit: BoxFit.fill),
                        onTap: () {
                          Navigator.pushNamed(
                            context,
                            i["routeName"]!,
                            arguments: 1,
                          );
                        }));
              },
            );
          }).toList(),
        ),
    );

    return Scaffold(
      body: new Column(
        children: <Widget>[
          image_carousel,
        ],
      ),
    );

  }
}

class SecondScreen extends StatefulWidget {
  @override
  _SecondScreenState createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  @override
  Widget build(BuildContext context) {
//    final Map args = ModalRoute.of(context).settings.arguments;
    return Scaffold(
      appBar: AppBar(
        title: Text('Second Screen'),
      ),
//        body: Image.network(args["url"], width: double.infinity)
    );
  }
}

class FirstScreen extends StatefulWidget {
  @override
  _FirstScreenState createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  @override
  Widget build(BuildContext context) {
//    final Map args = ModalRoute.of(context).settings.arguments;
    return Scaffold(
      appBar: AppBar(
        title: Text('First Screen'),
      ),
//        body: Image.network(args["url"], width: double.infinity)
    );
  }
}

class ThirdScreen extends StatefulWidget {
  @override
  _ThirdScreenState createState() => _ThirdScreenState();
}

class _ThirdScreenState extends State<ThirdScreen> {
  @override
  Widget build(BuildContext context) {
//    final Map args = ModalRoute.of(context).settings.arguments;
    return Scaffold(
      appBar: AppBar(
        title: Text('Third Screen'),
      ),
//        body: Image.network(args["url"], width: double.infinity)
    );
  }
}




//          'https://kdukim0125.cafe24.com/event/001.png',
//          'https://kdukim0125.cafe24.com/event/002.png',
//          'https://kdukim0125.cafe24.com/event/003.png',
//          'https://kdukim0125.cafe24.com/event/004.png',
//          'https://kdukim0125.cafe24.com/event/005.png',
//          'https://kdukim0125.cafe24.com/event/006.png',
//          'https://kdukim0125.cafe24.com/event/007.png',