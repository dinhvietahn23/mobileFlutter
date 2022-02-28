import 'package:flutter/material.dart';

void main() => runApp(ProductApp());

class ProductApp extends StatelessWidget {
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

class MyHomePage extends StatelessWidget{
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("abcxyz")),
      body: ListView(
        shrinkWrap: true,
        padding: const EdgeInsets.fromLTRB(2.0, 10.0, 2.0, 10.0),
        children: <Widget>[
          ProductBox(
              name: "iPhone",
              description: "iphone is the best",
              price: 1000,
              image: "iphone.jpg"
          ),
          ProductBox(
              name: "Pixel",
              description: "Product of google",
              price: 800,
              image: "pixel.jpg"
          ),
          ProductBox(
              name: "iPhone",
              description: "iphone is the best",
              price: 1000,
              image: "iphone.jpg"
          ),
          ProductBox(
              name: "Pixel",
              description: "Product of google",
              price: 800,
              image: "pixel.jpg"
          ),
          ProductBox(
              name: "iPhone",
              description: "iphone is the best",
              price: 1000,
              image: "iphone.jpg"
          ),
          ProductBox(
              name: "Pixel",
              description: "Product of google",
              price: 800,
              image: "pixel.jpg"
          ),
          ProductBox(
              name: "iPhone",
              description: "iphone is the best",
              price: 1000,
              image: "iphone.jpg"
          ),
          ProductBox(
              name: "Pixel",
              description: "Product of google",
              price: 800,
              image: "pixel.jpg"
          ),
          ProductBox(
              name: "iPhone",
              description: "iphone is the best",
              price: 1000,
              image: "iphone.jpg"
          ),
          ProductBox(
              name: "Pixel",
              description: "Product of google",
              price: 800,
              image: "pixel.jpg"
          ),
        ],
      ),
    );
  }
}

class ProductBox extends StatelessWidget{

  ProductBox({ Key?key, required this.name, required this.description, required this.price, required this.image})
      : super(key: key);
  final String name;
  final String description; final int price;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(2), height: 120,
        child: Card(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Image.asset("asserts/" +image),
                Expanded(
                  child: Container(
                    padding: EdgeInsets.all(5), child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Text(this.name, style: TextStyle(fontWeight: FontWeight.bold)), Text(this.description), Text("Price: " + price.toString()),
              ], )
            ) )
      ]
      ) )
  ); }

}