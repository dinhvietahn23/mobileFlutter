import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  //const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hello World demo',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: const MyHomePage(title: 'Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState()  => MyHomePageState_();
}

class MyHomePageState_ extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(color: Colors.orange,),
        padding: EdgeInsets.all(25),
        child: Center(
          child:Text(
            'Hello World',
            style: TextStyle(
              color: Colors.white, letterSpacing: 0.5, fontSize: 30,
            ),
            textDirection: TextDirection.ltr
          ),
        )
    );
  }
}
