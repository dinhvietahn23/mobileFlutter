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
                        Text(this.name, style: TextStyle(fontWeight: FontWeight.bold)),
                        Text(this.description),
                        Text("Price: " + price.toString()),
                        RatingBox()
              ], )
            ) )
      ]
      ) )
  ); }
}

 class RatingBox extends StatefulWidget{
  @override
  State<RatingBox> createState() => _RatingBox();
 }

 class _RatingBox extends State<RatingBox> {
  int rating = 0;

  void setRatingAsOne() {
    setState(() {
      rating = 1;
    });
  }

  void setRatingAsTwo() {
    setState(() {
      rating = 2;
    });
  }

  void setRatingAsThree() {
    setState(() {
      rating = 3;
    });
  }

  @override
  Widget build(BuildContext context) {
    double sizeStar = 20;
    print(rating);
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.end,
      mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(0),
            child: IconButton(
              icon: (rating >= 1 ? Icon(Icons.star, size: sizeStar,) :Icon(Icons.star_border, size: sizeStar,)),
              color: Colors.red[500],
              onPressed: setRatingAsOne,
              iconSize: sizeStar,
            ),
          ),

          Container(
            padding: EdgeInsets.all(0),
            child: IconButton(
              icon: (rating >= 2 ? Icon(Icons.star, size: sizeStar,) :Icon(Icons.star_border, size: sizeStar,)),
              color: Colors.red[500],
              onPressed: setRatingAsTwo,
              iconSize: sizeStar,
            ),
          ),

          Container(
            padding: EdgeInsets.all(0),
            child: IconButton(
              icon: (rating >= 3 ? Icon(Icons.star, size: sizeStar,) :Icon(Icons.star_border, size: sizeStar,)),
              color: Colors.red[500],
              onPressed: setRatingAsThree,
              iconSize: sizeStar,
            ),
          ),
        ]
    );
  }

 }